/**
 * @file 应用启动器
 * @author wukaifang
 */
'use strict';
var path = require('path');
var koa = require('koa');
var serve = require('koa-static');
var execSync = require('child_process').execSync;

const app = koa();
var pack = require('../package.json');
const port = pack._serverPort || 8050;

// 提供静态文件服务
app.use(serve(path.resolve(__dirname, '../_book')));

app.use(function *(next){
     yield next;
     this.body = ' \nupdate server fail\nthe server return the following information: \n';
     if (this.request.path === '/update') {
         var shellPath = path.resolve(__dirname, 'update.sh');
         var command = 'sh ' + shellPath;
         var result = execSync(command, {
             cwd: path.resolve(__dirname)
         });
         if (result.indexOf('gitbooksuccess') > -1) {
             this.body = ' \nupdate server success';
         }
         else {
             this.body += result;
         }
     }
     console.log('result', result, this.body, this.method, this.url);
});


// 启动后端, 不指定hostname，则通过localhost ,127.0.0.1 机器地址都可以访问
app.listen(port, function (error) {
    if (error) {
        console.error(error);
    }
    else {
        console.info('==> 🌎  Listening on port %s. Open up http://%s:%s/ in your browser.', port, 'localhost', port);
    }
});

app.on('error', function (err, ctx) {
    console.log('server error', err, ctx);
});

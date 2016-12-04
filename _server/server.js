/**
 * @file 应用启动器
 * @author wukaifang
 */
'use strict';
var path = require('path');
var koa = require('koa');
var serve = require('koa-static');

const app = koa();
const port = 8050;

// 提供静态文件服务
app.use(serve(path.resolve(__dirname, '../_book')));

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

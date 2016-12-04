## Gitbook scafflod
Based on Gitbook

Learn [Gitbook](http://toolchain.gitbook.com/pages.html)

Add new features:
* show Demo: front-end projects usually show some demos, Learn [showdemo](https://www.npmjs.com/package/gitbook-plugin-demoshow)
* navigator: page navigator, quickly go to titles
* toobar: customlize some link on the right corner
* qrcode: automatically create qrcode on the left corner
* server update: when push .md to the remote master, the server build and update gitbook automatically

## Let's start

### Install gitbook

    npm install gitbook-cli -g

### Clone

    git clone https://github.com/kaivean/gitbook-scafflod.git

### Init

    gitbook init

### Install plugins

    gitbook install

### Start debug server
After saving a .md file, gitbook can automatically compile .md to a html file and you can preview

    gitbook serve

Open up http://localhost:4000/ in your browser

### Add a .md file
Learn [gitbook markdown](http://toolchain.gitbook.com/syntax/markdown.html)

### Add link to the SUMMARY.md
Please refer to existed content in the SUMMARY.md

### Modify
* modify title filed in book.json
* modify name filed in package.json

## Release
Finally, when finish all documents, release the book to show other guys

### Server
1. First modify `_serverHost`(your server host) and `_serverPort` (specify a server port),  then push this new configure

2. Log in your server, then git clone the git project, then run the following command:


```
sh _server/start-online-server.sh
```

3. Open up http://<_serverHost>:<_serverPort>/ in your browser

### Update
After you add or udpate .md files, just push to the remote master and will trigger server update automatically.
**Attention** Updating other types of files, not .md files, may not trigger server update automatically

[Lean More](./myproject/basic.md)

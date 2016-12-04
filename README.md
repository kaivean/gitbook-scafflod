## Gitbook scafflod
Based on Gitbook test test2 tst3 test4

Learn [Gitbook](http://toolchain.gitbook.com/pages.html)

Add new features:
* show Demo: front-end projects usually show some demos, Learn [showdemo](https://www.npmjs.com/package/gitbook-plugin-demoshow)
* navigator: page navigator, quickly go to titles
* toobar: customlize some link on the right corner
* qrcode: automatically create qrcode on the left corner


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

### Attention
modify title filed in book.json
modify name filed in package.json

### Release
Finally, when finish all documents, release the book to show other guys
**Attention: ** this is different from the debug mode

    sh start-online-server.sh

Open up http://localhost:8050/ in your browser


[Lean More](./myproject/basic.md)

# SMGPhoto

采用 PicGo客户端 + Github + Cloudflare Pages+ thumbsup 的方案实现完全脱离自托管服务器的自建静态渲染图床网站.

<!-- more -->

效果好像还行, 就是Cloudflare编译网站的时间比较长, PicGo每上传一个图片都要重新编译一遍, 每次都得等个一分多钟才能加载好. ~~一时半会不知道要传什么图片, 就随便截图群里的几张扔上去了, 23333)

使用项目概览: 
- PicGo: [Molunerfinn/PicGo: A simple & beautiful tool for pictures uploading built by vue-cli-electron-builder (github.com)](https://github.com/Molunerfinn/PicGo/)
- Cloudflare Pages
- Github
- Thumbsup: [thumbsup/thumbsup: Generate static HTML photo / video galleries (github.com)](https://github.com/thumbsup/thumbsup)

```
npm install -g thumbsup && thumbsup --config config.json
```
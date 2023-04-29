# SMGPhoto

采用 PicGo客户端 + Github + Cloudflare Pages+ thumbsup 的方案实现完全脱离自托管服务器的自建静态渲染图床网站.

<!-- more -->

效果好像还行, 就是Cloudflare编译网站的时间比较长, PicGo每上传一个图片都要重新编译一遍, 每次都得等个一分多钟才能加载好. ~~一时半会不知道要传什么图片, 就随便截图群里的几张扔上去了, 23333)

使用项目概览: 
- [PicGo](https://github.com/Molunerfinn/PicGo/)： 客户端上传程序
- [Github](https://github.com/)：图片仓库存储
- [Thumbsup](https://github.com/thumbsup/thumbsup)：静态相册网站程序
- [Cloudflare Pages](https://pages.cloudflare.com/)：网站托管编译+CDN镜像
- [Jsdelivr](https://www.jsdelivr.com/)：额外CDN镜像提供

```
npm install -g thumbsup && thumbsup --config config.json
```

# 图床地址

## GithubRaw（国内速度慢，刷新速度快，不推荐使用）

```
https://raw.githubusercontent.com/smgcdn/photos/master/
```

example:

![GithubRaw](https://raw.githubusercontent.com/smgcdn/photos/master/uploads/20230428180548.png)

## Cloudflare（速度一般，刷新速度慢）

```
# Pages
https://smgimg.pages.dev/
# IMC.RE
https://img.imc.re/
```

example:

![CF_Pages](https://smgimg.pages.dev/uploads/20230428180548.png)

![CF_IMC](https://img.imc.re/uploads/20230428180548.png)

## jsdelivr（速度海星，缓存刷新慢）

```
# 刷新链接
https://purge.jsdelivr.net/gh/SMGCDN/photos/
# 请求链接
https://cdn.jsdelivr.net/gh/SMGCDN/photos/
```

example:

![jsdelivr](https://cdn.jsdelivr.net/gh/SMGCDN/photos/uploads/20230428180548.png)
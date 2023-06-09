# SMGPhoto

采用 PicGo客户端 + Github + Cloudflare Pages+ thumbsup 的方案实现完全脱离自托管服务器的自建静态渲染图床网站.

<!-- more -->

效果好像还行, 就是Cloudflare编译网站的时间比较长, PicGo每上传一个图片都要重新编译一遍, 每次都得等个一分多钟才能加载好. ~~一时半会不知道要传什么图片, 就随便截图群里的几张扔上去了, 23333)

使用项目概览: 
- [PicGo](https://github.com/Molunerfinn/PicGo/)： 客户端上传程序
- [flutter-picgo](https://github.com/PicGo/flutter-picgo)：手机客户端上传程序
- [Github](https://github.com/)：图片仓库存储
- [Gitee](https://gitee.com)：国内仓库镜像存储
- [Thumbsup](https://github.com/thumbsup/thumbsup)：静态相册网站程序
- [Cloudflare Pages](https://pages.cloudflare.com/)：网站托管编译+CDN镜像
- [Jsdelivr](https://www.jsdelivr.com/)：额外CDN镜像提供
- [hub-mirror-action](https://github.com/Yikun/hub-mirror-action)：Github Action同步至Gitee

```
npm install -g thumbsup && thumbsup --config config.json
```

# 图床地址

## Cloudflare（速度一般，比较稳）

托管在Cloudflare Pages上的图片有经过Thumbsup相册的处理，可以实现略缩图，原图，水印图的处理，总的来说，十分牛逼，就是每次都要从头构建导致刷新速度有点慢x

```
# Pages
https://smgimg.pages.dev/
# IMC.RE
https://img.imc.re/
# 略缩图
https://img.imc.re/media/small/
# 处理图
https://img.imc.re/media/large/

example:
![CF_IMC](https://img.imc.re/logo/imc.re.png)
![CF_small](https://img.imc.re/media/small/wallpaper/bg.jpg)
![CF_large](https://img.imc.re/media/large/wallpaper/bg.jpg)
```

example:

![CF_IMC](https://img.imc.re/logo/imc.re.png)
![CF_small](https://img.imc.re/media/small/wallpaper/bg.jpg)
![CF_large](https://img.imc.re/media/large/wallpaper/bg.jpg)

-------

## Vercel（速度海星，可能不稳）

```
https://imcphotos.vercel.app/

# example:
![GithubRaw](https://imcphotos.vercel.app/master/logo/imc.re.png)
```

example:

![vercel](https://imcphotos.vercel.app/master/logo/imc.re.png)

## Gitee（国内速度快，Action同步）
```
https://gitee.com/smgoro_0/photos/raw/master/

# example:
![Gitee](https://gitee.com/smgoro_0/photos/raw/master/logo/imc.re.png)
```
example:

![Gitee](https://gitee.com/smgoro_0/photos/raw/master/logo/imc.re.png)

-------

## jsdelivr（速度海星，缓存刷新慢）

```
# 刷新链接
https://purge.jsdelivr.net/gh/SMGCDN/photos/
# 请求链接
https://cdn.jsdelivr.net/gh/SMGCDN/photos/
https://gcore.jsdelivr.net/gh/SMGCDN/photos/

# example:
![jsdelivr](https://cdn.jsdelivr.net/gh/SMGCDN/photos/logo/imc.re.png)
```

example:

![jsdelivr](https://cdn.jsdelivr.net/gh/SMGCDN/photos/logo/imc.re.png)

-------

## GithubRaw（国内速度慢，刷新速度快）

```
https://raw.githubusercontent.com/smgcdn/photos/master/

# example:
![GithubRaw](https://raw.githubusercontent.com/smgcdn/photos/master/logo/imc.re.png)
```

example:

![GithubRaw](https://raw.githubusercontent.com/smgcdn/photos/master/logo/imc.re.png)
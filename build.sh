# 构建脚本，如果觉得构建慢可以直接注释掉）

# 安装前置环境
apt-get update
apt-get install -y zip ffmpeg gifsicle dcraw exiftool graphicsmagick-imagemagick-compat --fix-missing

# 部署thumbsup环境 && 按照设置文件构建网站
npm install -g thumbsup && thumbsup --config config.json

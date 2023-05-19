# Cloudflare Pages 构建脚本，如果觉得构建慢可以直接注释掉）

# 安装前置环境
sudo apt-get update
sudo apt-get install -y ffmpeg gifsicle dcraw exiftool graphicsmagick-imagemagick-compat --fix-missing

# 部署thumbsup环境 && 按照设置文件构建网站
npm install -g thumbsup && thumbsup --config config.json

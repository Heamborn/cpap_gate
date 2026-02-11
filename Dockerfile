FROM nginx:alpine

# 用 nginx 官方镜像的 templates 机制：启动时会 envsubst 把 ${PORT} 替换成真实端口
COPY default.conf.template /etc/nginx/templates/default.conf.template

FROM nginx:alpine

# Nginx 官方镜像支持 templates + envsubst：启动时会替换 ${PORT} / ${DNS_RESOLVER}
COPY default.conf.template /etc/nginx/templates/default.conf.template

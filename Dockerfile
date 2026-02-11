FROM nginx:alpine

# Nginx 官方镜像支持 templates + envsubst：启动时会替换 ${PORT} / ${DNS_RESOLVER}
COPY default.conf.template /etc/nginx/templates/default.conf.template

# 我们加一个启动脚本：打印 /etc/resolv.conf 到日志，便于拿到 nameserver
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]

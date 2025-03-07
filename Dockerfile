# 使用 Nginx 作为生产服务器
FROM nginx:alpine


COPY index.html /usr/share/nginx/html

# 复制自定义 nginx 配置
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 暴露 80 和 443 端口
EXPOSE 80

# 启动 nginx
CMD ["nginx", "-g", "daemon off;"]

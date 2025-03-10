# 使用 Nginx 作为生产服务器
FROM public.ecr.aws/nginx/nginx:stable-alpine


COPY index.html /usr/share/nginx/html

# 复制自定义 nginx 配置
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 暴露 80
EXPOSE 80

# 启动 nginx
CMD ["nginx", "-g", "daemon off;"]
# docker build -t test .
# docker run -d -p 80:80 --name test-container test
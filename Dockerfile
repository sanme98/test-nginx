FROM nginx:stable-alpine

# Adjust nginx config to make it stay in foreground
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

CMD ["/usr/sbin/nginx"]

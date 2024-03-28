FROM nginxinc/nginx-unprivileged:alpine3.18-perl

COPY ./default.conf.tpl /etc/nginx/default.conf.tpl
COPY ./headers.conf /etc/nginx/headers.conf
COPY ./run_nginx.sh /run_nginx.sh

USER root

# RUN mkdir -p /static && \
#     chmod 755 /static && \
#     touch /etc/nginx/conf.d/default.conf && \
#     chown nginx:nginx /etc/nginx/conf.d/default.conf && \
#     chmod +x /run_nginx.sh
RUN touch /etc/nginx/conf.d/default.conf && \
    chown nginx:nginx /etc/nginx/conf.d/default.conf && \
    chmod +x /run_nginx.sh

# VOLUME /static
USER nginx

EXPOSE 8000
CMD ["/run_nginx.sh"]

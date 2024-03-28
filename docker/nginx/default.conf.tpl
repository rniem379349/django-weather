server {
    listen 8000;

    location / {
        include /etc/nginx/headers.conf;

        proxy_redirect          off;
        proxy_pass              http://web:8080;
        client_max_body_size    10M;
    }

    location /static/ {
        autoindex on;
        alias /static/;
    }
}

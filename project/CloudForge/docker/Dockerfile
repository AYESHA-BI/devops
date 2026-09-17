FROM nginx:alpine

COPY app/index.html /usr/share/nginx/html/index.html
COPY app/backend.html /usr/share/nginx/html/backend.html

RUN echo "CloudForge Docker image created"

EXPOSE 80

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]

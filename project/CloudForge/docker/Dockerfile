FROM nginx:alpine
COPY app/index.html /usr/share/nginx/html/index.html
COPY app/backend.html /usr/share/nginx/html/backend.html
COPY app/backendcloudforge.png /usr/share/nginx/html/backendcloudforge.png
RUN echo "CloudForge Docker image created"
EXPOSE 80
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]

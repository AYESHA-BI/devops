FROM nginx:alpine
COPY app/index.html /usr/share/nginx/html/index.html
RUN echo "CloudForge Docker image created"
EXPOSE 80
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]

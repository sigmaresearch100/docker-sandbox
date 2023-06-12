FROM alpine    
RUN cat > /etc/apk/repositories << EOF; $(echo) \
\
https://dl-cdn.alpinelinux.org/alpine/v$(cut -d'.' -f1,2 /etc/alpine-release)/main/ \
https://dl-cdn.alpinelinux.org/alpine/v$(cut -d'.' -f1,2 /etc/alpine-release)/community/ \
https://dl-cdn.alpinelinux.org/alpine/edge/testing/ \
\
EOF && \
apk update
ENTRYPOINT ["R"]

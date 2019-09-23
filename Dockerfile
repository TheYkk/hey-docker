FROM alpine:3.9
RUN wget https://storage.googleapis.com/hey-release/hey_linux_amd64
RUN chmod +x hey_linux_amd64
RUN mv hey_linux_amd64 /usr/local/bin/hey
CMD hey -c 500 -z 3m  -t 2 $url
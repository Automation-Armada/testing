FROM alpine:latest

RUN apk update && \
    apk add clamav clamav-libunrar bash && \
    freshclam

COPY scan.sh /scan.sh
COPY sample_file.txt /sample_file.txt
COPY virus.txt /virus.txt

RUN chmod +x /scan.sh

CMD ["sh", "/scan.sh"]

FROM alpine:latest

RUN apk update && \
    apk add clamav clamav-libunrar bash && \
    freshclam

RUN echo "Este es un archivo limpio para testear ClamAV." > /sample_file.txt && \
    echo "X5O!P%@AP[4\\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*" > /virus.txt
    
COPY scan.sh /scan.sh
RUN chmod +x /scan.sh

CMD ["sh", "/scan.sh"]

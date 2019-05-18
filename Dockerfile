FROM tico/composer AS builder
RUN composer global require robmorgan/phinx --ignore-platform-reqs

FROM alpine:latest
ENV PHINX_CONFIG /app/phinx.php
WORKDIR /app
RUN apk --no-cache add php7 php7-pdo_mysql php7-json php7-iconv php7-mbstring
COPY --from=builder /tmp /app
COPY entrypoint.sh /bin/entrypoint
RUN chmod +x /bin/entrypoint
ENTRYPOINT ["/bin/entrypoint"]

FROM alpine:latest
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python && addgroup -S appgroup && adduser -S appuser -G appgroup
WORKDIR /app
USER appuser
COPY app.py .
ENTRYPOINT ["python", "app.py"]

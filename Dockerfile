FROM gcr.io/airplane-public/airplane-cli:latest
COPY . .
ENTRYPOINT ["/entrypoint.sh"]

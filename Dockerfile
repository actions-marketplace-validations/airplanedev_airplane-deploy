FROM us-docker.pkg.dev/airplane-prod/public/cli:latest
COPY . .
ENTRYPOINT ["/entrypoint.sh"]

FROM us-docker.pkg.dev/airplane-prod/public/cli:0.1
COPY . .
ENTRYPOINT ["/entrypoint.sh"]

FROM us-docker.pkg.dev/airplane-prod/public/cli:0.2
COPY . .
ENTRYPOINT ["/entrypoint.sh"]

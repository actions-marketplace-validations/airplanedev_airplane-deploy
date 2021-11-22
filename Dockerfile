FROM gcr.io/airplane-public/airplane-cli:latest

COPY . .
RUN echo $PATH

ENTRYPOINT ./entrypoint.sh

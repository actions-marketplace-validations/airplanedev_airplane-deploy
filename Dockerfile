FROM gcr.io/airplane-public/airplane-cli:latest

COPY . .
RUN echo $PATH

ENTRYPOINT ["sh", "-c", "/airplane/bin/airplane --host=$1 deploy ./"]

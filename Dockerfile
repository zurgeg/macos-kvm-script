FROM ubuntu:latest

COPY . .

ENTRYPOINT ['./run.sh','10']

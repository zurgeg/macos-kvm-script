FROM gitpod/workspace-full-vnc

COPY . .

ENTRYPOINT ["./run.sh","10"]

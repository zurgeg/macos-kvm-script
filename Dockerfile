FROM gitpod/workspace-full-vnc

RUN echo Loading...

COPY . .

ENTRYPOINT ["./run.sh","10"]

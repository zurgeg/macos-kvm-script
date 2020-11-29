FROM gitpod/workspace-full-vnc

RUN echo Loading...

COPY . .

RUN chmod +x run.sh

RUN chmod +x setup.sh

ENTRYPOINT ["./run.sh","10"]

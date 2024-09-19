FROM ubuntu:latest AS builder
RUN apt-get update && apt-get install -y libc6 libstdc++6

WORKDIR /app
COPY bin/main main

FROM ubuntu:latest AS final
COPY --from=builder app/main app/main



# syntax=docker/dockerfile:1
#junk



FROM continuumio/miniconda3

ARG TARGETOS
ARG TARGETARCH

RUN echo "its right here ${TARGETOS}"
RUN echo "its right here ${TARGETARCH}"


COPY --chmod=755 <<EOF /app/run.sh
#!/bin/sh
while true; do
  echo -ne "The time is now $(date +%T)\\r"
  sleep 1
done
EOF
RUN wget https://go.dev/dl/go1.20.3.${TARGETOS}-${TARGETARCH}.tar.gz
ENTRYPOINT /app/run.sh

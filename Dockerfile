# syntax=docker/dockerfile:1
#junk



FROM continuumio/miniconda3

ARG TARGETOS
ARG TARGETARCH


RUN wget https://go.dev/dl/go1.20.3.${TARGETOS}-${TARGETARCH}.tar.gz
ENTRYPOINT /app/run.sh

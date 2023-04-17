# syntax=docker/dockerfile:1
#junk



FROM busybox:latest
ARG TARGETOS

RUN echo "its right here ${TARGETOS}"
COPY --chmod=755 <<EOF /app/run.sh
#!/bin/sh
while true; do
  echo -ne "The time is now $(date +%T)\\r"
  sleep 1
done
EOF

ENTRYPOINT /app/run.sh

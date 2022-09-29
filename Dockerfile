# syntax=docker/dockerfile:1
FROM ubuntu:latest

RUN apt-get update && apt-get install -y iperf3 && apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["iperf3", "-s"]

EXPOSE 5201/tcp 5201/udp
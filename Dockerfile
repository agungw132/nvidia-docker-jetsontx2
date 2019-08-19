FROM nvcr.io/nvidia/l4t-base:r32.2

RUN apt-get update && apt-get install -y --no-install-recommends make g++
COPY ./samples /tmp/samples

WORKDIR /tmp/samples/5_Simulations/nbody
RUN make clean && make

CMD ["./nbody"]

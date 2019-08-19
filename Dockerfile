FROM alpine:latest

RUN apk upgrade && \
    apk add alpine-sdk clang cmake lld llvm

RUN rm /usr/bin/ld && ln -svf /usr/bin/ld.lld /usr/bin/ld

ENV CC=clang CXX=clang++

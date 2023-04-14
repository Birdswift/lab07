FROM gcc:latest
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN g++ -o hello hello_world.cpp
CMD ["./hello"]

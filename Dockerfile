FROM python:3
LABEL mainteiner = Birdswift
WORKDIR /app
COPY . . 
RUN apt-get update 
CMD ["hello_world", "hello_world.cpp"]

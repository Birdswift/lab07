# lab07

Лабораторная работа №7

1)Пишу код на си++, пусть будет стандартный hello_world.cpp

2)Для удобства кладу его в одноименную папку, туда же пишу Dockerfile

FROM ubuntu:latest - создал версию образа

WORKDIR /usr/src/app - выбрал рабочую директорию

COPY . . скопировал все файлы из текущей директории в директорию контейнера

RUN apt-get update && \ - обновил \ загрузил компилятор g++

    apt-get install  -y g++ && \
    
    g++ -o hello hello_world.cpp - записал исполняемый файл в hello
    
CMD ["./hello"] - запустил hello

3)В .github/workflows создал CI.yml, чтобы самому каждый раз ничего не писать =)


name: Docker

on:

  push:

branches: 

main 

jobs:

docker:

runs-on: ubuntu-latest

    steps:

- uses: actions/checkout@v3

      - name: Build

run: |

sudo docker build -t myapp ./hello_world - создаю билд докера в папке 
          
          sudo docker run myapp - запускаю созданный докер

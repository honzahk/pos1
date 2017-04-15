CC=gcc
SOURCE=p1.c
EXECUTABLE=p1
CFLAGS=-std=c11 -Wall -Wextra -pedantic -pthread

all: clean
	${CC} ${CFLAGS} ${SOURCE} -o ${EXECUTABLE}

run: all
	./${EXECUTABLE} ${args}

clean:
	rm -rf ${EXECUTABLE}
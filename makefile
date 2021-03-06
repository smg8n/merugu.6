CC = gcc
CFLAGS = -ggdb
BIN_NATIVE = oss
BIN_TARGET = usr
OBJ_NATIVE = oss.o
OBJ_TARGET = usr.o

.SUFFIXES:
.SUFFIXES: .c .o .h

all: oss usr
$(BIN_NATIVE): $(OBJ_NATIVE)
	$(CC) -ggdb -o $(BIN_NATIVE) $(OBJ_NATIVE) -lpthread
$(BIN_TARGET): $(OBJ_TARGET)
	$(CC) -ggdb -o $(BIN_TARGET) $(OBJ_TARGET) -lpthread
$(OBJ_NATIVE): oss.c
	$(CC) $(CFLAGS) -c oss.c
$(OBJ_TARGET): usr.c
	$(CC) $(CFLAGS) -c usr.c 
clean:
	/bin/rm -f *.o *.txt $(BIN_NATIVE) $(BIN_TARGET)

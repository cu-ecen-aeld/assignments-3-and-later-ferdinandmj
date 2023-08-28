export PATH := /home/sahar/arm-cross-compiler/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin:$(PATH)
TARGET=writer
CC=$(CROSS_COMPILE)gcc

SOURCES=writer.c

.PHONY:	default clean

default: $(SOURCES)
		$(CC) -o $(TARGET) $(SOURCES)

clean:
	rm -rf *.o
	rm -rf writer

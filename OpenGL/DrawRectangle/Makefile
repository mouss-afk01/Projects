CC = gcc
CXX = g++

CFLAGS = -Iinclude $(shell pkg-config --cflags glfw3)
CXXFLAGS = -Iinclude $(shell pkg-config --cflags glfw3)
LDFLAGS = $(shell pkg-config --libs glfw3)

ifeq ($(OS),Windows_NT)
    LDFLAGS += -lopengl32
    TARGET = build/main.exe
else
    UNAME_S := $(shell uname -s)

    ifeq ($(UNAME_S),Darwin)
        LDFLAGS += -framework OpenGL
    else
        LDFLAGS += -lGL
    endif

    TARGET = build/main
endif

OBJS = build/main.o build/glad.o

$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $(TARGET) $(LDFLAGS)

build/main.o: src/main.cpp
	$(CXX) $(CXXFLAGS) -MMD -MP -c $< -o $@

build/glad.o: src/glad.c
	$(CC) $(CFLAGS) -MMD -MP -c $< -o $@

-include $(OBJS:.o=.d)

clean:
	rm -f build/*.o build/*.d $(TARGET)

.PHONY: clean

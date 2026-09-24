CXX = c++

CXXFLAGS = -Iinclude $(shell pkg-config --cflags glfw3)
LDFLAGS = $(shell pkg-config --libs glfw3)

UNAME_S := $(shell uname -s)

ifeq ($(UNAME_S),Darwin)
	LDFLAGS += -framework OpenGL
else
	LDFLAGS += -lGL
endif

TARGET = build/main
OBJS = build/main.o build/glad.o

$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $(TARGET) $(LDFLAGS)

build/main.o: src/main.cpp
	$(CXX) $(CXXFLAGS) -MMD -MP -c src/main.cpp -o build/main.o

build/glad.o: src/glad.c
	$(CXX) $(CXXFLAGS) -c src/glad.c -o build/glad.o

clean:
	rm -f build/*.o $(TARGET)

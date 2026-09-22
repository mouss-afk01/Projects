CXX = c++
CFLAGS = -Iinclude
LDFLAGS = $(shell pkg-config --cflags --libs glfw3) -lGL

TARGET = build/main
OBJS = build/main.o build/glad.o

$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $(TARGET) $(LDFLAGS)

build/main.o: src/main.cpp
	$(CXX) $(CFLAGS) -MMD -MP -c src/main.cpp -o build/main.o

build/glad.o: src/glad.c
	$(CXX) $(CFLAGS) -c src/glad.c -o build/glad.o

clean:
	rm -f build/*.o $(TARGET)


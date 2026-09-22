#include <stdio.h>


int main (){
	// experiment : reduce size of vertex data needed to display a rectangle,
	// Problem: if we want to display a rectangle we need to pass 6 vertices, but two are redundat (intersection), we could only send 4 indices and give instruction to opengl to read them in a particular order.
	float vertices[] = {
		0.5f, 0.5f, 0.0f, // top right
		0.5f, -0.5f, 0.0f, // bottom right
		-0.5f, -0.5f, 0.0f, // bottom left
		-0.5f, 0.5f, 0.0f // top left
	};
	signed int indices[] = { // note that we start from 0!
	0, 1, 3, // first triangle
	1, 2 ,3	 // second triangle
	};
	// create element buffer object:
	unsigned int EBO;
	glGenBuffers(1, &EBO);
	// bind EBO and copy indices to it:
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices, indices, GL_STATIC_DRAW);

	return 0;
}

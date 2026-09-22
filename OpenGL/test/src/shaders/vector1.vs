#version 330 core
layout (location = 0) in vec3 aPos; // position has attribute position 0
layout (location = 1) in vec3 aColor; // color has attribute position 1

out vec3 ourColor; // output a color to the fragment shader
out vec3 ourPosition;
uniform int h_offset;

void main(){
	// exercise 6.8.1: turn triangles upside down
	// gl_Position = vec4(aPos.x, -aPos.y, aPos.z, 1.0);
	// exercice 6.8.2: move triangle by an offset
	gl_Position = vec4(aPos.x + h_offset, aPos.yz, 1.0);
	//gl_Position = vec4(aPos, 1.0);

	ourColor = aColor;
	ourPosition = aPos;
};

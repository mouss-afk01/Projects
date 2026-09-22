#version 330 core
layout (location = 0) in vec3 aPos; // position has attribute position 0
layout (location = 1) in vec3 aColor; // color has attribute position 1
layout (location = 2) in vec2 aTexCoord; // Coordinates to allign with an texture.

out vec3 ourColor; // output a color to the fragment shader.
out vec2 texCoord; // outputs a coordinate for the fragment shader.

void main(){
	gl_Position = vec4(aPos, 1.0);
	ourColor = aColor;
	texCoord = aTexCoord;
};

#version 330 core
layout (location = 0) in vec3 aPos; // position has attribute position 0
layout (location = 1) in vec3 aColor; // color has attribute position 1
layout (location = 2) in vec2 aTexCoord; // color has attribute position 1

out vec3 ourColor; // output a color to the fragment shader
out vec2 ourTexCoord;

uniform mat4 transform;

void main(){
	gl_Position = transform * vec4(aPos, 1.0);
	ourColor = aColor;
	ourTexCoord = aTexCoord;
}

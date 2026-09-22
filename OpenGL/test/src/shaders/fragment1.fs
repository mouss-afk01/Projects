#version 330 core
out vec4 FragColor;
in vec3 ourColor;
in vec3 ourPosition;

void main()
{
	// exercise 6.8.3:
	// why is the buttom-left side dark : because all the values are or undefined in the colorspectrum or zero, which means they represent black.
	FragColor = vec4(ourPosition, 1.0f);
}

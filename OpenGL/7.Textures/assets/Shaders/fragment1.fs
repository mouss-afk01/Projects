#version 330 core
out vec4 FragColor;
// input:
in vec3 ourColor;
in vec2 texCoord;

uniform sampler2D texture1;
uniform sampler2D texture2;
// 7.8 add a uniform float:
uniform float ratio;

void main()
{
	// funky: texture + coloring:
	//FragColor = texture(texture1, texCoord)*vec4(ourColor, 1.0);
	// colored
	//FragColor = vec4(ourColor, 1.0);
	// texture only:
	//FragColor = texture(texture1, texCoord);
	// two textures:
	FragColor = mix(texture(texture1, texCoord),texture(texture2, texCoord), ratio);
	// 7.8 reverse happy face:
	//FragColor = mix(texture(texture1, texCoord), texture(texture2, vec2(1-texCoord.s, texCoord.t)),0.2);
	
}

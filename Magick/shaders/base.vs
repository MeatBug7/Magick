#version 330 core
layout(location = 0) in vec2 aPos;
layout(location = 1) in vec2 aTex;

out vec2 TexCoord;

uniform mat4 model;
uniform mat4 projection;

void main()
{
	TexCoord = aTex;
	gl_Position = projection * model * vec4(aPos, 0.0, 1.0);
}
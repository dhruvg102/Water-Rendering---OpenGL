#version 330 core
layout (location = 0) in vec3 aPos;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

const float A = 5;

float SumOfSines(vec3 Pos){
    
    return sin(Pos.x) * sin(Pos.z); 
}



void main()
{
    float height = SumOfSines(aPos);
    vec3 Pos = vec3(aPos.x, height, aPos.z);
    gl_Position = projection * view * model * vec4(Pos, 1.0);
}
#version 330

// Input
layout(location = 0) in vec3 v_position;
layout(location = 1) in vec3 v_normal;
layout(location = 2) in vec2 v_texture;



// Uniform properties
uniform mat4 Model;
uniform mat4 View;
uniform mat4 Projection;
uniform vec3 object_color;


// Output
out vec3 frag_position;
out vec3 frag_normal;
out vec2 frag_texture;
out vec3 frag_color;

void main()
{
    frag_position	= v_position;
    frag_normal = v_normal;
    frag_texture = v_texture;
    frag_color = object_color;

    gl_Position = Projection * View * (Model * vec4(v_position, 1.0));

}

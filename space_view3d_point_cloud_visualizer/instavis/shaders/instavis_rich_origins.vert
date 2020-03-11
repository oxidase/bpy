layout (location = 0) in vec3 position;
layout (location = 1) in vec3 color;

uniform mat4 model_matrix;

out vec3 g_position;
out vec3 g_color;

void main()
{
    gl_Position = model_matrix * vec4(position, 1.0);
    g_position = vec3(model_matrix * vec4(position, 1.0));
    g_color = color;
}
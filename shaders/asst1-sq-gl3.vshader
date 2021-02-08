// If you have shader compilation problems, try changing this to 130
#version 150

uniform float uSquareShift;
uniform float uAspectRatio;

in vec2 aPosition;
in vec2 aTexCoord;

out vec2 vTexCoord;
out vec2 vTemp;

void main() {
   gl_Position = vec4(
	   (aPosition.x + uSquareShift) * min(1/uAspectRatio, 1), 
	   aPosition.y * min(uAspectRatio, 1), 
	   0, 1);
   vTexCoord = aTexCoord;
   vTemp = vec2(1, 1);
}

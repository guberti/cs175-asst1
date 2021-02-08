#version 150

uniform float uTriXShift;
uniform float uTriYShift;
uniform float uAspectRatio;

in vec2 aPosition;
in vec2 aTexCoord;
in vec3 aColCoord;

out vec2 vTexCoord;
out vec3 vColCoord;
out vec2 vTemp;

void main() {
  gl_Position = vec4(
      (aPosition.x + uTriXShift) * min(1 / uAspectRatio, 1),
      (aPosition.y + uTriYShift) * min(uAspectRatio, 1),
      0, 1);
  vTexCoord = aTexCoord;
  vColCoord = aColCoord;
  vTemp = vec2(1, 1);
}

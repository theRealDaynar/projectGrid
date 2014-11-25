//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vXY;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
    v_vXY = gl_Position.xy;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
uniform vec2 u_vTimer;
uniform vec2 u_vXY;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vXY;

void main()
{
    float finalAlpha = v_vColour.a;
    if (  atan(u_vTimer.x/u_vTimer.y) < atan(distance(u_vXY.xy,vec2(v_vXY.x,u_vXY.y))/distance(u_vXY.xy,vec2(u_vXY.x,v_vXY.y))))
        finalAlpha = 0.0;
    gl_FragColor = vec4(v_vColour.xyz,finalAlpha) * texture2D( gm_BaseTexture, v_vTexcoord );
}


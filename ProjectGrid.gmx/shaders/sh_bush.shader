attribute vec3 in_Position;                  // (x,y,z)
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

//######################_==_YOYO_SHADER_MARKER_==_######################@~uniform vec4 u_vFogOfWar;
uniform vec2 u_vResolution;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vXY;

void main()
{
    
    float finalAlpha = v_vColour.a;
    float dist = distance(v_vXY.xy*u_vResolution,u_vFogOfWar.xy);
    if (dist < u_vFogOfWar.z + u_vFogOfWar.a)
    {
        float alpha;
        if(dist >= u_vFogOfWar.z-u_vFogOfWar.a)
        {
            alpha = (dist - (u_vFogOfWar.z-u_vFogOfWar.a))/(u_vFogOfWar.a*2.0);
        }
        if (finalAlpha > alpha)
            finalAlpha = alpha;
    }
    //finalAlpha = abs(finalAlpha -1.0);
    gl_FragColor = vec4(v_vColour.rgb,finalAlpha) * texture2D( gm_BaseTexture, v_vTexcoord );
}


shader_type canvas_item;
uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;
uniform int pixel_size = 5;

uniform vec4 color_01 = vec4(0.69,0.66,0.59,1.0);
uniform vec4 color_02 = vec4(0.84,0.8,0.7,1.0);
uniform vec4 color_03 = vec4(0.53,0.55,0.51,1.0);
uniform vec4 color_04 = vec4(0.42,0.42,0.39,1.0);
uniform vec4 color_05 = vec4(0.34,0.34,0.32,1.0);
uniform vec4 color_06 = vec4(0.26,0.26,0.25,1.0);
uniform vec4 color_07 = vec4(0.16,0.16,0.15,1.0);
uniform vec4 color_08 = vec4(0.7,0.75,0.4,1.0);
uniform vec4 color_09 = vec4(0.49,0.64,0.38,1.0);
uniform vec4 color_10 = vec4(0.39,0.49,0.27,1.0);
uniform vec4 color_11 = vec4(0.34,0.41,0.25,1.0);
uniform vec4 color_12 = vec4(0.25,0.33,0.2,1.0);
uniform vec4 color_13 = vec4(0.72,0.23,0.26,1.0);
uniform vec4 color_14 = vec4(0.62,0.13,0.2,1.0);
uniform vec4 color_15 = vec4(0.47,0.13,0.17,1.0);
uniform vec4 color_16 = vec4(0.5,0.43,0.36,1.0);
uniform vec4 color_17 = vec4(0.39,0.34,0.27,1.0);
uniform vec4 color_18 = vec4(0.3,0.26,0.22,1.0);

void fragment() {
	
	vec4 colors[18] = {color_01, color_02, color_03, color_04, color_05, color_06, color_07, color_08, color_09, color_10, color_11, color_12,
	color_13, color_14, color_15, color_16, color_17, color_18};
	float min_diff = -1.0;
	vec4 min_color = vec4(0.0,0.0,0.0,1.0);
	
	vec2 uv = SCREEN_UV;
	
	vec4 temp = textureLod(SCREEN_TEXTURE, uv, 0.0);
	
	
	min_diff = 1000.0;
	for (int i = 0; i < colors.length(); i++){
		
		float curr_dist = distance(colors[i], temp);
		if (curr_dist < min_diff){
			
			min_diff = curr_dist;
			min_color = colors[i];
			
		}
		
	}
	
	COLOR.rgb = min_color.rgb;
}

function draw_text_outlined(x, y, outline_color, string_color, string,xscale,yscale,angle){
//argumento começa por [0]
//FAZ O X E Y DO TEXTO
draw_set_font(fSilver);
var xx,yy;  
xx = argument[0];  
yy = argument[1];  

//Transformed
var xx_scale,yy_scale, _angle;  
xx_scale = argument[5];  
yy_scale = argument[6];
_angle = argument[7];

  
//Outline  
draw_set_color(argument[2]);  
draw_text_transformed(xx+1, yy+1, argument[4],argument[5],argument[6],argument[7]);  
draw_text_transformed(xx-1, yy-1, argument[4],argument[5],argument[6],argument[7]);  
draw_text_transformed(xx,   yy+1, argument[4],argument[5],argument[6],argument[7]);  
draw_text_transformed(xx+1,   yy, argument[4],argument[5],argument[6],argument[7]);  
draw_text_transformed(xx,   yy-1, argument[4],argument[5],argument[6],argument[7]);  
draw_text_transformed(xx-1,   yy, argument[4],argument[5],argument[6],argument[7]);  
draw_text_transformed(xx-1, yy+1, argument[4],argument[5],argument[6],argument[7]);  
draw_text_transformed(xx+1, yy-1, argument[4],argument[5],argument[6],argument[7]);  
  
//Text  
draw_set_color(argument[3]);
draw_text_transformed(xx, yy, argument[4],argument[5],argument[6],argument[7]);


}
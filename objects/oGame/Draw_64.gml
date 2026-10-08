var scale =1.3;

var posx = 90;
var posy = 750;

draw_text_outlined(posx+40,posy-35,c_black,c_white,string(dinheiro) + " Gonzolas",scale,scale,0);

draw_sprite_ext(SGonzola,0,posx,posy,scale,scale,0,c_white,1);

switch(global.segurando){
	case "semente1":
		draw_sprite(Sseed,0,mouse_x,mouse_y);
	break;
	case "regador":
		draw_sprite(sGota,floor(frame_anim),mouse_x,mouse_y);
    break;
	case "espantalho":
		draw_sprite(sIEspanta,0,mouse_x,mouse_y);
    break;
}




var cor = c_white

if t_min < 1
{
	 cor = c_red  
	
}

var t = ""
t += string(t_min)
t += ":"
if t_sec > 9 { t += ""+string(t_sec)}
if t_sec < 10 { t += "0"+string(t_sec)}

t +="."
t += string(t_mil)


draw_text_outlined(650,30,c_black,cor,t,scalex,scalex,0);
draw_text_outlined(600,5,c_black,cor,"Faça 1000 Gonzolas",1,1,0);


if (room == Room2){
if (dinheiro > 1000) 
{
draw_text_outlined(200,300,c_black,c_white,"VOCE EH R1c000 YEeaahh",scalex,scalex,0);
} else if (dinheiro < 1000)
{
draw_text_outlined(200,300,c_black,c_white,"voce eh o robson crusue.",scalex,scalex,0);
}
}
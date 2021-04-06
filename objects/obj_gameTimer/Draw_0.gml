/// @description Insert description here
// You can write your code in this editor

draw_self()
//mins+ seconds
//draw_text()
//draw_rectangle()
draw_text_transformed(x-30,y-15,string(floor(GameTimer/60))+": "+ extraZero +string((GameTimer mod 60)),1.5,1.5,0);
//draw_text(x,y+50,GameTimer mod 60)

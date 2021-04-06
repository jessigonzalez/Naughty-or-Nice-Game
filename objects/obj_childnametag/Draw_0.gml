/// @description Insert description here
// You can write your code in this editor

draw_self()

draw_set_color(c_black)
draw_circle(x,y,sprite_width,true)
draw_text(100,400, "assignedGiftNum: "+string(assignedGiftNum))
draw_text(100,450, "assignedGift: "+string(assignedGift))
draw_text(100,500, "assignedGiftFitsInBag: "+string(assignedGiftFitsInBag))
draw_text(100,550, "isNearGridSpace: "+string(isNearGridSpace))



draw_set_color(c_purple)
//draw_rectangle(x-60,y-60,x+60,y+60,true)
draw_circle(x,y,30,true)
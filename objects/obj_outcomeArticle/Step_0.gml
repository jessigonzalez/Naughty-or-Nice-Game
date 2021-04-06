/// @description Insert description here
// You can write your code in this editor

//if Alex gets a book(3), legos(7), coal(10), baseball+bat(9), or a switch(6)

//if everyone gets coal
if(global.GIFT_ALEX==10 && global.GIFT_CASEY==10 && global.GIFT_JORDAN==10 && global.GIFT_RILEY==10 && global.GIFT_SKYLAR==10)
{
	image_index=1
}
//if casey gets a candle 
else if(global.GIFT_CASEY==4)
{
	image_index=2
}
//riley gets a dog
else if(global.GIFT_RILEY==5){
	image_index=3
}
//jordan gets a baseball+bat (9), casey gets a dog (5)
else if(global.GIFT_JORDAN==9 && global.GIFT_CASEY==5)
{
	image_index=4
}
//alex gets a baseball+bat (9), skylar got legos (7)
else if(global.GIFT_ALEX==9 && global.GIFT_SKYLAR==7)
{
	image_index=5
}
//skylar got a bike (1), riley got a keyboard (8)
else if(global.GIFT_SKYLAR==1 && global.GIFT_RILEY==8)
{
	image_index=6
}
//alex gets a switch(6)
else if(global.GIFT_ALEX==6){
	image_index=7
}
//Casey gets a bike (1)
else if(global.GIFT_CASEY==1){
	image_index=8
}
//jordan gets an ipod (2)
else if(global.GIFT_JORDAN==2){
	image_index=9
}
//alex gets an ipod (2)
else if(global.GIFT_ALEX==2){
	image_index=10
}
//jordan gets a keyboard (8)
else if(global.GIFT_JORDAN==8){
	image_index=11
}
//Jordan gets coal and freaks out (10)
else if(global.GIFT_JORDAN==10){
	image_index=12
}
//if no one gets a present
else if(global.GIFT_ALEX==0 and global.GIFT_CASEY==0 and global.GIFT_JORDAN==0 and global.GIFT_RILEY==0 and global.GIFT_SKYLAR==0)
{
	image_index=13
}
else{
	image_index=0
}



//BEING ABLE TO MOVE AROUND THE ARTICLE IF ITS NOT SELCTING A LETTER
selectingLetter = obj_outcomeLetter_Alex.isSelected or obj_outcomeLetter_Casey.isSelected or obj_outcomeLetter_Jordan.isSelected or obj_outcomeLetter_Riley.isSelected or obj_outcomeLetter_Skylar.isSelected

//player can click and drag the letter
if(position_meeting(mouse_x,mouse_y,self) and mouse_check_button(mb_left) and !selectingLetter)
{
	x=mouse_x
	y=mouse_y
	isSelected=true
}
else
{
	isSelected=false
}

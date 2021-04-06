/// @description Insert description here
// You can write your code in this editor

//if Alex gets a book(3), legos(7), coal(10), baseball+bat(9), or a switch(6)


if(global.GIFT_ALEX==3)
{
	image_index=1
}
else if(global.GIFT_ALEX==7)
{
	image_index=2
}
else if(global.GIFT_ALEX==10)
{
	image_index=3
}
else if(global.GIFT_ALEX==9)
{
	image_index=4
}
else if(global.GIFT_ALEX==6)
{
	image_index=5
}
else
{
	image_index=0
}




//BEING ABLE TO MOVE AROUND THE LETTERS
selectingAnotherLetter= obj_outcomeLetter_Casey.isSelected or obj_outcomeLetter_Jordan.isSelected  or  obj_outcomeLetter_Riley.isSelected or  obj_outcomeLetter_Skylar.isSelected 

//player can click and drag the letter
if(position_meeting(mouse_x,mouse_y,self) and mouse_check_button(mb_left) and !selectingAnotherLetter  and !obj_outcomeArticle.isSelected)
{
	x=mouse_x
	y=mouse_y
	isSelected=true
}
else
{
	isSelected=false
}

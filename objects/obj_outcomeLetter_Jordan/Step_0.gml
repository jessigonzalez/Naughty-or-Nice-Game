/// @description Insert description here
// You can write your code in this editor


//if Jordan gets a book(3), baseball+bat(9), coal(10), legos(7) or dog(5)

//*-------UN COMMENT HERE AND PUT IN THE INDEXES OF WHERE EACH THANK YOU LETTER IS

if(global.GIFT_JORDAN==3)
{
	image_index=1
}
else if(global.GIFT_JORDAN==9)
{
	image_index=2
}
else if(global.GIFT_JORDAN==10)
{
	image_index=3
}
else if(global.GIFT_JORDAN==7)
{
	image_index=4
}
else if(global.GIFT_JORDAN==5)
{
	image_index=5
}
else
{
	image_index=0
}




selectingAnotherLetter= obj_outcomeLetter_Casey.isSelected or obj_outcomeLetter_Alex.isSelected  or  obj_outcomeLetter_Riley.isSelected or  obj_outcomeLetter_Skylar.isSelected 

//player can click and drag the letter
if(position_meeting(mouse_x,mouse_y,self) and mouse_check_button(mb_left) and !selectingAnotherLetter and !obj_outcomeArticle.isSelected)
{
	x=mouse_x
	y=mouse_y
	isSelected=true
}
else
{
	isSelected=false
}

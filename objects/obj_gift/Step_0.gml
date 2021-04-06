/// @description Insert description here
// You can write your code in this editor


//selecting the gift when the name tag is not selected
mouseTouchingGift=collision_circle(x,y,mouseCollisionRadius,obj_playerMouse,false,false)

if(mouseTouchingGift!=noone and mouse_check_button(mb_left) and !global.playerIsSelectingNametag)
{
	global.playerIsSelectingGift=true
}
else
{
	global.playerIsSelectingGift=false
}

if(global.playerIsSelectingGift)
{
	x=mouse_x
	y=mouse_y
}

if(spaceInBagX!=0 and spaceInBagY!=0)//when the gift is in the bag, the collison radius decreases
{
	mouseCollisionRadius=50/2
}
















/*
isSelected=false
//when player clicks on the gift, they can drag it over to santa's bag
if(position_meeting(mouse_x,mouse_y,self) and mouse_check_button(mb_left))
{
	isSelected=true//the player is selecting the gift
	x=mouse_x
	y=mouse_y
}




//when the player is not selecting the gift and the gift is in Santa's bag, 
//it can clip on the nearest empty spot the grid, 
//then the space it occupies is full
if(position_meeting(x,y,obj_santabag) and !isSelected)
{
	nearestTouchingGrid=collision_circle(x,y,25, obj_gridspace,false,false)//where is nearest grid space
	if(nearestTouchingGrid.isFull==false)//check nearest grid space is empty
	{
	//then put it in that space, space is now full
		x=nearestTouchingGrid.x
		y=nearestTouchingGrid.y
		nearestTouchingGrid.isFull=true
	}


}


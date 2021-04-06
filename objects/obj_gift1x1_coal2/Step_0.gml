/// @description Insert description here
// You can write your code in this editor

event_inherited();
/*
isSelected=false
image_xscale=0.5//makes the image smaller
image_yscale=0.5

//if the player is selecting another gift right now, cannot slect this gift
if(obj_gift2x1_ipod.isSelected=true or obj_gift2x1_book.isSelected=true or obj_gift3x1_switch.isSelected=true
or obj_gift3x1x1_baseballandbat.isSelected=true or obj_gift1x3x1x1_bike.isSelected=true or obj_gift3x2_legos.isSelected=true
or obj_gift3x2_piano.isSelected=true or obj_gift2x2_candles.isSelected=true or obj_gift3x1x1_dog.isSelected=true
or obj_gift1x1_coal1.isSelected=true or obj_gift1x1_coal3.isSelected=true or obj_gift1x1_coal4.isSelected=true or obj_gift1x1_coal5.isSelected=true)
{
	selectedAnotheGift=true
}
else
{
	selectedAnotheGift=false
}

//when player clicks on the gift, they can drag it over to santa's bag
if(position_meeting(mouse_x,mouse_y,self) and mouse_check_button(mb_left) and selectedAnotheGift=false  and assignedChild=true)
{
	isSelected=true//the player is selecting the gift
	image_xscale=1//resize image to its orignal 
	image_yscale=1
	x=mouse_x
	y=mouse_y
}




//when the gift is hovering over santa's bag, if there are empty spaces, then the gift can fit in the bag
if(position_meeting(x,y,obj_gridspace))
{	
	nearestTouchingGrid1=collision_circle(x,y,10, obj_gridspace,false,false)//where is nearest grid space
	if(!isSelected)
	{
		if(nearestTouchingGrid1.isFull==false)//check nearest grid space is empty
		{
		//then put it in that space, space is now full
			x=nearestTouchingGrid1.x
			y=nearestTouchingGrid1.y
			isInBag=true
			nearestTouchingGrid1.isFull=true

		}
	}
	else
	{	
		isInBag=false
		nearestTouchingGrid1.isFull=false
	}

}

	
if(isInBag)
{
	image_xscale=1 //go to its orginal size
	image_yscale=1
}
/// @description Insert description here
// You can write your code in this editor

//when the player is touching the name tag and click down on it, they can move the name tag
mouseTouchingNametag=collision_circle(x,y,sprite_width,obj_playerMouse,false,false)
touchingAnotherNameTag=(obj_childnametag_Casey.selectingThisNameTag or obj_childnametag_Alex.selectingThisNameTag or obj_childnametag_Riley.selectingThisNameTag or obj_childnametag_Skylar.selectingThisNameTag)

if(mouseTouchingNametag!=noone and mouse_check_button(mb_left) and !touchingAnotherNameTag)
{
	
	global.playerIsSelectingNametag=true
	selectingThisNameTag=true
}
else
{
	global.playerIsSelectingNametag=false
	selectingThisNameTag=false
}

if(global.playerIsSelectingNametag)
{
	x=mouse_x
	y=mouse_y
}
//when a name tag gets close to a gift, that name tag is assigned to that gift, then the gift is now moving with the name tag
Gift=collision_circle(x,y,sprite_width/2,obj_gift,false,false)
if(Gift!=noone)
{//have not been placed into the bag so far
	assignedGift=true//that name tag is assigned to a gift
	assignedGiftNum=Gift.giftNum//the name tag knows what gift it is assigned to
	Gift.x=x//the gift moves with the name tag
	Gift.y=y

	if(Gift.spaceInBagX!=0 and Gift.spaceInBagY!=0 and global.playerIsSelectingNametag)
	{//if the gift gets out of the bag, make the spaces they occupied back to empty
		for(i = 0; i < Gift.giftWidth; i += 1)
		{	for(j = 0; j < Gift.giftHeight; j += 1)
			{
				if(ds_grid_get(Gift.giftGrid,i,j)==1)//if this is a space of the gift
				{	
					if(ds_grid_get(obj_santabag_Grid.bagGrid,Gift.spaceInBagX-1+i,Gift.spaceInBagY-1+j)==1)
					{//set the empty space into a full one
						//isNearGridSpace=true----------using this for debugging
						ds_grid_set(obj_santabag_Grid.bagGrid,Gift.spaceInBagX-1+i,Gift.spaceInBagY-1+j,0)
					}
				}
			}
		}
	}
	//putting this gift with a nametag into santa's bag
	
	//check where is nearest grid space of the present
	nearestGridSpace=collision_circle(x,y,30,obj_gridspace,false,false)
	//check if this space(s) can hold all the spaces of the gift
	if(nearestGridSpace!=noone) //and !global.playerIsSelectingNametag)
	{//checking all the grid spaces to see if it can fit the gift's spaces
		//check if the gift could actually fit in the grid at that grid space

		//when not placed in bag
		if((nearestGridSpace.gridX+Gift.giftWidth-1)<=4 and (nearestGridSpace.gridY+Gift.giftHeight-1)<=4)// and Gift.spaceInBagX==0 and Gift.spaceInBagY==0)
		{	//check if the needed spaces for the gift are empty/notFull, if even one space doesnt work, then the gift cannot fit
			assignedGiftFitsInBag=true//first pretend it can fit, see if there is a case where it cant
			for(i = 0; i < Gift.giftWidth and assignedGiftFitsInBag; i += 1)
			{	for(j = 0; j < Gift.giftHeight and assignedGiftFitsInBag; j += 1)
				{//if there is a space that needs to be full to fit the gift, the grid should have an empty space for it
					if(ds_grid_get(Gift.giftGrid,i,j)==1)//if this is a space of the gift
					{
						if(ds_grid_get(obj_santabag_Grid.bagGrid,nearestGridSpace.gridX-1+i,nearestGridSpace.gridY-1+j)==0)//if this space in the bag is empty
						{
							assignedGiftFitsInBag=true
						}
						else
						{
							assignedGiftFitsInBag=false//if it is false, then the gift cannot fit in the bag
							assignedGiftIsInBag=false
						}
					}
				}
			}
			
		}
		
		if(assignedGiftFitsInBag and !global.playerIsSelectingNametag)//the gift fits in the bag!
		{	//put the gift in the bag, 
			x=nearestGridSpace.x
			y=nearestGridSpace.y
			Gift.x=x
			Gift.y=y
			Gift.spaceInBagX=nearestGridSpace.gridX
			Gift.spaceInBagY=nearestGridSpace.gridY
			assignedGiftIsInBag=true

			//the spaces they occupy are now full
			//figure out what grid space objects the gift will occupy, using the gridNum of each obj_gridspace
			for(i = 0; i < Gift.giftWidth and assignedGiftFitsInBag; i += 1)
			{
				for(j = 0; j < Gift.giftHeight and assignedGiftFitsInBag; j += 1)
				{
					if(ds_grid_get(Gift.giftGrid,i,j)==1)//if this is a space of the gift
					{
						if(ds_grid_get(obj_santabag_Grid.bagGrid,nearestGridSpace.gridX-1+i,nearestGridSpace.gridY-1+j)==0)
						{//set the empty space into a full one
							ds_grid_set(obj_santabag_Grid.bagGrid,nearestGridSpace.gridX-1+i,nearestGridSpace.gridY-1+j,1)
						}
					}
				}
			}
		}
		//when the gift was prevously placed in the bag and picked up
		
	}


/*
		//when the gift is already in the bag, and you click and drag it out, it no longer occupies that space
		if(Gift.spaceInBagX!=0 and Gift.spaceInBagY!=0 and global.playerIsSelectingNametag)
		{
			for(i = 0; i < Gift.giftWidth and assignedGiftFitsInBag; i += 1)
			{
				for(j = 0; j < Gift.giftHeight and assignedGiftFitsInBag; j += 1)
				{
					if(ds_grid_get(Gift.giftGrid,i,j)==1)//if this is a space of the gift
					{
						if(ds_grid_get(obj_santabag_Grid.bagGrid,Gift.spaceInBagX-1+i,Gift.spaceInBagY-1+j)==1)
						{//set the full space into a empty one
							ds_grid_set(obj_santabag_Grid.bagGrid,Gift.spaceInBagX-1+i,Gift.spaceInBagY-1+j,0)
						}
					}
				}
			}
		}
*/		
		
	/*else if(global.playerIsSelectingNametag)//if we are selecting the name tag,
	{
		
	}*/


}
else //if the name tag is not in the collision circle, then the name tag is not assigned
{
	assignedGift=false
	assignedGiftNum=0
	assignedGiftFitsInBag=false
	assignedGiftIsInBag=false
	
}





/*
//if the name tag is already assigned to a gift, 
// and the player clicks on the name tag again, they can move it out of the gift's collision circle
if(assignedGift and mouseTouchingNametag!=noone and mouse_check_button(mb_left))
{
	global.playerIsSelectingNametag=true
	
}*/

//if the name tag is not assigned to a gift, then 
if(assignedGift=false)
{
	assignedGiftNum=0
}





/*

//when name tag is assigned to a gift, check what gift it is
gift=collision_circle(x,y,25,obj_gift,false,false)
if(gift!=noone and !gift.assignedChild )///and if not holding a object
{
	if(gift==instance_nearest(x,y,obj_gift1x3x1x1_bike))
	{	
		giftNum=1//bike
	}
	else if(gift==instance_nearest(x,y,obj_gift2x1_ipod))
	{	
		giftNum=2//ipod
	}
	else if(gift==instance_nearest(x,y,obj_gift2x1_book))
	{	
		giftNum=3//book
	}
	else if(gift==instance_nearest(x,y,obj_gift2x2_candles))
	{	
		giftNum=4//candles
	}
	else if(gift==instance_nearest(x,y,obj_gift3x1x1_dog))
	{	
		giftNum=5//dog
	}
	else if(gift==instance_nearest(x,y,obj_gift3x1_switch))
	{	
		giftNum=6//switch
	}
	else if(gift==instance_nearest(x,y,obj_gift3x2_legos))
	{	
		giftNum=7//legos
	}
	else if(gift==instance_nearest(x,y,obj_gift3x2_piano))
	{	
		giftNum=8//piano
	}
	else if(gift==instance_nearest(x,y,obj_gift3x1x1_baseballandbat))
	{	
		giftNum=9//baseball and bat
	}
	else if(gift==instance_nearest(x,y,obj_gift1x1_coal1) or gift==instance_nearest(x,y,obj_gift1x1_coal2)or gift==instance_nearest(x,y,obj_gift1x1_coal3)or gift==instance_nearest(x,y,obj_gift1x1_coal4)or gift==instance_nearest(x,y,obj_gift1x1_coal5))
	{	
		giftNum=10//coal 
	}


	gift.assignedChild=true
	
}
else if(gift!=noone and gift.assignedChild)
{//put name tag on the game, make sure its not at the mouse

	//for 1x1 presents
	if(giftNum==10)
	{
		x=gift.x
		y=gift.y
	}
	else
	{
		x=gift.x+45
		y=gift.y+45
	}

}

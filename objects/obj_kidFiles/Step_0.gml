/// @description Insert description here
// You can write your code in this editor


//when the mouse clicks on the book, the pages turn

if(position_meeting(mouse_x,mouse_y,obj_kidFiles) and mouse_check_button_pressed(mb_left))
{
	if(pageNum==0 and sprite_index=spr_kidfiles_topsecret)
	{	
		pageNum+=1
	}
	else if(pageNum==6 and sprite_index=spr_kidfiles_topsecret)
	{
		pageNum=0
	}
	if(sprite_index=spr_kidFiles_content)//can turn next page or back a page
	{
		if(mouse_x<=x)//left side of page
		{
			pageNum-=1
		}
		else if(mouse_x>x)//right side of page
		{
			pageNum+=1
		}
	}
}





if(pageNum==0)
{
	sprite_index=spr_kidfiles_topsecret
	image_index=0
}
else if(pageNum==6)
{
	sprite_index=spr_kidfiles_topsecret
	image_index=1
}
else if(pageNum==1)
{
	sprite_index=spr_kidFiles_content
	image_index=0
}
else if(pageNum==2)
{
	sprite_index=spr_kidFiles_content
	image_index=1
}
else if(pageNum==3)
{
	sprite_index=spr_kidFiles_content
	image_index=2
}
else if(pageNum==4)
{
	sprite_index=spr_kidFiles_content
	image_index=3
}
else if(pageNum==5)
{
	sprite_index=spr_kidFiles_content
	image_index=4
}
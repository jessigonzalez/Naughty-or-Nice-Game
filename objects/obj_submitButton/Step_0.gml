/// @description Insert description here
// You can write your code in this editor

//can advance to the next screen if everyone has a gift and the gift fits in the bag
if(room==gameScreen)
{
	if(position_meeting(mouse_x,mouse_y,self) and mouse_check_button_pressed(mb_left))
	{
		isClicked+=1
		if(global.GIFT_ALEX!=0 and global.GIFT_CASEY!=0 and global.GIFT_JORDAN!=0 and global.GIFT_RILEY!=0 and global.GIFT_SKYLAR!=0)
		{
			room_goto(Animation2)
		}
	}
}

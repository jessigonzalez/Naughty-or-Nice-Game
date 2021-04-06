/// @description Insert description here
// You can write your code in this editor

audio_play_sound(bgm_christmas_music,1,false)


if(keyboard_check_pressed(ord("Q")))
{
	if(room=Animation1)
	{
		room_goto(startScreen)
	}
	else if(room=startScreen)
	{
		room_goto(gameScreen)
	}
	else if(room=gameScreen)
	{
		room_goto(Animation2)
	}
	else if(room=Animation2)
	{
		room_goto(outcomeScreen)
	}
	else if(room=outcomeScreen)
	{
		room_goto(Animation1)
	}
}
//press space to start the game/ go back to the start screen
if(keyboard_check_pressed(vk_space))
{
	if(room=Animation1)
	{	room_goto(startScreen)
	}
	else if(room=startScreen)
	{
		room_goto(gameScreen)
	}
	else if(room=Animation2)
	{	room_goto(outcomeScreen)
	}
	else if(room=outcomeScreen)
	{
		room_goto(Animation1)
	}
}


//reset the game
if(room=startScreen)
{
	global.GIFT_ALEX=0
	global.GIFT_CASEY=0
	global.GIFT_JORDAN=0
	global.GIFT_RILEY=0
	global.GIFT_SKYLAR=0
}
else if(room=gameScreen)
{
//setting the gifts to the global variable if the child is recieving a gift and that gifts fits into the bag
	if(obj_childnametag_Alex.assignedGiftNum!=0 and obj_childnametag_Alex.assignedGiftIsInBag)
	{
		global.GIFT_ALEX=obj_childnametag_Alex.assignedGiftNum
	}
	if(obj_childnametag_Casey.assignedGiftNum!=0 and obj_childnametag_Casey.assignedGiftIsInBag)
	{
		global.GIFT_CASEY=obj_childnametag_Casey.assignedGiftNum
	}
	if(obj_childnametag_Jordan.assignedGiftNum!=0 and obj_childnametag_Jordan.assignedGiftIsInBag)
	{
		global.GIFT_JORDAN=obj_childnametag_Jordan.assignedGiftNum
	}
	if(obj_childnametag_Riley.assignedGiftNum!=0 and obj_childnametag_Riley.assignedGiftIsInBag)
	{
		global.GIFT_RILEY=obj_childnametag_Riley.assignedGiftNum
	}
	if(obj_childnametag_Skylar.assignedGiftNum!=0 and obj_childnametag_Skylar.assignedGiftIsInBag)
	{
		global.GIFT_SKYLAR=obj_childnametag_Skylar.assignedGiftNum
	}

}
//the outcome letters/articles
else if(room=outcomeScreen)
{	//if Alex gets a book(3), legos(7), coal(10), baseball+bat(9), or a switch(6)
	if(global.GIFT_ALEX==3 or global.GIFT_ALEX==7 or global.GIFT_ALEX==9 or global.GIFT_ALEX==10 or global.GIFT_ALEX==6)
	{
		obj_outcomeLetter_Alex.image_index=1//unhides the letter
	}
	//if Casey gets a dog(5), baseball+bat(9), coal(10), candles(4), or book(3)
	if(global.GIFT_CASEY==5 or global.GIFT_CASEY==9 or global.GIFT_CASEY==10 or global.GIFT_CASEY==5 or global.GIFT_CASEY==3)
	{
		obj_outcomeLetter_Casey.image_index=1
	}
	//if Jordan gets a book(3), baseball+bat(9), coal(10), legos(7) or dog(5)
	if(global.GIFT_JORDAN==3 or global.GIFT_JORDAN==9 or global.GIFT_JORDAN==10 or global.GIFT_JORDAN==7 or global.GIFT_JORDAN==5)
	{
		obj_outcomeLetter_Jordan.image_index=1
	}
	//if Riley gets a book(3), keyboard(8), coal(10), dog(5), or ipod(2)
	if(global.GIFT_RILEY==3 or global.GIFT_RILEY==8 or global.GIFT_RILEY==10 or global.GIFT_RILEY==5 or global.GIFT_RILEY==2)
	{
		obj_outcomeLetter_Riley.image_index=1
	}
	//if Skylar gets a book(3), baseball+bat(9), coal(10), legos(7), or bike(1)
	if(global.GIFT_SKYLAR== 3 or global.GIFT_SKYLAR== 9 or global.GIFT_SKYLAR==10 or global.GIFT_SKYLAR== 7 or global.GIFT_SKYLAR==1)
	{
		obj_outcomeLetter_Skylar.image_index=1
	}


}
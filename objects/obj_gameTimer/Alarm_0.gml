/// @description Insert description here
// You can write your code in this editor

if (GameTimer<= 0)
{
     room_goto(Animation2);
}



GameTimer -= 1;
alarm[0] = room_speed;

/// @description Insert description here
// You can write your code in this editor


//making sure that when the seconds is single digits, there is a zero in front of it (:00,:01,:02,...,:09)

if((GameTimer mod 60)<11 and (GameTimer mod 60)>=0 )
{
	extraZero="0"
}
else if((GameTimer mod 60)==59)
{
	extraZero=""
}
else
{
	extraZero=""
}
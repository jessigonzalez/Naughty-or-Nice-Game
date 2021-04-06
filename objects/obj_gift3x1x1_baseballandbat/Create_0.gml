/// @description Insert description here
// You can write your code in this editor

/* gift numbers
0=no gift
1=bike
2=ipod
3=book
4=candles
5=dog
6=switch
7=legos
8=piano
9=baseball+bat
10=coal
*/
giftNum=9
//3x2 gift
giftWidth=3//how many spaces wide is the gift
giftHeight=2//how many spaces high is the gift

//the grid that determines how many spces in the gift's grid they take up
giftGrid=ds_grid_create(giftWidth,giftHeight)
i=0
j=0
repeat(giftWidth)
{
	repeat(giftHeight)
	{
		ds_grid_set(giftGrid, i, j, 0)//all the spaces in this gift is empty
		j += 1
	}
	j=0
	i+=1
}
//the spaces that the gift takes up
ds_grid_set(giftGrid, 0, 0, 1)
ds_grid_set(giftGrid, 1, 0, 1)
ds_grid_set(giftGrid, 2, 0, 1)
ds_grid_set(giftGrid, 0, 1, 1)

spaceInBagX=0//when the gift is in the bag, the gift stores the X,Y of the gridSpace
spaceInBagY=0
isInBag=false//if the gift is in Santa's bag
mouseCollisionRadius=50

/// @description Insert description here
// You can write your code in this editor


//this grid holds all of the grid spaces' isFull statuses

bagGrid=ds_grid_create(4,4)

i=0
j=0


//creating an "empty" bagGrid
repeat(ds_grid_width(bagGrid))
{
	repeat(ds_grid_height(bagGrid))
	{
		ds_grid_set(bagGrid, i, j, 0)
		j += 1
	}
	j=0
	i+=1
}


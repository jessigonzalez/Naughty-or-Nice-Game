/// @description Insert description here
// You can write your code in this editor
//using the info from the santa's bag grid, the grid space will be either empty or full



//gets its isFull status from the santa bag grid
isFull=ds_grid_get(obj_santabag_Grid.bagGrid,gridX-1,gridY-1)

//is empty as long as there isnt a gift on top of it??????


if(isFull==1)
{
	sprite_index=spr_gridspace
	image_index=0//red is full

}
else
{
	sprite_index=spr_gridspace
	image_index=1//green is empty
}
/// @description enemy patrol collision
// You can write your code in this editor

//check to see if there is a collision between oPlayer 7 the top of oEnemy
if (y <= other.y - other.sprite_height*0.9)

    {
		//bounce in the air a bit
		EnemyHurt1();
		yVector = 0.5*jumpforce;
	}
//collide with enemy amd take damage
else
    {
		x = x - xVector*20;
		PlayerHurt();
	}
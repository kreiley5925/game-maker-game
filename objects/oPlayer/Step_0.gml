///@description movement
//code that runs every frame
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space)

//what direction player is moving
xDirection = right - left;

//speed & direction player is moving at
xVector = xDirection * xSpeed

//check to see if there is a wall, and if there is, stop movement, if there isn't continue movement
//position and movement of player
if (place_meeting(x + xVector, y, oWall))
 {
      //check one pixel to the left or right of us until we collide with oWall
      // ! meants "not"
      while(!place_meeting(x + xVector, y, oWall))
           { 
		   //only move 1 pixel at a time until you hit oWall
            x = x + xDirection;
		   }
           xVector = 0;
}
//otherwise move normal
x = x + xVector;


yVector = yVector + grv;

if (place_meeting(x, y + yVector, oWall))
 {
      //check one pixel to the left or right of us until we collide with oWall
      // ! meants "not"
	  //'sign' is going to return the positive or negative sign for a value (-1, +1)
	  //sign(yVector is positive it will return a positive 1, and if our yVector is negative,it will return a -1
      while(!place_meeting(x, y + sign(yVector), oWall))
           { 
		   //only move 1 pixel at a time until you hit oWall
            y = y + sign(yVector);
		   }
           yVector = 0;
}
//otherwise move normal
y = y + yVector;

//if we are touching oWall and we press the jump key, fly like an eaglr
if (place_meeting(x, y + 1, oWall) and (jump))
{
yVector = jumpforce;
}

//die in a pit and restart level
if (y >= room_height)

    {
		room_restart();
	}





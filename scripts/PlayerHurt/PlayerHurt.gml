// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerHurt()
{
    if(!isInvincible)
    {
        oPlayer.isInvincible = true;
		oPlayer.hp --;
		if (oPlayer.hp < 1)
		{
			PlayerDeath();
		}
	}
}

//restart level for player death
function PlayerDeath()
{
	room_restart();
}

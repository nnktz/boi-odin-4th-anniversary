 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.5.8 
 //  Author:???  
 //  TaskName: ?????? 
 //****************************  
function OnDead(){ 
	$var = GetPlayerVar(-1,3580)
	$is_accept = IsTaskAccept( -1, 1930 )
	if $is_accept != 0
		BC( "screen", "player", -1, "Please find Hermes in (222, 169) to get a quest, then kill the Glorious Darkness! Please wait until it ends!" )
	  return     
	endif 
	
	if $var < 29
		$var += 1
		SetPlayerVar(-1,3580,$var)
		BC( "screen", "player", -1, "You have killed ",$var,"Glorious Darkness, keep up!" )
    BC( "chat", "player", -1, "You have killed ",$var,"Glorious Darkness, keep up!" )
	endif
	if $var == 29
		$var += 1
		SetPlayerVar(-1,3580,$var)
		BC( "screen", "player", -1, "You have killed 30 Glorious Darkness, that is the maximum number! " )
    BC( "chat", "player", -1, "You have killed 30 Glorious Darkness, that is the maximum number! " )
	endif
	if $var > 29
		BC( "screen", "player", -1, "You have killed 30 Glorious Darkness, that is the maximum number! " )
    BC( "chat", "player", -1, "You have killed 30 Glorious Darkness, that is the maximum number! " )
	endif
} 

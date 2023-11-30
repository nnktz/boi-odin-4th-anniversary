 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.5.8 
 //  Author:???  
 //  TaskName: ???? 
 //****************************  

function OnUseItem(){ 
  //???????,
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "screen", "player", -1, "You do not have enough space in your bag." )
     BC( "chat", "player", -1, "You do not have enough space in your bag." )
     return
  endif
   $bag_count = GetPlayerInfo( -1, "nullitem", 1 )
  if $bag_count < 1
     BC( "screen", "player", -1, "You don't have enough space in your materials bag!" )
     BC( "chat", "player", -1, "You don't have enough space in your materials bag!" )
     return
  endif
	//??
	$var_global = GetGlobalVar(138)
  if $var_global == 500	 
  	ReqAward(-1 ,44 ,1 )
  else
  	if $var_global == 3000	 
  		ReqAward(-1 ,43 ,1 )
  	else
  		if $var_global == 6000	 
  			ReqAward(-1 ,45 ,1 )
  		else
  			if $var_global == 9000	 
  				ReqAward(-1 ,44 ,1 )
  			else
  				ReqAward(-1 ,42 ,1 )
  			endif
  		endif
  	endif
  endif
  $var_global += 1
  SetGlobalVar(138,$var_global)
  
} 

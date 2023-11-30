 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.2.25  
 //  Author:???  
 //  TaskName: ???? 
 //****************************  
function OnUseItem(){ 
	$gvar = GetGlobalVar(89)
  $itemid = 44682
	$item = GetPlayerInfo(-1,"item",$itemid)  
	if $item < 1
		BC( "screen", "player", -1, "There is no Green Light's Scroll in your bag!" )
		return
	endif
	$count = GetPlayerInfo(-1,"nullitem",0)
 		if $count < 1 
 			BC("chat","player",-1,"There is not enough space in your bag!")
 		return
 		endif
	$itemid = 44680
	$item = GetPlayerInfo(-1,"item",$itemid)  
	if $item < 1
		BC( "screen", "player", -1, "There is no Purple Light's Scroll in your bag!" )
		return
	endif
	$del_count = SubPlayerInfo( -1, "item", 44680, 1 )
	if $del_count != 0
     return
 	endif
 	$del_count = SubPlayerInfo( -1, "item", 44681, 1 )
	if $del_count != 0
     return
 	endif
 $del_count = SubPlayerInfo( -1, "item", 44682, 1 )
	if $del_count != 0
     return
 	endif
	$ran = RandomNumber(1,100)
	if $ran <= 90
		AddPlayerInfo(-1, "item", 44683, 1 ) 
		BC( "screen", "player", -1, "You have used 3 lights to make a Resurrection Advent, use it as soon as possible!" )
	else
	 if $ran <= 99
	 	AddPlayerInfo(-1, "item", 44684, 1 ) 
		BC( "screen", "player", -1, "Congratulations! You have used 3 lights to make a Resurrection Returns, use it as soon as possible!" )
		#name = GetPlayerInfo( -1, "name" )
	  BC( "screen", "server", -1, "Player",#name,"Has used 3 lights to make a Resurrection Returns.")
	  else
	  	if $ran == 100
	  		if $gvar <= 20
	  			AddPlayerInfo(-1, "item", 44685, 1 ) 
					BC( "screen", "player", -1, "Congratulations! You have used 3 lights to make a Resurrection Finale, use it as soon as possible!" )
					#name = GetPlayerInfo( -1, "name" )
	 				BC( "screen", "servergroup", -1, "Player",#name,"Has used 3 lights to make a Resurrection Finale.")
	 				$gvar = $gvar + 1
	 				SetGlobalVar(89,$gvar)
	 				else
	 				AddPlayerInfo(-1, "item", 44684, 1 ) 
					BC( "screen", "player", -1, "Congratulations! You have used 3 lights to make a Resurrection Returns, use it as soon as possible!" )
					#name = GetPlayerInfo( -1, "name" )
	  			BC( "screen", "server", -1, "Player",#name,"Has used 3 lights to make a Resurrection Returns.")
	 			endif
	 		endif
	  endif
	endif
	 
	 
	  
} 


 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.2.25  
 //  Author:???  
 //  TaskName: 1173???? 
 //****************************  
function OnRequest(){ 
	$ectype_id = GetEctypeID(-1, 573)
	$var = GetEctypeVar($ectype_id,0)
	//if $var != 1
	//	DisableNpcOption(0)
	//endif
	if $var != 2
		DisableNpcOption(0)
	endif
	$team_headerID = GetTeamHeaderID(-1)
	$player_id = GetPlayerID()

	//????????
	if $player_id != $team_headerID
		DisableNpcOption(0)
	endif
	
} 

function OnOption0(){ 
	//2????4??
//	32517	???? ??
//32518	???? ??

	$ectype_id = GetEctypeID(-1, 573)
	SetEctypeVar($ectype_id,0,21)
	$mon1 = 32463
	$mon2 = 32518
	
	$level = GetEctypeVar($ectype_id,5)
	$flevel = GetEctypeVar($ectype_id,6)
	$posx = 65	
	$posy = 158	
	$posx *= 100
	$posx /= 256
	$posy *= 100
	$posy /= 256	
	if $flevel > 0		
			AddLevelFieldMonster( $mon1,259,$level,259,$flevel,1,$ectype_id,$posx, $posy, 1 )	
	else
			AddLevelMonster($mon1,259,$level,1,$ectype_id,$posx, $posy, 1)
	endif
		AddMonsterByFloat( $mon2 , 1, $ectype_id, 78,160, 1 ,0 ,180 )	
	
		BC( "chat", "map", $ectype_id, "You have sided with Azura. Prepare to fight!")
		DeleteNPC(1177,-1)
		DeleteNPC(1173,-1)
} 
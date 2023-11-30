 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.2.25  
 //  Author:???  
 //  TaskName: 1177???? 
 //****************************  
function OnRequest(){ 
	$ectype_id = GetEctypeID(-1, 573)
	$var = GetEctypeVar($ectype_id,0)
	if $var != 1
		DisableNpcOption(0)
	endif
	if $var != 2
		DisableNpcOption(1)
	endif
	if $var != 31
		DisableNpcOption(2)
	endif
	$var = GetEctypeVar($ectype_id,53)
	if $var == 0
		DisableNpcOption(3)
	endif
	if $var != 0
		DisableNpcOption(0)
	endif
	$team_headerID = GetTeamHeaderID(-1)
	$player_id = GetPlayerID()

	//????????
	if $player_id != $team_headerID
		DisableNpcOption(0)
		DisableNpcOption(1)
		DisableNpcOption(2)
		DisableNpcOption(3)
	endif
	$isaccept = IsTaskAccept($team_headerID,1913)
	if $isaccept == 0 
		DisableNpcOption(2)
	endif
	
} 
//??? ????
function OnOption0(){ 
	//11258	??
	$team_headerID = GetTeamHeaderID(-1)
	$player_id = GetPlayerID()
	$ectype_id = GetEctypeID(-1, 573)
	$count = GetEctypeVar($ectype_id,53)
	$count += 1
	SetEctypeVar($ectype_id,53,$count)
	$taskID = 1913
	AcceptTask($player_id,$taskID)
	//if $count <= 3
//		$count_left = 3 - $count
		AddStatus(-1,11962,1)
		//SetEctypeVar($ectype_id,64,29) 
		//StartEctypeTimer($ectype_id,5)
		BC( "dialogbox", "player", -1, "You are now stealthed. Move quickly!")
		BC( "screen", "map", $ectype_id, "You are now stealthed. Move quickly!")
//	endif
	StartEctypeTimer($ectype_id,0)	
	BC( "chat", "player", -1, "You got the blessing of Pyrope. Keep going!")
} 
function OnOption1(){ 
	//2????4??
//	32517	???? ??
//32518	???? ??

	$ectype_id = GetEctypeID(-1, 573)
	SetEctypeVar($ectype_id,0,22)
	$mon1 = 32464
	$mon2 = 32517 
	
	$level = GetEctypeVar($ectype_id,5)
	$flevel = GetEctypeVar($ectype_id,6)
	$posx = 78	
	$posy = 160	
	$posx *= 100
	$posx /= 256
	$posy *= 100
	$posy /= 256	
	if $flevel > 0		
		AddLevelFieldMonster( $mon1,259,$level,259,$flevel,1,$ectype_id,$posx, $posy, 1 )	
	else
		AddLevelMonster($mon1,259,$level,1,$ectype_id,$posx, $posy, 1)
	endif
	AddMonsterByFloat( $mon2 , 1, $ectype_id, 62,154, 1 ,0 ,0 )
	SetEctypeVar($ectype_id,45,1)	
	//AddLevelFieldMonster( $mon1,258,$level,258,$flevel,1,$ectype_id,$posx, $posy, 1 )	
	BC( "chat", "map", $ectype_id, "You have sided with Pyrope. Prepare to fight!")
	DeleteNPC(1177,-1)
	DeleteNPC(1173,-1)
} 
function OnOption2(){ 
	//31??????? ?? 32467
	$team_headerID = GetTeamHeaderID(-1)
	$player_id = GetPlayerID()
	$ectype_id = GetEctypeID(-1, 573)
	//32467	???
	//AddMonsterByFloat( $mon1 , 1, $ectype_id, 108, 237, 1 ,0 ,180 )		
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			$mon2 = 32467
			if $flevel > 0			
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,42, 92, 1 )	                                                        
			else
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,42, 92, 1 )	
			endif
	$taskID = 1913
	$n = 0
		while $n < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n )
			$n = $n + 1
			$isaccept = IsTaskAccept($teamplayer_id,1913)
			if $isaccept == 1 
			AcceptTask($teamplayer_id,$taskID)
			#name = GetPlayerInfo( $teamplayer_id , "name" )
			BC( "chat", "map", $ectype_id, #name ," has received the Shadow Witch quest." )
			endif
		endwhile
	BC( "chat", "player", -1, "You accepted the Shadow Witch quest!")
} 
//??
function OnOption3(){ 
	//11258	??
	$ectype_id = GetEctypeID(-1, 573)
	$count = GetEctypeVar($ectype_id,53)
	//if $count < 3
	//	$count += 1
		SetEctypeVar($ectype_id,53,$count)
		$count_left = 3 - $count
		AddStatus(-1,11962,1)
		//SetEctypeVar($ectype_id,64,29) 
		//StartEctypeTimer($ectype_id,5)
		BC( "dialogbox", "player", -1, "You are now stealthed. Move quickly!")
		BC( "screen", "map", $ectype_id, "You are now stealthed. Move quickly!")
		BC( "chat", "player", -1, "You are now stealthed. Move quickly!")
//	endif
//	if $count == 3 
//		BC( "dialogbox", "player", -1, "GUID:04035000009")
//	endif

} 
 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.2.25  
 //  Author:???  
 //  TaskName: 1178??? 
 //****************************  
function OnRequest(){ 
	$ectype_id = GetEctypeID(-1, 573)
	$var = GetEctypeVar($ectype_id,0)
	if $var != 32
		DisableNpcOption(0)
	endif
		//????????
	$team_headerID = GetTeamHeaderID(-1)
	$player_id = GetPlayerID()
	if $player_id != $team_headerID
		DisableNpcOption(0)
	//DisableNpcOption(1)
	endif
	$isaccept = IsTaskAccept($team_headerID,1912)
	if $isaccept == 0 
		DisableNpcOption(0)
	endif
	
} 
function OnOption0(){ 
	//?32??
	$ectype_id = GetEctypeID(-1, 573)
	$taskID = 1912
	$n = 0
		while $n < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n )
			$n = $n + 1
			$isaccept = IsTaskAccept($teamplayer_id,1912)
			if $isaccept == 1 
			AcceptTask($teamplayer_id,$taskID)
			#name = GetPlayerInfo( $teamplayer_id , "name" )
			BC( "chat", "map", $ectype_id, #name ,"You accepted the Rulers of Quartz Grotto quest!" )
			SetEctypeVar($ectype_id,67,1)
			endif
		endwhile
		OpenMask(5,$ectype_id)
		StartEctypeTimer($ectype_id,2)	
} 


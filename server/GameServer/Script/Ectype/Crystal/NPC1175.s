 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.2.25  
 //  Author:???  
 //  TaskName: 1175???? 
 //****************************  
function OnRequest(){ 
	$ectype_id = GetEctypeID(-1, 573)
	$var = GetEctypeVar($ectype_id,0)
	
	if $var != 21
		DisableNpcOption(0)
	endif
	$team_headerID = GetTeamHeaderID(-1)
	$player_id = GetPlayerID()

	//????????
	if $player_id != $team_headerID
		DisableNpcOption(0)
	endif
	$isaccept = IsTaskAccept($team_headerID,1913)
	if $isaccept == 0 
		DisableNpcOption(0)
	endif
} 

function OnOption0()(){ 
	//31???????

	$ectype_id = GetEctypeID(-1, 573)
	StartEctypeTimer($ectype_id,1)	
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
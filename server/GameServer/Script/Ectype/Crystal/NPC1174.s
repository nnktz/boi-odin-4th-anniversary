 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.2.25  
 //  Author:???  
 //  TaskName: 1174???? 
 //****************************  
function OnRequest(){ 
	$ectype_id = GetEctypeID(-1, 573)
	$var = GetEctypeVar($ectype_id,10)
	//if $var != 1
	//	DisableNpcOption(0)
	//endif

	$team_headerID = GetTeamHeaderID(-1)
	$player_id = GetPlayerID()
	$count = GetEctypeVar($ectype_id,88)
	if $count == 1 
	DisableNpcOption(1)
	endif
	
} 
//1:??
function OnOption0(){ 
	$ectype_id = GetEctypeID(-1, 573)
			$map_x = 178
			$map_y = 131
			$map_x *= 100
			$map_x /= 256
			$map_y *= 100
			$map_y /= 256
			FlyToMap( -1, 475, $map_x, $map_y)
} 
//1:????
function OnOption1(){ 
	$ectype_id = GetEctypeID(-1, 573)
	$var = GetEctypeVar($ectype_id,10)
	//if $var != 1
	//	DisableNpcOption(0)
	//endif

	$team_headerID = GetTeamHeaderID(-1)
	$player_id = GetPlayerID()

	//????????
	if $player_id != $team_headerID
		BC("screen","player",-1,"Only the Party Leader can begin the Trial!")
		//BC("chat","player",-1,"|var=",$var)
		return
	endif
	$turn1 = GetEctypeVar(-1, 10)
	if $turn1 < 10
		BC("screen","map",$ectype_id,"The Darkshadow Trial requires 10 Shadow Cores!")
		return
	endif
	if $turn1 >= 10 
		BC("screen","map",$ectype_id,"The Darkshadow Trial has begun! Destroy the Crystal Phantasms!")
		$turn1 -= 10
		SetEctypeVar($ectype_id,10,$turn1) 
		SetEctypeVar($ectype_id,42,0)   
		SetEctypeVar($ectype_id,43,0)
		SetEctypeVar($ectype_id,88,1)
		BC("screen","map",$ectype_id,"Kill as many as you can before the time limit ends!")
		SetEctypeVar($ectype_id,64,59)
		StartEctypeTimer($ectype_id,7)
		call AddMonster1()
	endif
} 
//d????-????????
function OnOption2(){ 
	$ectype_id = GetEctypeID(-1, 573)
	$var = GetEctypeVar($ectype_id,8)
	//if $var != 1
	//	DisableNpcOption(0)
	//endif
	$team_headerID = GetTeamHeaderID(-1)
	$player_id = GetPlayerID()

	//????????
	if $player_id != $team_headerID
		BC("screen","player",-1,"Only the Party Leader can open the Crystal Treasure!")
		//BC("chat","player",-1,"|var=",$var)
		return
	endif
	if $var < 4
		BC("screen","map",$ectype_id,"You need 4 Crystal Fragments to open the Crystal Treasure!")
		return
	endif
	if $var >= 4 
		BC("screen","map",$ectype_id,"The Party Leader used 4 Crystal Fragments to open the Crystal Treasure. Each Party Member can collect one from the Chaotic Crystal.")
		$var -= 4 
		SetEctypeVar($ectype_id,8,$var)
			$n2 = 0
		while $n2 < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n2 )
			$n2 = $n2 + 1
				if $teamplayer_id != -1		
					$lenD = GetPlayerDistance($player_id,$teamplayer_id )
					if $lenD < 9999	
						$var_chance = GetPlayerVar($teamplayer_id,3472)
						$var_chance += 1
						SetPlayerVar($teamplayer_id,3472,$var_chance)
					endif
				endif	
		endwhile
	endif
	$team_headerID = GetTeamHeaderID(-1)
	$player_id = GetPlayerID()
////
} 
function OnOption3(){ 
	$ectype_id = GetEctypeID(-1, 573)
	$var = GetPlayerVar(-1,3472)
	if $var < 1
		BC( "screen", "player", -1, "The Party Leader must use 4 Crystal Fragments to open the Crystal Treasure before it can be collected.")
		return
	endif
	$id = 44794	
	$null_item = GetPlayerInfo(-1,"nullitem",0)
	if $null_item < 1
		BC( "screen", "player", -1, "You do not have enough space in your Bag.")
		return
	endif
	$is_success = AddPlayerInfo(-1,"item",$id,1)
  if $is_suc == 0
		BC( "screen", "player", -1, "You got a Crystal Treasure!")
		$var -= 1
		SetPlayerVar(-1,3472,$var)
	endif
					
////
} 
function AddMonster1(){
	$ectype_id = GetEctypeID(-1, 573)
	$var = GetEctypeVar($ectype_id,10)
	$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			$posx = GetPlayerInfo(-1,"mapx")
			$posy = GetPlayerInfo(-1,"mapy")
			$mon2 = 32488
			
			if $flevel > 0	
			$rand = RandomNumber(3,7)
			$posx1 = $posx + $rand
			$posy1 = $posy - $rand
			$posx2 = $posx - $rand
			$posy2 = $posy + $rand		
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx , $posy , 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx1, $posy1, 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx2, $posy1, 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx1, $posy2, 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx2, $posy2, 1 )
			$rand = RandomNumber(3,7)
			$posx1 = $posx + $rand
			$posy1 = $posy - $rand
			$posx2 = $posx - $rand
			$posy2 = $posy + $rand	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx , $posy , 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx1, $posy1, 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx2, $posy1, 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx1, $posy2, 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx2, $posy2, 1 )					
			else
			$rand = RandomNumber(3,7)
			$posx1 = $posx + $rand
			$posy1 = $posy - $rand
			$posx2 = $posx - $rand
			$posy2 = $posy + $rand
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx , $posy , 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx1, $posy1, 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx2, $posy1, 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx1, $posy2, 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx2, $posy2, 1 )
			$rand = RandomNumber(3,7)
			$posx1 = $posx + $rand
			$posy1 = $posy - $rand
			$posx2 = $posx - $rand
			$posy2 = $posy + $rand	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx , $posy , 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx1, $posy1, 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx2, $posy1, 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx1, $posy2, 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx2, $posy2, 1 )	
			endif                                          
	}
  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/05/09
	//		Author:??
	//		TaskName:caidan-Monster-32554.s
	//		TaskID:?????
	//****************************************
	
	function OnDead(){
		$map_id = GetPlayerInfo( -1, "mapid" )
		$x = GetPlayerInfo( -1, "mapposx" )
		$y = GetPlayerInfo( -1, "mapposy" )
		$n = RandomNumber ( 1, 100 )
    $gvar = GetGlobalVar(130)
    $xset = GetPlayerVar( -1, 3583 )
		$yset = GetPlayerVar( -1, 3584 )
		$posx	=	$xset	*	2
		$posy	=	$yset	*	2
		
	//if $n <= 2
		if $n > 2
			AddMonsterByFloat( 32559, 1, $map_id, $posx, $posy , 1,-1 )
			BC( "screen", "player", -1, "Summon an Amazing Chest!" )
		else
			if $gvar < 1
				AddMonsterByFloat( 32555, 1, $map_id, $posx, $posy , 1,-1 )
				BC( "screen", "player", -1, "A Glittering Easter Egg!" )
				$gvar = $gvar + 1
		 		SetGlobalVar(130,$gvar)
		 	else
				AddMonsterByFloat( 32559, 1, $map_id, $posx, $posy , 1,-1 )
				BC( "screen", "player", -1, "Summon an Amazing Chest!" )
			endif
		endif

		
	}
	
	
	
	

			
			

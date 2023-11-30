  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/05/09
	//		Author:??
	//		TaskName:caidan-Monster-32553.s
	//		TaskID:?????
	//****************************************
	
	function OnDead(){
		$map_id = GetPlayerInfo( -1, "mapid" )
		$x = GetPlayerInfo( -1, "mapposx" )
		$y = GetPlayerInfo( -1, "mapposy" )
		$n = RandomNumber ( 1, 100 )
		$xset = GetPlayerVar( -1, 3583 )
		$yset = GetPlayerVar( -1, 3584 )
		$posx	=	$xset	*	2
		$posy	=	$yset	*	2

	  if $n <= 10
			AddMonsterByFloat( 32554, 1, $map_id, $posx, $posy , 1,-1 )
			BC( "screen", "player", -1, "An Amazing Easter Egg!" )
		else
			AddMonsterByFloat( 32558, 1, $map_id, $posx, $posy , 1,-1 )
			BC( "screen", "player", -1, "Summon a Special Chest!" )
		endif

		
	}
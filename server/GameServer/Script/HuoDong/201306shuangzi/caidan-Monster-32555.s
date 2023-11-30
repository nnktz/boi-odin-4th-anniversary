  //****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2013/05/09
	//		Author：曾强
	//		TaskName：caidan-Monster-32555.s
	//		TaskID：金光闪闪的彩蛋
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

		AddMonsterByFloat( 32560, 1, $map_id, $posx, $posy , 1,-1 )
		
	}
 	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2013/03/21
	//		Author����־ǿ
	//		TaskName��С��
	//		TaskID������֮Դ����ı�
	//****************************************
	
	function OnDead(){
		$mapid = GetPlayerInfo( -1, "mapid")
		$x = GetPlayerInfo( -1, "mapposx")
		$y = GetPlayerInfo( -1, "mapposy")
		AddMonsterByFloat( 32438 , 1 , $mapid , $x , $y , 0 )
	
	}
//****************************************
//		Copyright：PERFECT WORLD
//		Modified：2013
//		Author：胡斌涛
//		Best wishs for all !
//****************************************

	//3214,最近一次通行证方式进入金字塔的地图编号
	//3617,最近一次通行证方式进入金字塔的日子
	function OnRequest(){
	
		
	}

	//传送到亚特兰蒂斯
	function OnOption0(){
		
		FlyToMap( -1, 475, 71, 39 )
		
	}

	//切换场景
	function OnOption1(){
		
		$mapid = GetPlayerInfo(-1,"mapid")
		if $mapid == 581
			$result = FlyToMap(-1, 127, 68, 64 )
		endif
		if $mapid == 127
			$result = FlyToMap(-1, 581, 57, 55 )
		endif
		
	}
	
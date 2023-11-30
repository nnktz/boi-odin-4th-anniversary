	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013-2-20
	//		Author:??
	//		TaskName:
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		$day = GetPlayerVar(-1,4200) 
		$lv = GetPlayerInfo( -1 , "level" )
		$nowtime = GetSystemTime( "yday" )
		if $day == $nowtime
			BC( "screen", "player", -1, "It is useable only once a day." )
			return
		endif
		if $lv < 90
			BC( "screen", "player", -1, "You must be LV90 to use this item" )
			return
		endif
		
	
//----------6*(4*lv-76)*lv*lv/5 + 400*lv*lv-----
		$a = $lv * $lv
		$b = 4 * $lv
		$c = $b - 76
		$d = $c * $a
		$e = 6 * $d
		$f = $e / 5
		$g = 400 * $a
		$exp = $f + $g
		$exp = $exp * 20
		
//---------------------------------
			//?????
			//????? = ????^2+0.6*????+1000
			//????? = ????? * 60
			$fieldlevel = GetFieldLevel(-1)
			$godexp = $fieldlevel * $fieldlevel
			$b = $fieldlevel * 6
			$b = $b / 10
			$godexp = $godexp + $b
			$godexp = $godexp + 1000
			$godexp = $godexp * 60
			$godexp = $godexp * 20
			
			
//---------------------------------

				$info = SubPlayerInfo ( -1 , "item" , 44678 , 1 )
				if  $info != 0
					return
				endif
				AddPlayerInfo( -1 , "exp" , $exp )
				if $fieldlevel > 0
					AddFieldExp( -1 , $godexp )
				endif
				BC( "screen", "player", -1, "A Soul Badge has been used." )
				SetPlayerVar(-1, 4200, $nowtime)
	}
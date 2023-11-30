 //****************************  
 //  Copyright：PERFECT WORLD  
 //  Modified：2013.2.25  
 //  Author：曹楚蒨  
 //  TaskName： 阿瑞斯的恩赐 4
 //****************************  

	function OnUseItem(){
		$del_count = SubPlayerInfo( -1, "item", 44703, 1 )
		if $del_count != 0
     return
 		 endif
		$lv = GetPlayerInfo( -1 , "level" )

//----------lv*lv*10*12+lv*lv*400-------------
		$a = $lv * $lv
		$b = 120 * $a
		$c = 400 * $a
		$exp1 = $b + $c
	
//----------6*(4*lv-76)*lv*lv/5 + 400*lv*lv-----
		$a = $lv * $lv
		$b = 4 * $lv
		$c = $b - 76
		$d = $c * $a
		$e = 6 * $d
		$f = $e / 5
		$g = 400 * $a
		$exp2 = $f + $g
//---------------------------------
			//增加天魂值
			//标准天魂值 = 天域等级^2+0.6*天域等级+1000
			//最大天魂值 = 标准天魂值 * 60
			$fieldlevel = GetFieldLevel(-1)
			$godexp = $fieldlevel * $fieldlevel
			$b = $fieldlevel * 6
			$b = $b / 10
			$godexp = $godexp + $b
			$godexp = $godexp + 1000
			$godexp = $godexp * 60
			$exp1 = $exp1 
			$exp2 = $exp2 
			$godexp = $godexp 
				if $lv < 45
					AddPlayerInfo( -1 , "exp" , $exp1 )
				else
					AddPlayerInfo( -1 , "exp" , $exp2 )
				endif
				if $fieldlevel > 0
					AddFieldExp( -1 , $godexp )
				endif
		
	}
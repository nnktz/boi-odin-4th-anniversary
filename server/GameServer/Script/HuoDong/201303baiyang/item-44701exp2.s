 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.2.25  
 //  Author:???  
 //  TaskName: ????? 2
 //****************************  

	function OnUseItem(){
			 $count = GetPlayerInfo(-1,"nullitem",0)
 		if $count < 1 
 			BC("chat","player",-1,"There is not enough space in your bag!")
 		return
 		endif
		$del_count = SubPlayerInfo( -1, "item", 44701, 1 )
		if $del_count != 0
     return
 		 endif
 	
		$lv = GetPlayerInfo( -1 , "level" )
		$r1 = RandomNumber(0,100)
		$itemid = RandomNumber(44680,44682)
		if $r1 > 80
			AddPlayerInfo(-1,"item",$itemid,1)
		endif
		$r1 = RandomNumber(0,100)
		$itemid = RandomNumber(44680,44682)
		if $r1 > 80
			AddPlayerInfo(-1,"item",$itemid,1)
		endif

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
			$exp1 = $exp1 * 3
			$exp2 = $exp2 * 3
			$godexp = $godexp * 3
				if $lv < 45
					AddPlayerInfo( -1 , "exp" , $exp1 )
				else
					AddPlayerInfo( -1 , "exp" , $exp2 )
				endif
				if $fieldlevel > 0
					AddFieldExp( -1 , $godexp )
				endif
		
	}
 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.5.8 
 //  Author:???  
 //  TaskName: ???? 
 //****************************  
function OnUseItem(){ 
	//???????,
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "screen", "player", -1, "Not enough space in your bag. Please clear some space to use the Light of Hope!" )
     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to use the Light of Hope!" )
     return
  endif
  //??????
  $map_id = GetPlayerInfo(-1,"mapid")
  $posx = GetPlayerInfo(-1,"mapposx")
  $posy = GetPlayerInfo(-1,"mapposy")
  if $map_id != 475
  	BC( "screen", "player", -1, "Please use it in the Trade Square of Atlantis!" )
    BC( "chat", "player", -1, "Please use it in the Trade Square of Atlantis!" )
    return
  endif
  if $posx < 90
  	BC( "screen", "player", -1, "Please use it in the Trade Square of Atlantis!" )
    BC( "chat", "player", -1, "Please use it in the Trade Square of Atlantis!" )
    return
  endif
  if $posx > 200
  	BC( "screen", "player", -1, "Please use it in the Trade Square of Atlantis!" )
    BC( "chat", "player", -1, "Please use it in the Trade Square of Atlantis!" )
    return
  endif
   if $posy < 170
  	BC( "screen", "player", -1, "Please use it in the Trade Square of Atlantis!" )
    BC( "chat", "player", -1, "Please use it in the Trade Square of Atlantis!" )
    return
  endif
  if $posy > 250
  	BC( "screen", "player", -1, "Please use it in the Trade Square of Atlantis!" )
    BC( "chat", "player", -1, "Please use it in the Trade Square of Atlantis!" )
    return
  endif
//-------------------------------??---------------------------------
  
  //???????
  
  $del_count = SubPlayerInfo( -1, "item", 44869, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif
  //???????
  	$lv = GetPlayerInfo( -1 , "level" )
		$r1 = RandomNumber(0,100)
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
			$exp1 = $exp1 
			$exp2 = $exp2 * 10
			$godexp = $godexp * 10
				if $lv < 45
					AddPlayerInfo( -1 , "exp" , $exp1 )
				else
					AddPlayerInfo( -1 , "exp" , $exp2 )
				endif
				if $fieldlevel > 0
					AddFieldExp( -1 , $godexp )
				endif
	//????
		PlayEffect(-1,"common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_04.ini")
		$rand = RandomNumber(1,2)
		if $rand == 1
			AddMonsterByFloat( 32561 , 1, $map_id, $posx, $posy, 1 ,0 ,180 )
		endif
		if $rand == 2
			AddMonsterByFloat( 32562 , 1, $map_id, $posx, $posy, 1 ,0 ,180 )
		endif
		
  //????
  
		$var_sum = GetPlayerVar(-1,3577)
		$var_sum += 1
		SetPlayerVar(-1,3577,$var_sum)
		
		if $var_sum == 10
			AddPlayerInfo(-1, "item", 44870, 2 ) 
			BC( "messagebox", "player", -1, "You have used the Light of Hope and you got 2 Prayer Boxes!" )
		else
			if $var_sum == 20
				AddPlayerInfo(-1, "item", 44870, 3 ) 
				BC( "messagebox", "player", -1, "You have used the Light of Hope and you got 3 Prayer Boxes!" )
			else
				if $var_sum == 28
					AddPlayerInfo(-1, "item", 44870, 5 ) 
					BC( "messagebox", "player", -1, "You have used the Light of Hope, and you got 5 Prayer Boxes!" )
				else
					AddPlayerInfo(-1, "item", 44870, 1 ) 
					BC( "messagebox", "player", -1, "You have used the Light of Hope, and you got 1 Prayer Boxes!" )
				endif
			endif	
		endif
		
		
} 

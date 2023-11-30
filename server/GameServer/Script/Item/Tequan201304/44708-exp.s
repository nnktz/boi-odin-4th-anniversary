 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.3.9  
 //  Author:???  
 //  TaskName: ????? 
 //****************************  

function OnUseItem(){
	//?????????,???????$playervarid
	  $sysyday = GetSystemTime("yday")
		$playervarid = 4202
		$playervar = GetPlayerVar(-1,$playervarid)
		#nameitem = "Anniversary Carnival"
		if $playervar == $sysyday
			BC("screen","player",-1,"You have already used ",#nameitem,".")
			return
		endif
   //??????,
  $level = GetPlayerInfo( -1, "level" )
  if $level < 10
     BC( "screen", "player", -1, "You have to be at least LV10 before you can use ",#nameitem,"!" )
     BC( "chat", "player", -1, "You have to be at least LV10 before you can use ",#nameitem,"!" )
     return
  endif
   //???????
  $itemid = GetItemID()
  $del_count = SubPlayerInfo( -1, "item", $itemid, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //????????????,???????
 
  SetPlayerVar(-1, $playervarid, $sysyday )
  PlayEffect(-1, "common\Yanhua\tx_chunjie\tx_yanhua_chunjie_03.ini" )
  //??
  $lv = GetPlayerInfo( -1, "level")
   call exp()
   $exp1 = $exp1 * 2 
   $exp2 = $exp2 * 2 
   $godexp = $godexp * 2 
   if $lv < 45
			AddPlayerInfo( -1 , "exp" , $exp1 )
		else
			AddPlayerInfo( -1 , "exp" , $exp2 )
	endif
	if $fieldlevel > 0
			AddFieldExp( -1 , $godexp )
	endif
}
function exp(){
		
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
			
			
//---------------------------------
}

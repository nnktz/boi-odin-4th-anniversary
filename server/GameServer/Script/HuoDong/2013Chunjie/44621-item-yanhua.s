//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/01/5
	//		Author:???
	//		TaskName:????
	//		TaskID:44621-item-yanhua.s
	//
	//****************************************


function OnUseItem(){
	//?????????,???????$playervarid
	  $sysyday = GetSystemTime("yday")
		$playervarid = 3452
		$playervar = GetPlayerVar(-1,$playervarid)
		#nameitem = "Flowery Fireworks"
		if $playervar == $sysyday
			BC("screen","player",-1,"You have already used ",#nameitem,"today.")
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
    $pro1 = 125
		$pro2 = 1
		$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
	  $addexp = $expori / 1000
	  $addexp = $addexp * $pro1
	  $addexp *= $pro2
	  if $addexp > 200000000
	  	$addexp = 200000000
	  endif
	  $addexp = $addexp / 10
	  $addexp = $addexp * 11
	  AddPlayerInfo(-1,"exp",$addexp)
	  if $fieldlevel > 0
	  	$addexp = $fexpori / 1000
	  	$addexp = $addexp * $pro1
	  	$addexp *= $pro2
	  	$addexp = $addexp / 10
	    $addexp = $addexp * 11
	  	AddFieldExp(-1,$addexp)
	  endif
}
function exp(){
		$level = GetPlayerInfo(-1,"level")
		$fieldlevel = GetFieldLevel(-1)
//(X*X	+	X*40	-100	)	*1800
//(X*X	+	X*65				)	*1690	*(Xmod80)
//(X*X	+	X*200				)	*325	*(Xmod90)
//(X*X	+	X*12				)	*2700	*(Xmod100)
//(X*X	-	X*80	+3000	)	*2700	*(Xmod111)
		$levelvv = $level * $level
		$Xmod80 = $level / 80
		$Xmod90 = $level / 90
		$Xmod100 = $level / 100
		$Xmod111 = $level / 111
		$expX1 = $level * 40
		$expX2 = $level * 65
		$expX3 = $level * 200
		$expX4 = $level * 12
		$expX5 = $level * 80
		$expn1 = $levelvv + $expX1
		$expn2 = $levelvv + $expX2
		$expn3 = $levelvv + $expX3
		$expn4 = $levelvv + $expX4
		$expn5 = $levelvv - $expX5
		$expn1 -= 100
		$expn5 += 3000
		$expn1 *= 1800
		$expn2 *= 1690
		$expn3 *= 325
		$expn4 *= 2700
		$expn5 *= 2700
		$expn2 *= $Xmod80
		$expn3 *= $Xmod90
		$expn4 *= $Xmod100
		$expn5 *= $Xmod111
		$expori = $expn1
		$expori += $expn2
		$expori += $expn3
		$expori += $expn4
		$expori += $expn5
//		BC("chat","player",-1,"expori=",$expori)
		
//X^2*935+X*38000+1600000
		$fieldlevelvv = $fieldlevel * $fieldlevel
		$fexpn1 = $fieldlevelvv * 935
		$fexpn2 = $fieldlevel * 38000
		$fexpori = $fexpn1 + $fexpn2
		$fexpori += 1600000
//		BC("chat","player",-1,"fexpori=",$fexpori)
		
}

 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: ????? 
 //****************************  
function OnRequest(){ 
	
} 
//???? - ??????
function OnOption0(){ 
	
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		$monthadd = $month * 100
		$dayadd = $monthadd + $mday
		if $dayadd < 624
			BC("dialogbox","player",-1,"Sorry, the activity has not started yet!")
			return
		endif
		if $dayadd > 707
			BC("dialogbox","player",-1,"Sorry, the event has ended")
			return
		endif
		$level = GetPlayerInfo(-1,"level")
		if $level < 45
			BC("dialogbox","player",-1,"You have to be at least LV45 to participate!")
			return
		endif
//4213		?????????????
	$var = GetPlayerVar(-1,4213)
	$yday = GetSystemTime("yday")
	if $var == $yday
		#bcw_1 = "You've already written your name on the wall today, come again tomorrow!"
		BC("dialogbox","player",-1,#bcw_1)
		return
	endif
	$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("screen","player",-1,"Insufficient bag slots!")
			return
		endif
	$money = GetPlayerInfo(-1,"money")
	if $money < 100000
		BC("dialogbox","player",-1,"Insufficient coins! You need 100,000 Coins to join the event.")
		return
	endif
	SubPlayerInfo(-1,"money",100000)
	SetPlayerVar(-1,4213,$yday)
	AddPlayerInfo(-1,"item",44894,1)
	#name = GetPlayerInfo(-1,"name")
	$playerid = GetPlayerID()
	$index = RandomNumber(175,184)
	SetGlobalVar($index,#name)
	SetGlobalVar($index,$playerid)
	BC("dialogbox","player",-1,"You've already written your name on the Oracle wall! \nYou will get plenty of rewards if you are picked up by fate!")
	$mapid = GetPlayerInfo(-1,"mapid")
	BC("screen","map",$mapid,"Player ",#name,"You wrote my name on the Oracle wall. Let's bless the hero!")
	BC("chat","map",$mapid,"Player ",#name,"You wrote my name on the Oracle wall. Let's bless the hero!")
	
	$randombuff = RandomNumber(1,20000)
	$luckybuff = 400
	$nowrest = GetGlobalVar(174)
	$nowhour = GetSystemTime("hour")
	$nowminute = GetSystemTime("minute")
	if $nowrest > 0
		//????
		$nowhour *= 60
		$nowminute += $nowhour
		//???- ?????72,?????????
		$time_add = $nowminute / 64
		$rest_add = $nowrest * 2
//		BC("chat","player",-1,"|time_add=",$time_add,"|rest_add=",$rest_add)
		$total_add = $time_add + $rest_add
		if $total_add > 20
			if $total_add > 25
				$total_add = 25
			endif
			$power = $total_add - 20
			$powerset = powercommand(2,$power)
			$luckybuff *= $powerset
		endif
		if $total_add < 20
			if $total_add < 15
				$total_add = 15
			endif
			$power = 20 - $total_add
			$powerset = powercommand(2,$power)
			$luckybuff /= $powerset
		endif
		
	else
		//????
		$luckybuff = 0
	endif
//	BC("chat","player",-1,"|randombuff=",$randombuff,"|luckybuff=",$luckybuff)
	if $randombuff <= $luckybuff
		//??-
		$index = 171 - $nowrest
		SetGlobalVar($index,#name)
		SetGlobalVar($index,$playerid)
		$nowrest -= 1
		SetGlobalVar(174,$nowrest)
	endif
	
} 
//??10?????
function OnOption1(){ 
	
	
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		$monthadd = $month * 100
		$dayadd = $monthadd + $mday
		if $dayadd < 624
			BC("dialogbox","player",-1,"Sorry, the activity has not started yet!")
			return
		endif
		if $dayadd > 708
			BC("dialogbox","player",-1,"Sorry, the event has ended")
			return
		endif
	
		#msg = "\n Recently registered players: \n"
		$indexW = 175
		while $indexW <= 184
			#name = GetGlobalVar($indexW)
			#msg = strcat_x(#msg,"\nRegistered player: ")
			#msg = strcat_x(#msg,#name)
			$indexW += 1
		endwhile
			#msg = strcat_x(#msg,"\n\nThe more new names that are added, the more old ones we won't be able to recognize.")
		
	
	BC("longdialogbox","player",-1,#msg)
	
	
	
} 
//?????????
function OnOption2(){ 
	
	
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		$monthadd = $month * 100
		$dayadd = $monthadd + $mday
		if $dayadd < 624
			BC("dialogbox","player",-1,"Sorry, the activity has not started yet!")
			return
		endif
		if $dayadd > 708
			BC("dialogbox","player",-1,"Sorry, the event has ended")
			return
		endif
	
	#msg = "\n Today's Lucky winner: \n"
		$indexW = 151
		while $indexW <= 160
			#name = GetGlobalVar($indexW)
			#msg = strcat_x(#msg,"\nThe Oracle: ")
			#msg = strcat_x(#msg,#name)
			$indexW += 1
		endwhile
			#msg = strcat_x(#msg,"\n\nThe 10 players are the prophets of Oracle. The citizens in Atlantis admire them!")
		
	
	BC("longdialogbox","player",-1,#msg)
	
	
	
} 
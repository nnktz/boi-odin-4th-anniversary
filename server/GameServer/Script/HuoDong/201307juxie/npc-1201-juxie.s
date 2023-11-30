 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: ????? 
 //****************************  
function OnRequest(){ 
} 
//?????????
function OnOption0(){ 
	
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		$monthadd = $month * 100
		$dayadd = $monthadd + $mday
		if $dayadd < 618
			BC("dialogbox","player",-1,"Sorry, the activity has not started yet!")
			return
		endif
		if $dayadd > 715
			BC("dialogbox","player",-1,"Sorry, the event has ended")
			return
		endif
		$level = GetPlayerInfo(-1,"level")
		if $level < 45
			BC("dialogbox","player",-1,"You have to be at least LV45 to participate!")
			return
		endif
//4212		????????????
	$var = GetPlayerVar(-1,4212)
	$yday = GetSystemTime("yday")
	if $var == $yday
		BC("dialogbox","player",-1,"You've already fed the Guild Beast today! Come again tomorrow~")
		return
	endif
	$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 2
			BC("screen","player",-1,"Insufficient bag slots!")
			return
		endif
//	$money = GetPlayerInfo(-1,"money")
//	if $money < 100000
//		BC("dialogbox","player",-1,"GUID:05081000005")
//		return
//	endif
//	SubPlayerInfo(-1,"money",100000)
	SetPlayerVar(-1,4212,$yday)
//3482	??1	44896	???"S"??
//3483	??2	44897	???"V"??
//3484	??3	44898	???"U"??
//3485	??4	44899	???"R"??
//3486	??5	44900	???"C"??
//3487	??6	44901	???"I"??
//3488	??7	44902	???"T"??
//3489	??8	44903	???"E"??
//3490	??9	44904	???"L"??
//9008~9016
	$randombuff = RandomNumber(0,8)
	$cardid = 44896 + $randombuff
	$buffid = 9008 + $randombuff
	AddPlayerInfo(-1,"item",$cardid,1)
	AddStatus(-1,$buffid,1)
	PlayEffect(-1,"common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_04.ini")
	BC("screen","player",-1,"You have picked a Prophecy Card today!")
	AddPlayerInfo(-1,"item",44890,1)
	
//	54308	????-???
	$isgatcard = GetPlayerVar(-1,415)
	if $isgatcard == 0
		AddPlayerInfo(-1,"item",54308,1)
		SetPlayerVar(-1,415,1)
		BC("screen","player",-1,"It is your first time participating in this activity, you got a Zodiac Cancer Fate Card as a gift.")
	endif
	
} 
//???? - ???????
//412		?????
function OnOption1(){ 
	
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		$monthadd = $month * 100
		$dayadd = $monthadd + $mday
		if $dayadd < 618
			BC("dialogbox","player",-1,"Sorry, the activity has not started yet!")
			return
		endif
		if $dayadd > 715
			BC("dialogbox","player",-1,"Sorry, the event has ended")
			return
		endif
		
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 2
			BC("screen","player",-1,"Insufficient bag slots!")
			return
		endif
		
	$pvar = GetPlayerVar(-1,412)
	if $pvar == 1
		BC("dialogbox","player",-1,"You already exchanged a Prophecy Card!")
		return
	endif
		$all = 0
		$cardid = 44896
		while $cardid <= 44904
			$item = GetPlayerInfo(-1,"item",$cardid)
			if $item > 0
				$all += 1
			endif
			$cardid += 1
		endwhile
		
		if $all < 9
			BC("dialogbox","player",-1,"The present Prophecy Cards are: (",$all,"/9) \nYou haven't gotten 9 Prophecy Cards, can't exchange.\nIf your card is in your box, please open the box first.")
			return
		endif

		$all = 0
		$cardid = 44896
		while $cardid <= 44904
			$suc = SubPlayerInfo(-1,"item",$cardid,1)
			if $suc == 0
				$all += 1
			endif
			$cardid += 1
		endwhile
		
//54309	????-???(?)
	if $all == 9
		AddPlayerInfo(-1,"item",54309,1)
		AddPlayerInfo(-1,"item",2221,5)
		BC("dialogbox","player",-1,"Silver Card: You've exchanged the Cancer Silver Card!")
		SetPlayerVar(-1,412,1)
	else
		BC("dialogbox","player",-1,"Error!")
	endif
	
} 
//??????????????
//412		?????
function OnOption2(){ 
	
		$pvar = GetPlayerVar(-1,412)
		$nullitem = GetPlayerInfo(-1,"nullitem",1)
		if $nullitem < 1
			BC("screen","player",-1,"Insufficient material bag slots!")
			return
		endif
		
		$all = 0
		$cardid = 44896
		while $cardid <= 44904
			$item = GetPlayerInfo(-1,"item",$cardid)
			if $item > 0
				$itemsub = $item + $pvar
				$itemsub -= 1
				$suc = SubPlayerInfo(-1,"item",$cardid,$itemsub)
				$all += $itemsub
			endif
			$cardid += 1
		endwhile
	
	if $all > 0
		AddPlayerInfo(-1,"item",9,$all)
		if $pvar == 1
			BC("dialogbox","player",-1,"Exchange succeeds!")
		else
			BC("dialogbox","player",-1,"Exchange succeeds! You haven't exchanged any Prophecy Cards, so the last one of each kind is kept for you.")
		endif
	else
		if $pvar == 1
			BC("dialogbox","player",-1,"You don't have an exchangeable card.")
		else
			BC("dialogbox","player",-1,"There is not an exchangeable card now.\nYou haven't exchanged any Prophecy Cards, so the last one of each kind can't be exchanged for a reward.")
		endif
	endif
	
} 

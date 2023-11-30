	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013-03-12
	//		Author:???
	//		TaskName:?-???????-?
	//		TaskID:ITEM-44716.s
	//
	//****************************************
	function OnUseItem(){
		
		$vip = IsDiamondVIP(-1)
		if $vip == 1
			BC( "dialogbox", "player", -1, "Only Platinum Nobles can open a Noble Gift. You can purchase a Platinum Noble Card in the Marketplace." )
			return
		endif
		
		//??????????
		$bag1_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag2_count = GetPlayerInfo( -1, "nullitem", 1 )
		if $bag1_count < 1
			BC( "screen", "player", -1, "Insufficient space in your common bag!" )
			return
		endif
		if $bag2_count < 1
			BC( "screen", "player", -1, "You do not have enough bag space." )
			return
		endif
		
		$playerday = GetPlayerVar(-1,4081)
		$playeryear = GetPlayerVar(-1,3326)
		$playeryear += 2000
		$sysyday = GetSystemTime("yday")
		$sysyear = GetSystemTime("year")
		if $sysyear > $playeryear
			$yearsub = $sysyear - $playeryear
			$yearsub *= 365
			$sysyday += $yearsub
		endif
		$playerday += 7
		if $sysyday <= $playerday
			$ReqAwardID = 30
			BC("chat","player",-1,"You have opened a Noble's gift. Good luck!")
			ReqAward( -1 , $ReqAwardID , 1 )
		else
			$ReqAwardID = 5
			BC("chat","player",-1,"You have opened a Noble's gift. Good luck!")
			ReqAward( -1 , $ReqAwardID , 1 )
		endif
		
	}
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013-3-14
	//		Author:??
	//		TaskName:
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
		$num = GetPlayerInfo(-1,"item",44407)
		if $num < 10
			BC("screen","player",-1,"It takes 10 Gold Keys to open the Invitation. You can get them from Utility in the Marketplace!")
			return
		endif	
		$itemid = 44757
		$n = GetPlayerVar(-1,362)
		if $n == 1
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
			BC( "screen", "player", -1, "Insufficient space in your bag. Please try again after clearing it out." )
			return
		endif		
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count1 < 1
			BC( "screen", "player", -1, "Insufficient material bag slots! Please try again after clearing." )
			return
		endif
		SubPlayerInfo(-1,"item",44407,10)	
		SubPlayerInfo(-1,"item",$itemid,1)
		AddPlayerInfo(-1,"item",44606,1)
		AddPlayerInfo(-1,"item",59840,1)
		AddPlayerInfo(-1,"item",9,20)
		AddPlayerInfo(-1,"item",2221,10)
		SetPlayerVar(-1,362,1)
	}
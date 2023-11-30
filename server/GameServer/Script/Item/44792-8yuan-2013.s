	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8/24
	//		Author:???
	//		TaskName:
	//		TaskID:
	//
	//****************************************
//44792	??????

	function OnUseItem(){
		
		$playerid = GetPlayerID
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 4
			BC( "screen", "player", -1, "You have less than 4 open bag slots." )
			return
		endif
		
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count1 < 1
			BC( "screen", "player", -1, "You do not have enough bag space." )
			return
		endif

		$getplayervar = GetPlayerVar(-1,394)
		if $getplayervar == 0
			AddPlayerInfo(-1,"item",54302,1)
			SetPlayerVar(-1,394,1)
			BC("chat","player",-1,"It's your first time opening the Anniversary Large Pack. You've received the Anniversary Carnival card!")
			BC("dialogbox","player",-1,"It's your first time opening the Anniversary Large Pack. You've received the Anniversary Carnival card!")
		endif
		
		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
		
		if $del_count == 0
//???????+7???	4	44378
//??????	2	5
//44793	?????
			AddPlayerInfo($playerid,"item",44378,4)
			AddPlayerInfo($playerid,"item",5,2)
			AddPlayerInfo($playerid,"item",44793,1)
		endif

		
	}

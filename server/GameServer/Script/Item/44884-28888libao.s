	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/09
	//		Author:??
	//		TaskName:44884-28888libao.s
	//		TaskID:28888????
	//
	//****************************************
	
	function OnUseItem(){	
		//???????id
		$only = 405
		if $only == 1
			return
		endif
		//????id
		$del_item = 44884
		//????id?num
		$add_id1 = 9
		$add_num1 = 100
		$add_id2 = 59840
		$add_num2 = 3
//		$add_id3 = 44379
//		$add_num3 = 1
//		$add_id4 = 44381
//		$add_num4 = 1
		
		//????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif	
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough bag space." )
			return
		endif		
		//????id
		$result = SubPlayerInfo(-1,"item",$del_item,1)
		if $result == 0
			AddPlayerInfo(-1,"item",$add_id1,$add_num1)
			AddPlayerInfo(-1,"item",$add_id2,$add_num2)
//			AddPlayerInfo(-1,"item",$add_id3,$add_num3)
//			AddPlayerInfo(-1,"item",$add_id4,$add_num4)
			SetPlayerVar(-1,$only,1)
		endif
//		BC( "screen", "player", -1, "GUID:05723000002" )
	}
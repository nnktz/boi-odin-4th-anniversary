	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/5/7
	//		Author:	??
	//		TaskName:ITEM-Star-59339.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
	  
	  $a = GetPlayerInfo( -1 , "prestige" , 9 )
		if $a < 8000
			BC( "screen", "player", -1, "Your Expedition Reputation has increased.",$a," Activation available at 8000 points" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 5
			BC( "screen", "player", -1, "You need at least 5 empty Bag slots." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 59339, 1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 53001, 1 )
		AddPlayerInfo( -1, "item", 53010, 1 )
		AddPlayerInfo( -1, "item", 53013, 1 )
		AddPlayerInfo( -1, "item", 53385, 1 )
		AddPlayerInfo( -1, "item", 2441, 10 )
		
	}

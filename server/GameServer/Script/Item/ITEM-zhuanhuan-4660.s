	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/06/22
	//		Author:??
	//		TaskName:ITEM-zhuanhuan-4660.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		//???????ID
		$old = 4660
		//???????ID
		$new = 4674
		
		//???????????		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		if $bag_count < 1
			BC( "screen", "player", -1, "Sorry! Your material bag is full!" )
			return
		endif

		//??????????
		$old_count = GetPlayerInfo( -1, "item", $old )
		
		//??????200,??????200?,??????
		if $old_count > 200
			$del_count = 200
		else
			$del_count = $old_count
		endif
			
		//?????
		$del_result = SubPlayerInfo( -1, "item", $old, $del_count )
		//????????
		if $del_result == 0
			//?????????????
			$add_result = AddPlayerInfo( -1, "item", $new, $del_count )
		endif
	}
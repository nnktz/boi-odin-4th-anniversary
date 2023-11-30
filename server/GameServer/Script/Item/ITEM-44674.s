	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/10/09
	//		Author：王雨
	//		TaskName：Item-44674.s
	//		TaskID：学富五车
	//
	//****************************************
	
	function OnUseItem(){	
		$titleid = 100
		$itemid = 44674	
		$Item = GetPlayerInfo( -1, "item", $itemid )
		if $Item < 1
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $itemid, 1 )
		if $SubItem != 0
			return
		endif
		
		AddTitle( -1, $titleid )
		
	}
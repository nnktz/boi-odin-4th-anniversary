	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2012/10/09
	//		Author£ºÍõÓê
	//		TaskName£ºItem-44675.s
	//		TaskID£º»Æ½ð½Ç¶·Ê¿
	//
	//****************************************
	
	function OnUseItem(){	
		$titleid = 101
		$itemid = 44675	
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
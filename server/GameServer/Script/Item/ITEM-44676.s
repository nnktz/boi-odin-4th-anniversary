	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/10/09
	//		Author£∫Õı”Í
	//		TaskName£∫Item-44676.s
	//		TaskID£∫∞Ÿ §Ω«∂∑ ø
	//
	//****************************************
	
	function OnUseItem(){	
		$titleid = 102
		$itemid = 44676	
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
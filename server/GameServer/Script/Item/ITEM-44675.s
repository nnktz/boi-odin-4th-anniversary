	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/10/09
	//		Author������
	//		TaskName��Item-44675.s
	//		TaskID���ƽ�Ƕ�ʿ
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
	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/07/09
	//		Author�������
	//		TaskName��XLY-ITEM-63438.s
	//		TaskID���ͷ����˿�(��ɫ)
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 63438 )
		if $item1 < 1
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 63438, 1 )
		if $SubItem1 != 0
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		$level = $level * 225
		AddPlayerInfo( -1, "exp", $level )
		return
		
	}
	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/03/09
	//		Author�������
	//		TaskName��HG-ITEM-59923.s
	//		TaskID����ʥ������
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 59923 )		
		if $item1 < 1
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 59923, 1 )
		if $SubItem1 != 0
			return
		endif
		
		FillInSangreal( -1, 3000000 )
		return
	}
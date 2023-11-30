	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/06/27
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫
	//		TaskID£∫ITEM-12880.s
	//
	//****************************************
	

	
	function OnUseItem(){
		
		$a = GetPlayerInfo(-1,"item",12880)
		if $a < 1
			return
		endif
		
		$result = SubPlayerInfo(-1,"item",12880,1)
		if $result == 0
			AddPlayerInfo(-1,"exp",100000)
			return
		endif
		
	}
			
		
		
		
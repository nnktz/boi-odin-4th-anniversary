	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/03/12
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44722.s
	//
	//****************************************
	

	
	function OnUseItem(){
		
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$result = SubPlayerInfo(-1,"item",44722,1)
		if $result == 0
			$roll = RandomNumber(0,100)
			if $roll < 40
				$result = AddPlayerInfo(-1,"item",44723,1)
				if $result == 0
					BC("screen","player",-1,"I was cheated! This map is a fake!")
					return
				endif
			else		
			$n = RandomNumber(1,20)
			$item = 44723
			$tu = $n + $item
			$result = AddPlayerInfo(-1,"item",$tu,1)
				if $result == 0
					BC("screen","player",-1,"You acquired a Treasure Map.")
				endif
			endif
		endif
			
		

		
	}
			
		
		
		
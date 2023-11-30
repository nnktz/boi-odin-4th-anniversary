	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/09
	//		Author:??
	//		TaskName:44880-13.s
	//		TaskID:???????+13
	//
	//****************************************
	
	function OnUseItem(){	
		//??id
		$juanzhou = 44880
		//??????
		$shuijing = 300
		//????id
		$chuizi = 2343
		//????
		$juanzhounum = GetPlayerInfo( -1, "item", $juanzhou )
		$shuijingnum1 = GetPlayerInfo( -1, "item", 9 )
		$shuijingnum2 = GetPlayerInfo( -1, "item", 5 )
		$shuijingnum3 = GetPlayerInfo( -1, "item", 2 )
		$shuijingnum4 = GetPlayerInfo( -1, "item", 10 )
		$shuijingnum = $shuijingnum1 + $shuijingnum2
		$shuijingnum = $shuijingnum + $shuijingnum3
		$shuijingnum = $shuijingnum + $shuijingnum4
		if $juanzhounum < 1
			BC( "screen", "player", -1, "You don't have Hephaestus Godforce+13 of this level!" )
			return			
		endif
		if $shuijingnum < $shuijing
			BC( "screen", "player", -1, "You don't have enough Major Fortify Crystals in your bag!" )
			return			
		endif
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		//?????
		$result = SubPlayerInfo( -1, "item", $juanzhou, 1 )
		BC( "screen", "player", -1, "Successfully removed scroll!" )
		if $result == 0
			//??1
			if $shuijingnum1 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 9, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 9, $shuijingnum1 )
				if $result == 0
					$shuijing = $shuijing - $shuijingnum1
				endif				
			endif
			//shuijing2
			if $shuijingnum2 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 5, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 5, $shuijingnum2 )
				if $result == 0
					$shuijing = $shuijing - $shuijingnum2
				endif				
			endif
			//shuijing3
			if $shuijingnum3 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 2, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 2, $shuijingnum3 )
				if $result == 0
					$shuijing = $shuijing - $shuijingnum3
				endif				
			endif
			//shuijing4
			if $shuijingnum4 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 10, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 10, $shuijingnum4 )
				if $result == 0
					$shuijing = $shuijing - $shuijingnum4
				endif				
			endif
			//??????????
			if $shuijing == 0
				AddPlayerInfo( -1, "item", $chuizi, 1 )
			endif
		endif
	}
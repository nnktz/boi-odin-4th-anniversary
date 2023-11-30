	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/01
	//		Author:??(QXK???)
	//		TaskName:ITEM-huanwupin64247.s
	//		TaskID:??????????????????
	//
	//****************************************
	
	function OnUseItem(){
	
		//????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		//??1?????
		$count = GetPlayerInfo( -1, "item", 59081 )
		if 	$count < 1
			BC( "screen", "player", -1, "No LV4 gem bag!" )
			return
		endif
		
		//??????
			$revalue = SubPlayerInfo( -1, "item", 59081, 1)
			if $revalu == 0
				$n = RandomNumber ( 1, 18 )
				if $n == 15
					$n = RandomNumber ( 1, 18 )
				endif
				$item_number = 0
				if $n == 1
				$item_number = 5977
					//BC( "messagebox", "player", -1, "GUID:06373000002" )
				endif
				if $n == 2
				$item_number = 5978
					//BC( "messagebox", "player", -1, "GUID:06373000003" )
				endif
				if $n == 3
				$item_number = 5979
					//BC( "messagebox", "player", -1, "GUID:06373000004" )
				endif
				if $n == 4
				$item_number = 5980
					//BC( "messagebox", "player", -1, "GUID:06373000005" )
				endif
				if $n == 5
				$item_number = 5981
					//BC( "messagebox", "player", -1, "GUID:06373000006" )
				endif
				if $n == 6
				$item_number = 5982
					//BC( "messagebox", "player", -1, "GUID:06373000007" )
				endif
				if $n == 7
				$item_number = 5983
					//BC( "messagebox", "player", -1, "GUID:06373000008" )
				endif
				if $n == 8
				$item_number = 5984
					//BC( "messagebox", "player", -1, "GUID:06373000009" )
				endif
				if $n == 9
				$item_number = 5985
					//BC( "messagebox", "player", -1, "GUID:06373000010" )
				endif
				if $n == 10
				$item_number = 5986
					//BC( "messagebox", "player", -1, "GUID:06373000011" )
				endif
				if $n == 11
				$item_number = 5987
					//BC( "messagebox", "player", -1, "GUID:06373000012" )
				endif
				if $n == 12
				$item_number = 5988
					//BC( "messagebox", "player", -1, "GUID:06373000013" )
				endif
				if $n == 13
				$item_number = 5989
					//BC( "messagebox", "player", -1, "GUID:06373000014" )
				endif
				if $n == 14
				$item_number = 5990
					//BC( "messagebox", "player", -1, "GUID:06373000015" )
				endif
				if $n == 15
				$item_number = 5991
					//BC( "messagebox", "player", -1, "GUID:06373000016" )
				endif
				if $n == 16
				$item_number = 5992
					//BC( "messagebox", "player", -1, "GUID:06373000017" )
				endif
				if $n == 17
				$item_number = 5993
					//BC( "messagebox", "player", -1, "GUID:06373000018" )
				endif
				if $n == 18
				$item_number = 5994
					//BC( "messagebox", "player", -1, "GUID:06373000019" )
				endif
				if $item_number == 0 
					return
				endif
				AddPlayerInfo( -1, "item", $item_number, 1 )
			endif
	}
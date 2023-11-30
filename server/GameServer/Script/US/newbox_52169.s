	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/22
	//		Author:	??
	//		TaskName:blessing_of_hades_52106.s
	//		TaskID:newbox
	//
	//****************************************

	function OnUseItem(){

		#name = GetPlayerInfo(-1 , "name")

		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )

		$nullitem2 = GetPlayerInfo( -1, "nullitem", 1 )

		//??????????
		if $nullitem < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

		//????????????
		if $nullitem2 < 1
			BC( "screen", "player", -1, "You don't have enough room in your materials bag!" )
			return
		endif

		//???????
		$del = SubPlayerInfo( -1, "item", 52169, 1 )



		//??????????
		if $del == 0

			$no = RandomNumber(1, 1000)

			if $no <= 300
				AddPlayerInfo( -1, "item", 5, 2 )
				return
			endif
			if $no <= 450
				AddPlayerInfo( -1, "item", 63789, 1 )
				return
			endif
			if $no <= 550
				AddPlayerInfo( -1, "item", 60031, 10 )
				return
			endif
			if $no <= 650
				AddPlayerInfo( -1, "item", 60032, 3 )
				return
			endif
			if $no <= 800
				AddPlayerInfo( -1, "item", 44613, 2 )
				return
			endif
			if $no <= 950
				AddPlayerInfo( -1, "item", 59812, 1 )
				return
			endif
			if $no <= 975
				AddPlayerInfo( -1, "item", 64247, 1 )
				return
			endif
			if $no <= 985
				AddPlayerInfo( -1, "item", 18, 1 )
				return
			endif
			if $no <= 989
				AddPlayerInfo( -1, "item", 2135, 1 )
				return
			endif
			if $no <= 991
				AddPlayerInfo( -1, "item", 62617, 1 )
				BC("screen", "servergroup", -1, "Player: ",#name,"You opened the box and luckily got Chaos Arbiter Egg." )
				BC("chat", "servergroup", -1, "Player: ",#name,"You opened the box and luckily got Chaos Arbiter Egg." )
				return
			endif
			if $no <= 993
				AddPlayerInfo( -1, "item", 5564, 1 )
				BC("screen", "servergroup", -1, "Player: ",#name,"You opened the box and luckily got Charmstone LV4." )
				BC("chat", "servergroup", -1, "Player: ",#name,"You opened the box and luckily got Charmstone LV4." )
				return
			endif
			if $no <= 995
				AddPlayerInfo( -1, "item", 5384, 1 )
				BC("screen", "servergroup", -1, "Player: ",#name,"You opened the box and luckily got Gem of Hel LV4." )
				BC("chat", "servergroup", -1, "Player: ",#name,"You opened the box and luckily got Gem of Hel LV4." )
				return
			endif
			if $no <= 996
				AddPlayerInfo( -1, "item", 60722, 1 )
				BC("screen", "servergroup", -1, "Player: ",#name,"You opened the box and luckily got Aether Wrath." )
				BC("chat", "servergroup", -1, "Player: ",#name,"You opened the box and luckily got Aether Wrath." )
				return
			endif
			if $no <= 997
				AddPlayerInfo( -1, "item", 64181, 1 )
				BC("screen", "servergroup", -1, "Player: ",#name,"You opened the box and luckily got Pet Skill Removal Charm." )
				BC("chat", "servergroup", -1, "Player: ",#name,"You opened the box and luckily got Pet Skill Removal Charm." )
				return
			endif
			if $no <= 998
				AddPlayerInfo( -1, "item", 60099, 1 )
				BC("screen", "servergroup", -1, "Player: ",#name,"You opened the box and luckily got LV13 Chalice Coupon." )
				BC("chat", "servergroup", -1, "Player: ",#name,"You opened the box and luckily got LV13 Chalice Coupon." )
				return
			endif
			if $no <= 999
				AddPlayerInfo( -1, "item", 44084, 1 )
				BC("screen", "servergroup", -1, "Player: ",#name,"You opened the box and luckily got Dimensional Core." )
				BC("chat", "servergroup", -1, "Player: ",#name,"You opened the box and luckily got Dimensional Core." )
				return
			endif
			if $no <= 1000
				AddPlayerInfo( -1, "item", 44467, 1 )
				BC("screen", "servergroup", -1, "Player: ",#name,"You opened the box and luckily got Holy Fortification Fragment." )
				BC("chat", "servergroup", -1, "Player: ",#name,"You opened the box and luckily got Holy Fortification Fragment." )
				return
			endif


		endif

	}

	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/27
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44943.s
	//
	//****************************************
	

	
	function OnUseItem(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		if $bag_count2 < 2
			BC( "screen", "player", -1, "You do not have enough bag space." )
			return
		endif
		
		#name = GetPlayerInfo(-1,"name")
		$sui = RandomNumber(1,10000)
		if $sui == 10000
			AddPlayerInfo(-1,"item",54311,1)
			BC("scrollbar","servergroup",-1,"Player",#name,"used an unremarkable item and acquired Leo Gold Card.")
			return
		endif
		
		if $sui > 9997
			if $sui < 10000
				AddPlayerInfo(-1,"item",59310,1)
				BC("scrollbar","servergroup",-1,"Player",#name,"used an unremarkable item and acquired a LV5 Gem Chest.")
				return
			endif
		endif
		
		if $sui > 9945
			if $sui < 9998
				AddPlayerInfo(-1,"item",59839,1)
				BC("screen","player",-1,"You used an unremarkable item and acquired a LV3 Gem Coin.")
				return
			endif
		endif
		
		if $sui < 9946
			if $sui > 9924
				AddPlayerInfo(-1,"item",54312,1)
				BC("screen","player",-1,"You used an unremarkable item and acquired Leo Silver Card.")
				return
			endif
		endif
		
		if $sui < 9925
			if $sui > 9825
				AddPlayerInfo(-1,"item",54311,1)
				BC("screen","player",-1,"You used an unremarkable item and acquired Leo Card.")
				return
			endif
		endif
		
		if $sui < 9826
			if $sui > 9626
				AddPlayerInfo(-1,"item",59080,1)
				BC("screen","player",-1,"You used an unremarkable item and acquired a LV2 Gem Chest.")
				return
			endif
		endif
		
		if $sui < 9627
			if $sui > 9129
				AddPlayerInfo(-1,"item",9,5)
				BC("screen","player",-1,"You used an unremarkable item and acquired five LV5 Major Fortify Crystals.")
				return
			endif
		endif
		
		if $sui < 9130
			if $sui > 8501
				AddPlayerInfo(-1,"item",64244,5)
				BC("screen","player",-1,"You used an unremarkable item and acquired five LV1 Gem Chests.")
				return
			endif
		endif
		
		if $sui < 8502
			if $sui > 7002
				AddPlayerInfo(-1,"item",9,2)
				BC("screen","player",-1,"You used an unremarkable item and acquired two LV5 Major Fortify Crystals.")
				return
			endif
		endif
		
		if $sui < 7003
			if $sui > 5003
				AddPlayerInfo(-1,"item",64244,2)
				BC("screen","player",-1,"You used an unremarkable item and acquired two LV1 Gem Chests.")
				return
			endif
		endif
		
		if $sui < 5004
			if $sui > 2504
				AddPlayerInfo(-1,"item",9,1)
				BC("screen","player",-1,"You used an unremarkable item and acquired a Major Fortify Crystal.")
				return
			endif
		endif
		
		if $sui < 2505
			AddPlayerInfo(-1,"item",2221,1)
			BC("screen","player",-1,"You used an unremarkable item and acquired a Fortify Charm.")
			return
		endif
		
		BC("screen","player",-1,"It seems nothing happens!")
		
		
	}
			
		
		
		
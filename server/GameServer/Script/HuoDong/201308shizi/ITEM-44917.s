	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/27
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44917.s
	//
	//****************************************
	
	//4216 ?????????
	//186 ????,?????????
	
	function OnUseItem(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$map = GetPlayerInfo(-1,"mapid")
		if $map != 86
			BC("screen","player",-1,"The cornucopia appears somewhere in the Sea of Atlantis. It promises to contain an unbelievable secret!")
			return
		endif
				
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		if $map == 86
			if $x > 136
				if $x < 140
					if $y > 242
						if $y < 246
							$resule = SubPlayerInfo(-1,"item",44917,1)
							if $resule == 0								
								DropMonsterItems(-1,90326)
								$quanfu = GetGlobalVar(186)
								$quanfu = $quanfu + 1
								SetGlobalVar(186,$quanfu)
								#name = GetPlayerInfo(-1,"name")
								if $quanfu == 500
									BC("scrollbar","servergroup",-1,"Player",#name," becomes the 500th lucky player to use the cornucopia. The reward is Leo Conscious.")
									BC("dialogbox","player",-1,"You become the 500th lucky player to use the cornucopia. The reward is Leo Conscious.")
									DropMonsterItems(-1,90321)
									return
								endif
								if $quanfu == 1000
									BC("scrollbar","servergroup",-1,"Player",#name,"becomes the 1000th lucky player to use the cornucopia. The reward is Leo's Pride.")
									BC("dialogbox","player",-1,"You become the 1000th lucky player to use the cornucopia. The reward is Leo's Pride.")
									DropMonsterItems(-1,90322)
									return
								endif
								if $quanfu == 1500
									BC("scrollbar","servergroup",-1,"Player",#name,"becomes the 1500th lucky player to use the cornucopia. The reward is an Ancient Pet Egg.")
									BC("dialogbox","player",-1,"You become the 1500th lucky player to use the cornucopia. The reward is an Ancient Pet Egg.")
									DropMonsterItems(-1,90323)
									return
								endif
								if $quanfu == 2000
									BC("scrollbar","servergroup",-1,"Player",#name,"becomes the 2000th lucky player to use the cornucopia. The reward is a LV5 Gem Chest.")
									BC("dialogbox","player",-1,"You become the 2000th lucky player to use the cornucopia. The reward is a LV5 Gem Chest.")
									DropMonsterItems(-1,90324)
									return
								endif
								if $quanfu == 2500
									BC("scrollbar","servergroup",-1,"Player",#name,"becomes the 2500th lucky player to use the cornucopia. The reward is Leo Gold Card.")
									BC("dialogbox","player",-1,"You become the 2500th lucky player to use the cornucopia. The reward is Leo Gold Card.")
									DropMonsterItems(-1,90325)
									return
								endif
								if $quanfu == 3000
									BC("scrollbar","servergroup",-1,"Player",#name,"becomes the 3000th lucky player to use the cornucopia. The reward is Leo's Pride.")
									BC("dialogbox","player",-1,"You become the 3000th lucky player to use the cornucopia. The reward is Leo's Pride.")
									DropMonsterItems(-1,90322)
									return
								endif
								if $quanfu == 3500
									BC("scrollbar","servergroup",-1,"Player",#name,"becomes the 3500th lucky player to use the cornucopia. The reward is an Ancient Pet Egg.")
									BC("dialogbox","player",-1,"You become the 3500th lucky player to use the cornucopia. The reward is Ancient Pet Egg.")
									DropMonsterItems(-1,90323)
									return
								endif
								if $quanfu == 4000
									BC("scrollbar","servergroup",-1,"Player",#name,"becomes the 4000th lucky player to use the cornucopia. The reward is Leo Gold Card.")
									BC("dialogbox","player",-1,"You become the 4000th lucky player to use the cornucopia. The reward is Leo Gold Card.")
									DropMonsterItems(-1,90325)
									return
								endif
								if $quanfu == 4500
									BC("scrollbar","servergroup",-1,"Player",#name,"becomes the 4500th lucky player to use the cornucopia. The reward is a LV5 Gem Chest.")
									BC("dialogbox","player",-1,"You become the 4500th The player, to use the cornucopia. The reward is a LV5 Gem Chest.")
									DropMonsterItems(-1,90324)
									return
								endif
								if $quanfu == 5000
									BC("scrollbar","servergroup",-1,"Player",#name,"becomes the 5000th lucky player to use the cornucopia. The reward is Leo Gold Card.")
									BC("dialogbox","player",-1,"You become the 5000th lucky player to use the cornucopia. The reward is Leo Gold Card.")
									DropMonsterItems(-1,90325)
									return
								endif
							endif
						else
							BC("screen","player",-1,"The cornucopia appears at (138, 244) in Sea of Atlantis. It promises to contain an unbelievable secret!")
						endif
					else
						BC("screen","player",-1,"The cornucopia appears at (138, 244) in Sea of Atlantis. It promises to contain an unbelievable secret!")
					endif
				else
					BC("screen","player",-1,"The cornucopia appears at (138, 244) in Sea of Atlantis. It promises to contain an unbelievable secret!")
				endif
			else
				BC("screen","player",-1,"The cornucopia appears at (138, 244) in Sea of Atlantis. It promises to contain an unbelievable secret!")
			endif
		endif
		
	}
			
		
		
		
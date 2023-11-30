	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/03/12
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44922.s
	//
	//****************************************
	
	//?????????
	//??ID:3
	//??:206,243??

	
	function OnUseItem(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$map = GetPlayerInfo(-1,"mapid")
		if $map != 3
			BC("screen","player",-1,"The Cornucopia shows somewhere in Aegean North hides unbelievable treasure!")
			return
		endif
		
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		if $map == 3
			if $x > 204
				if $x < 208
					if $y > 241
						if $y < 245
							$resule = SubPlayerInfo(-1,"item",44922,1)
							if $resule == 0
								DropMonsterItems(-1,90326)
								$quanfu = GetGlobalVar(186)
								$quanfu = $quanfu + 1
								SetGlobalVar(186,$quanfu)
								#name = GetPlayerInfo(-1,"name")
								if $quanfu == 500
									BC("scrollbar","servergroup",-1,"Player",#name,"is the 500th lucky dog to open the Cornucopia and is rewarded a Leo Conscious.")
									BC("dialogbox","player",-1,"You are the 500th lucky player to open the Cornucopia. You are rewarded a Leo Conscious.")
									DropMonsterItems(-1,90321)
									return
								endif
								if $quanfu == 1000
									BC("scrollbar","servergroup",-1,"Player",#name,"is the 1000th lucky dog to open the Cornucopia and is rewarded a Leo's Pride.")
									BC("dialogbox","player",-1,"You are the 1000th lucky player to open the Cornucopia. You are rewarded a Leo's Pride.")
									DropMonsterItems(-1,90322)
									return
								endif
								if $quanfu == 1500
									BC("scrollbar","servergroup",-1,"Player",#name,"is the 1500th lucky dog to open the Cornucopia and is rewarded an Ancient Pet Egg.")
									BC("dialogbox","player",-1,"You are the 1500th lucky player to open the Cornucopia. You are rewarded an Ancient Pet Egg.")
									DropMonsterItems(-1,90323)
									return
								endif
								if $quanfu == 2000
									BC("scrollbar","servergroup",-1,"Player",#name,"You are the lucky 2000th person to open this Cornucopia. You win a LV5 Gem Chest.")
									BC("dialogbox","player",-1,"You are the 2000th lucky player to open the Cornucopia. You are rewarded a LV5 Gem Chest.")
									DropMonsterItems(-1,90324)
									return
								endif
								if $quanfu == 2500
									BC("scrollbar","servergroup",-1,"Player",#name,"is the 2500th lucky dog to open the Cornucopia and is rewarded a Leo Gold Card.")
									BC("dialogbox","player",-1,"You are the 2500th lucky player to open the Cornucopia. You are rewarded a Leo Gold Card.")
									DropMonsterItems(-1,90325)
									return
								endif
								if $quanfu == 3000
									BC("scrollbar","servergroup",-1,"Player",#name,"You are the lucky 3000th person to open this Cornucopia. You win a Leo's Pride.")
									BC("dialogbox","player",-1,"You are the 3000th lucky player to open the Cornucopia. You are rewarded a Leo's Pride.")
									DropMonsterItems(-1,90322)
									return
								endif
								if $quanfu == 3500
									BC("scrollbar","servergroup",-1,"Player",#name,"You are the 3500th lucky player to open the Cornucopia. You are rewarded a [Zodiac Pet] Leo.")
									BC("dialogbox","player",-1,"You are the 3500th lucky player to open the Cornucopia. You are rewarded a [Zodiac Pet] Leo.")
									DropMonsterItems(-1,90323)
									return
								endif
								if $quanfu == 4000
									BC("scrollbar","servergroup",-1,"Player",#name,"You are the 4000th lucky player to open the Cornucopia. You are rewarded a Leo Gold Card.")
									BC("dialogbox","player",-1,"You are the 4000th lucky player to open the Cornucopia. You are rewarded a Leo Gold Card.")
									DropMonsterItems(-1,90325)
									return
								endif
								if $quanfu == 4500
									BC("scrollbar","servergroup",-1,"Player",#name,"You are the lucky 4500th person to open this Cornucopia. You win a LV5 Gem Chest.")
									BC("dialogbox","player",-1,"You are the 4500th lucky player to open the Cornucopia. You are rewarded a LV5 Gem Chest.")
									DropMonsterItems(-1,90324)
									return
								endif
								if $quanfu == 5000
									BC("scrollbar","servergroup",-1,"Player",#name,"You are the 5000th lucky player to open the Cornucopia. You are rewarded a Leo Gold Card.")
									BC("dialogbox","player",-1,"You are the 5000th lucky player to open the Cornucopia. You are rewarded a Leo Gold Card.")
									DropMonsterItems(-1,90325)
									return
								endif
							endif
						else
							BC("screen","player",-1,"The Cornucopia shows Aegean North (206, 243) hides unbelievable treasure!")
						endif
					else
						BC("screen","player",-1,"The Cornucopia shows Aegean North (206, 243) hides unbelievable treasure!")
					endif
				else
					BC("screen","player",-1,"The Cornucopia shows Aegean North (206, 243) hides unbelievable treasure!")
				endif
			else
				BC("screen","player",-1,"The Cornucopia shows Aegean North (206, 243) hides unbelievable treasure!")
			endif
		endif
		
		
		
	}
			
		
		
		
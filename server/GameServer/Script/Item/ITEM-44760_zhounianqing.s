	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013-3-20
	//		Author:??
	//		TaskName:
	//		TaskID:44760 ????
	//
	//****************************************
	//44760 ????
	//44759 ???
	
	function OnUseItem(){
		$yday = GetSystemTime("yday")
		$playerid = GetPlayerID
		$xuyuanfu = GetPlayerInfo(-1,"item",44759)
		if $xuyuanfu < 1
			BC("screen","player",-1,"It needs a Anniversary Wish Charm. It can be obtained from General Merchants or by Remote Sell!")
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count1 < 1
			BC( "screen", "player", -1, "You do not have enough bag space." )
			return
		endif
		$del_xuyuanfu = SubPlayerInfo(-1,"item",44759,1)
		if $del_xuyuanfu != 0
			return
		endif
		//????
		$del_count = SubPlayerInfo( -1, "item", 44760, 1 )
		//??????????
		
		if $del_count == 0
//tttttttttttttttttttttttttttttttttttttttttttttttt----------??????
			$randombuff = RandomNumber(1,10000)
			$giftbuffpre = 0
			//??:$giftbuffpre??????????0??,???????????????
			//??:$giftbuff??????,??????????,????
			
			//9	??????	1	6000
			$giftbuff = $giftbuffpre + 6000
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",9,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//2221	?????	1	1000
			$giftbuff = $giftbuffpre + 1000
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",2221,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//59774	???	1	1400
			$giftbuff = $giftbuffpre + 1400
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",59774,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//2141	2??????	1	1340
			$giftbuff = $giftbuffpre + 1340
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					AddPlayerInfo($playerid,"item",2141,1)
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//2147	3??????	1	200
			$giftbuff = $giftbuffpre + 200
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					#name = GetPlayerInfo(-1 , "name")
					AddPlayerInfo($playerid,"item",2147,1)
					BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")
					BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")
				endif
			endif
			$giftbuffpre = $giftbuff
			
			////64508	?????	1	50
			$giftbuff = $giftbuffpre + 50
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					#name = GetPlayerInfo(-1 , "name")
					$time = GetGlobalVar(125)
					$limit = GetGlobalVar(126)
					if $time == $yday
						if $limit < 10
							AddPlayerInfo($playerid,"item",64508,1)
							BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV4 Gem Chest.")
							BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV4 Gem Chest.")
							$limit = $limit + 1
							SetGlobalVar(126,$limit)
						else
							#name = GetPlayerInfo(-1 , "name")
							AddPlayerInfo($playerid,"item",2147,1)
							BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")
							BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")									
						endif
					else
							AddPlayerInfo($playerid,"item",64508,1)
							BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV4 Gem Chest.")
							BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV4 Gem Chest.")
							$limit = $limit + 1
							SetGlobalVar(126,1)		
							SetGlobalVar(125,$yday)			
					endif
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//64248	?????	1	3
			$giftbuff = $giftbuffpre + 3
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					#name = GetPlayerInfo(-1 , "name")
					$time = GetGlobalVar(125)
					$limit = GetGlobalVar(126)
					if $time == $yday
						if $limit < 10
							AddPlayerInfo($playerid,"item",64248,1)
							BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV5 Gem Chest.")
							BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV5 Gem Chest.")
							$limit = $limit + 1
							SetGlobalVar(126,$limit)
						else
							#name = GetPlayerInfo(-1 , "name")
							AddPlayerInfo($playerid,"item",2147,1)
							BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")
							BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")									
						endif
					else
							AddPlayerInfo($playerid,"item",64248,1)
							BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV5 Gem Chest.")
							BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV5 Gem Chest.")
							$limit = $limit + 1
							SetGlobalVar(126,1)		
							SetGlobalVar(125,$yday)			
					endif
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//62573	???????????	1	1
			$giftbuff = $giftbuffpre + 1
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					$time = GetGlobalVar(127)
					if $time == $yday
						#name = GetPlayerInfo(-1 , "name")
						AddPlayerInfo($playerid,"item",2147,1)
						BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")
						BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")						
					else
						#name = GetPlayerInfo(-1 , "name")
						AddPlayerInfo($playerid,"item",62573,1)
						BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a Violet Flame Tiger.")
						BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a Violet Flame Tiger.")
						SetGlobalVar(127,$yday)
					endif
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//62577	???????????	1	1
			$giftbuff = $giftbuffpre + 1
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					$time = GetGlobalVar(127)
					if $time == $yday
						#name = GetPlayerInfo(-1 , "name")
						AddPlayerInfo($playerid,"item",2147,1)
						BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")
						BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")						
					else
						#name = GetPlayerInfo(-1 , "name")
						AddPlayerInfo($playerid,"item",62577,1)
						BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a Ninetail Fox.")
						BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a Ninetail Fox.")
						SetGlobalVar(127,$yday)
					endif
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//62585	????????????	1	1
			$giftbuff = $giftbuffpre + 1
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					$time = GetGlobalVar(127)
					if $time == $yday
						#name = GetPlayerInfo(-1 , "name")
						AddPlayerInfo($playerid,"item",2147,1)
						BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")
						BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")						
					else
						#name = GetPlayerInfo(-1 , "name")
						AddPlayerInfo($playerid,"item",62585,1)
						BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a Flame Shura.")
						BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a Flame Shura.")
						SetGlobalVar(127,$yday)
					endif
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//62603	????????????	1	1
			$giftbuff = $giftbuffpre + 1
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					$time = GetGlobalVar(127)
					if $time == $yday
						#name = GetPlayerInfo(-1 , "name")
						AddPlayerInfo($playerid,"item",2147,1)
						BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")
						BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")						
					else
						#name = GetPlayerInfo(-1 , "name")
						AddPlayerInfo($playerid,"item",62603,1)
						BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a Tidal Spirit.")
						BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a Tidal Spirit.")
						SetGlobalVar(127,$yday)
					endif
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//62596	????????????	1	1
			$giftbuff = $giftbuffpre + 1
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					$time = GetGlobalVar(127)
					if $time == $yday
						#name = GetPlayerInfo(-1 , "name")
						AddPlayerInfo($playerid,"item",2147,1)
						BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")
						BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")						
					else
						#name = GetPlayerInfo(-1 , "name")
						AddPlayerInfo($playerid,"item",62596,1)
						BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a Golden Giant.")
						BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a Golden Giant.")
						SetGlobalVar(127,$yday)
					endif
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//62579	???????????	1	1
			$giftbuff = $giftbuffpre + 1
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					$time = GetGlobalVar(127)
					if $time == $yday
						#name = GetPlayerInfo(-1 , "name")
						AddPlayerInfo($playerid,"item",2147,1)
						BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")
						BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")						
					else
						#name = GetPlayerInfo(-1 , "name")
						AddPlayerInfo($playerid,"item",62579,1)
						BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got an Ocean Kirin.")
						BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got an Ocean Kirin.")
						SetGlobalVar(127,$yday)
					endif
				endif
				endif
			endif
			$giftbuffpre = $giftbuff
			
			//62575	????????????	1	1

			$giftbuff = $giftbuffpre + 1
			if $randombuff > $giftbuffpre
				if $randombuff <= $giftbuff
					$time = GetGlobalVar(127)
					if $time == $yday
						#name = GetPlayerInfo(-1 , "name")
						AddPlayerInfo($playerid,"item",2147,1)
						BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")
						BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a LV3 Gem Talisman.")						
					else
						#name = GetPlayerInfo(-1 , "name")
						AddPlayerInfo($playerid,"item",62575,1)
						BC("screen","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a Devil's Child.")
						BC("chat","servergroup",-1,"Player ",#name," made a wish with an Anniversary Star Wish Charm, and got a Devil's Child.")
						SetGlobalVar(127,$yday)
					endif
				endif
			endif
			$giftbuffpre = $giftbuff
//			BC("screen","player",-1,"giftbuff = ",$giftbuff)
			//tttttttttttttttttttttttttttttttttttttttttttttttt----------??????
		endif
		
	}

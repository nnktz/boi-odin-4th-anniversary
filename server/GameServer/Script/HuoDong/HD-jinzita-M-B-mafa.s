 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: ????? 
 //****************************  
	function OnDead(){
		
		//?????ID
		$team_head_id =	GetTeamHeaderID (-1)
		//???????
		#player_name = GetPlayerInfo( $team_head_id, "name" )
		//???BOSS??,??boss??2?
		//44	???-????	???? 577
		//45	???-????	???? 578
		//46	???-????	????? 579
		//47	???-????	??????? 580
		//48	???-????	????? 575
		//49	???-????	????? 576
		$varID = 48
		$map_id = 575
		#bossname = "Warden Farma"
		#placename = "Corridor of Death"
		$servervar = GetServerVar($varID)
		$ectypeid = GetCurEctypeID()
		
		if $servervar == 1
			SetServerVar($varID,2)
			$ectypeid = GetCurEctypeID()
			BC( "chat", "map", $ectypeid, "The hero ",#player_name," has led their party against ",#bossname,", weakening it greatly. Silver Chests have appeared nearby!" )
			BC( "screen", "map", $ectypeid, "The hero ",#player_name," has led their party against ",#bossname,", weakening it greatly. Golden Treasures have appeared nearby!" )
			//?????
			call getmapBOSSpos()
			AddMonsterByFloat($mon_box_B,1,$ectypeid,$mapX,$mapY,0,0,90)
			$mapXX = $mapX + 5
			$mapYY = $mapY + 5
			AddMonsterByFloat($mon_box_B,1,$ectypeid,$mapXX,$mapYY,0,0,90)
			$mapXX = $mapX - 5
			$mapYY = $mapY - 5
			AddMonsterByFloat($mon_box_B,1,$ectypeid,$mapXX,$mapYY,0,0,90)
			$mapXX = $mapX - 5
			$mapYY = $mapY + 5
			AddMonsterByFloat($mon_box_B,1,$ectypeid,$mapXX,$mapYY,0,0,90)
			$mapXX = $mapX + 5
			$mapYY = $mapY - 5
			AddMonsterByFloat($mon_box_B,1,$ectypeid,$mapXX,$mapYY,0,0,90)
			$mapXX = $mapX
			$mapYY = $mapY - 3
			$bossid = GetMonsterTemplateID(-1)
			AddMonsterByFloat($bossid,1,$ectypeid,$mapXX,$mapYY,0,0,90)
			return
		endif
		
		if $servervar == 2
			SetServerVar($varID,3)
			BC( "chat", "server", -1, "The hero ",#player_name," has led their party to defeat ",#bossname," in ",#placename,", releasing the seal!" )
			BC( "screen", "server", -1, "The hero ",#player_name," has led their party to defeat ",#bossname," in ",#placename,", releasing the seal!" )
			//?????------------
			call getmapBOSSpos()
			$ox = $mapX - 10
			$oy = $mapY - 9
			$a = 0
			$b = 0
			$random_a = RandomNumber(0,4)
			$random_b = RandomNumber(0,3)
			while $a < 5
				while $b < 4
					$posxadd = $a * 5
					$posyadd = $b * 6
					$posx = $ox + $posxadd
					$posy = $oy + $posyadd
					if $a == $random_a
						if $b == $random_b
							AddMonsterByFloat($mon_box_C,1,$ectypeid,$posx,$posy,0,0,90)
							BC("screen","map",$ectypeid,"Golden Treasures have appeared in in the central area!")
						else
							AddMonsterByFloat($mon_box_A,1,$ectypeid,$posx,$posy,0,0,90)
						endif
					else
						AddMonsterByFloat($mon_box_A,1,$ectypeid,$posx,$posy,0,0,90)
					endif
					$b += 1
				endwhile
				$a += 1
				$b = 0
			endwhile
			//?????------------
			return
		endif
		
		
	}	
	
	function getmapBOSSpos(){
		
		
//???-????	26623	577	64184	??????	10806	????
//11562	????ú???	????	11590	????ú???
//11563	????ú???	????		
		if $map_id == 577
			//boss?
			$mapX = 215
			$mapY = 218
			$mon_box_A = 11562
			$mon_box_B = 11563
			$mon_box_C = 11590
		endif
//???-????	26624	578	64185	??????	10816	????
//11564	????ú???	????	11591	????ú???
//11565	????ú???	????		
		if $map_id == 578
			//boss?
			$mapX = 97
			$mapY = 230
			$mon_box_A = 11564
			$mon_box_B = 11565
			$mon_box_C = 11591
		endif
//???-????	26625	579	64186	??????	10826	?????
//11566	????ú???	????	11592	????ú???
//11567	????ú???	????		
		if $map_id == 579
			//boss?
			$mapX = 229
			$mapY = 99
			$mon_box_A = 11566
			$mon_box_B = 11567
			$mon_box_C = 11592
		endif
//???-????	26626	580	64187	??????	10836	???????
//11568	????ú???	????	11593	????ú???
//11569	????ú???	????		
		if $map_id == 580
			//boss?
			$mapX = 114
			$mapY = 106
			$mon_box_A = 11568
			$mon_box_B = 11569
			$mon_box_C = 11593
		endif
//???-????	26625	575	64188	??????	11536	?????
//11570	????ú???	????	11594	????ú???
//11571	????ú???	????		
		if $map_id == 575
			//boss?
			$mapX = 156
			$mapY = 158
			$mon_box_A = 11570
			$mon_box_B = 11571
			$mon_box_C = 11594
		endif
//???-????	26626	576	64189	??????	11542	?????
//11572	????ú???	????	11595	????ú???
//11573	????ú???	????		
		if $map_id == 576
			//boss?
			$mapX = 163
			$mapY = 161
			$mon_box_A = 11572
			$mon_box_B = 11573
			$mon_box_C = 11595
		endif
		
	}
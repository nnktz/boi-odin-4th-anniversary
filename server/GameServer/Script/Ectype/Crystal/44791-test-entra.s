//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:??
	//		TaskID:
	//
	//****************************************
	function OnUseItem(){


		$playerid = GetPlayerID()
		$mapid = GetPlayerInfo(-1,"mapid")
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")
		$year = GetSystemTime("year")
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$week = GetSystemTime("week")
		$yday = GetSystemTime("yday")
		$yweek = GetNowWeek()
		$second = GetSystemTime("second")
		$level = GetPlayerInfo(-1,"level")
		$FLDlevel = GetFieldLevel($playerid)
		$ExpPT = GetPlayerInfo($playerid,"exp")
		$fExpPT = GetFieldLevel($playerid)
		$guildid = GetPlayerInfo($playerid,"guildid")
		$ectype_id = $mapid

		BC("chat","player",-1," - <time> - "," | ",$hour," : ",$minute," : ",$second," |")
		//BC("screen","player",-1,$year,"-",$month,"-",$mday," | ",$hour," : ",$minute," : ",$second," | week = ",$week," | yday = ",$yday," | yweek = ",$yweek)
		//BC("screen","player",-1,"mapid = ",$mapid," | playerid = ",$playerid," | guildid = ",$guildid)
		
		
		//---------------------------------------------------------??
		//$severid = 369
		// $var = GetServerVar($severid)
		// $var = $var + 499
		// SetServerVar($severid,$var)
	//	$revalue = ReleaseEctype( -1, 573 )
	//	if $revalue == 0
	//		BC( "screen", "team", $team_headerID, "GUID:04001000000" )
	//		BC( "dialogbox", "player", -1, "GUID:04001000001" )
	//	else
	//		BC( "dialogbox", "player", -1, "GUID:04001000002" )
	//	endif
		 $var = GetEctypeVar($ectype_id,0)    
		 	BC( "dialogbox", "player", -1, "0=",$var, )
		 $var = GetEctypeVar(-1, 1)
		 	BC( "dialogbox", "player", -1, "1=",$var, )
		 	StartEctypeTimer($ectype_id,0)
		 $ectype_ID = GetEctypeID(-1, 573)
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		 		$rand = 1
		 		$field = GetFieldLevel(-1)
				SetEctypeVar($ectype_ID,5,$level)
				if $field > 0
				SetEctypeVar($ectype_ID,6,$field)
				SetEctypeVar($ectype_ID,5,$level)
				endif
		//--------ceshiyong
		$playvar = GetPlayerVar(-1,317)
		if $playvar == 0
		if $player_id == $team_headerID
			if $rand == 1
			$map_x = 71
			$map_y = 165
			$map_x *= 100
			$map_x /= 256
			$map_y *= 100
			$map_y /= 256
			$is_success = FlyToEctype( $team_headerID, 573, $map_x, $map_y)
			if $is_success > 0
				SetPlayerActLog($team_headerID,61,1)
				SetPlayerVar( $team_headerID , 3362, 2)
				SetPlayerVar( $team_headerID , 4205, $today_time)
				$ectype_ID = GetEctypeID(-1, 573)	
				//?????		
				SetEctypeVar($ectype_ID,0,2)	
				SetEctypeVar($ectype_id,9,$team_count)			
				StartEctypeTimer($ectype_ID, 0)
				BC( "screen", "player", $team_headerID, "You have entered the mysterious Quartz Grotto!")
				BC( "chat", "player", $team_headerID, "You have entered the mysterious Quartz Grotto!" )	
				SetPlayerVar(-1,317,1)
			endif
			endif
		endif
		endif
		if $playvar == 1 
			FlyToMap( -1, 475, 69, 50)
		 	SetPlayerVar(-1,317,0)
		 		//????
		if $ectype_ID > 0
			ReleaseEctype(-1,573)
		endif
		 	endif
		 	
		//$posx *= 100
		//$posx /= 256
		//$posy *= 100
		//$posy /= 256
		//$result = AddLevelMonster( 32390 , 237 ,100 ,1,$mapid,$posx,$posy,1)
		//BC("screen","player",-1,$var)
		//$yday = GetSystemTime("yday")
		//if $yday <= 74
			//$varleft = 100 - $var

		//endif
		//AddLevelMonster( 52370 , 217 , $level , 1 , $ectype_id ,$posx,$posy , 1 )
		
//		if $mapid == 84
//			call addequip()
//		endif
		
////--------------------------------------??
//			AddStatus( -1, 10414 , 10 )
//			AddStatus( -1, 10418 , 15 )
//			AddStatus( -1, 11080 , 2 )
//			AddStatus( -1, 4085 , 1 )
//			AddStatus( -1, 11651 , 1 )
//			AddStatus( -1, 11652 , 1 )
//			AddStatus( -1, 11653 , 1 )
//			AddStatus( -1, 11654 , 1 )
//			RemoveStatusByID(-1,6451)
//			RemoveStatusByID(-1,6458)
//			RemoveStatusByID(-1,6459)
//			RemoveStatusByID(-1,6460)
//			RemoveStatusByID(-1,6461)
//			$itr = GetEctypeID(-1,1090)
//			ReleaseEctype($itr)
//			$x = 98
//			$y = 59
//			$fly = FlyToEctype(-1 ,1090 , $x ,$y )
//			
//			BC("messagebox","player",-1,"GG")
		//---------------------------------------------------------??
//		$key = 3393
//		$getvar = GetPlayerVar(-1,$key)
//		if $getvar > 0
//			BC("chat","player",-1,"PlayerVar(",$key,")= ",$getvar)
//		endif
		
		//---------------------------------------------------------
		
	}
	
	
	
	function addequip(){
		
		$profession = GetPlayerInfo($playerid,"profession")
		if $profession == 1
			SubPlayerInfo($playerid,"item",39855,-1)
			SubPlayerInfo($playerid,"item",39856,-1)
			SubPlayerInfo($playerid,"item",39857,-1)
			SubPlayerInfo($playerid,"item",39858,-1)
			SubPlayerInfo($playerid,"item",39859,-1)
			SubPlayerInfo($playerid,"item",39860,-1)
			SubPlayerInfo($playerid,"item",39861,-1)
			SubPlayerInfo($playerid,"item",31081,-1)
			SubPlayerInfo($playerid,"item",31082,-1)
			SubPlayerInfo($playerid,"item",31083,-1)
			SubPlayerInfo($playerid,"item",31084,-1)
			SubPlayerInfo($playerid,"item",31085,-1)
			SubPlayerInfo($playerid,"item",31086,-1)
			SubPlayerInfo($playerid,"item",31087,-1)
			SubPlayerInfo($playerid,"item",31121,-1)
			SubPlayerInfo($playerid,"item",31122,-1)
			SubPlayerInfo($playerid,"item",31123,-1)
			SubPlayerInfo($playerid,"item",31124,-1)
			SubPlayerInfo($playerid,"item",31125,-1)
			SubPlayerInfo($playerid,"item",31126,-1)
			SubPlayerInfo($playerid,"item",31127,-1)
			SubPlayerInfo($playerid,"item",19631,-1)
			SubPlayerInfo($playerid,"item",19611,-1)
			SubPlayerInfo($playerid,"item",19616,-1)
		endif
		if $profession == 2
			SubPlayerInfo($playerid,"item",39869,-1)
			SubPlayerInfo($playerid,"item",39870,-1)
			SubPlayerInfo($playerid,"item",39871,-1)
			SubPlayerInfo($playerid,"item",39872,-1)
			SubPlayerInfo($playerid,"item",39873,-1)
			SubPlayerInfo($playerid,"item",39874,-1)
			SubPlayerInfo($playerid,"item",39875,-1)
			SubPlayerInfo($playerid,"item",39876,-1)
			SubPlayerInfo($playerid,"item",31088,-1)
			SubPlayerInfo($playerid,"item",31089,-1)
			SubPlayerInfo($playerid,"item",31090,-1)
			SubPlayerInfo($playerid,"item",31091,-1)
			SubPlayerInfo($playerid,"item",31092,-1)
			SubPlayerInfo($playerid,"item",31093,-1)
			SubPlayerInfo($playerid,"item",31094,-1)
			SubPlayerInfo($playerid,"item",31095,-1)
			SubPlayerInfo($playerid,"item",31128,-1)
			SubPlayerInfo($playerid,"item",31129,-1)
			SubPlayerInfo($playerid,"item",31130,-1)
			SubPlayerInfo($playerid,"item",31131,-1)
			SubPlayerInfo($playerid,"item",31132,-1)
			SubPlayerInfo($playerid,"item",31133,-1)
			SubPlayerInfo($playerid,"item",31134,-1)
			SubPlayerInfo($playerid,"item",31135,-1)
			SubPlayerInfo($playerid,"item",19632,-1)
			SubPlayerInfo($playerid,"item",19612,-1)
			SubPlayerInfo($playerid,"item",19617,-1)
		endif
		if $profession == 3
			SubPlayerInfo($playerid,"item",39884,-1)
			SubPlayerInfo($playerid,"item",39885,-1)
			SubPlayerInfo($playerid,"item",39886,-1)
			SubPlayerInfo($playerid,"item",39887,-1)
			SubPlayerInfo($playerid,"item",39888,-1)
			SubPlayerInfo($playerid,"item",39889,-1)
			SubPlayerInfo($playerid,"item",39890,-1)
			SubPlayerInfo($playerid,"item",31096,-1)
			SubPlayerInfo($playerid,"item",31097,-1)
			SubPlayerInfo($playerid,"item",31098,-1)
			SubPlayerInfo($playerid,"item",31099,-1)
			SubPlayerInfo($playerid,"item",31100,-1)
			SubPlayerInfo($playerid,"item",31101,-1)
			SubPlayerInfo($playerid,"item",31102,-1)
			SubPlayerInfo($playerid,"item",31136,-1)
			SubPlayerInfo($playerid,"item",31137,-1)
			SubPlayerInfo($playerid,"item",31138,-1)
			SubPlayerInfo($playerid,"item",31139,-1)
			SubPlayerInfo($playerid,"item",31140,-1)
			SubPlayerInfo($playerid,"item",31141,-1)
			SubPlayerInfo($playerid,"item",31142,-1)
			SubPlayerInfo($playerid,"item",19633,-1)
			SubPlayerInfo($playerid,"item",19613,-1)
			SubPlayerInfo($playerid,"item",19618,-1)
		endif
		if $profession == 4
			SubPlayerInfo($playerid,"item",39898,-1)
			SubPlayerInfo($playerid,"item",39899,-1)
			SubPlayerInfo($playerid,"item",39900,-1)
			SubPlayerInfo($playerid,"item",39901,-1)
			SubPlayerInfo($playerid,"item",39902,-1)
			SubPlayerInfo($playerid,"item",39903,-1)
			SubPlayerInfo($playerid,"item",39904,-1)
			SubPlayerInfo($playerid,"item",31103,-1)
			SubPlayerInfo($playerid,"item",31104,-1)
			SubPlayerInfo($playerid,"item",31105,-1)
			SubPlayerInfo($playerid,"item",31106,-1)
			SubPlayerInfo($playerid,"item",31107,-1)
			SubPlayerInfo($playerid,"item",31108,-1)
			SubPlayerInfo($playerid,"item",31109,-1)
			SubPlayerInfo($playerid,"item",31143,-1)
			SubPlayerInfo($playerid,"item",31144,-1)
			SubPlayerInfo($playerid,"item",31145,-1)
			SubPlayerInfo($playerid,"item",31146,-1)
			SubPlayerInfo($playerid,"item",31147,-1)
			SubPlayerInfo($playerid,"item",31148,-1)
			SubPlayerInfo($playerid,"item",31149,-1)
			SubPlayerInfo($playerid,"item",19634,-1)
			SubPlayerInfo($playerid,"item",19619,-1)
			SubPlayerInfo($playerid,"item",19614,-1)
		endif
		if $profession == 5
			SubPlayerInfo($playerid,"item",39912,-1)
			SubPlayerInfo($playerid,"item",39913,-1)
			SubPlayerInfo($playerid,"item",39914,-1)
			SubPlayerInfo($playerid,"item",39915,-1)
			SubPlayerInfo($playerid,"item",39916,-1)
			SubPlayerInfo($playerid,"item",39917,-1)
			SubPlayerInfo($playerid,"item",39918,-1)
			SubPlayerInfo($playerid,"item",39919,-1)
			SubPlayerInfo($playerid,"item",31110,-1)
			SubPlayerInfo($playerid,"item",31111,-1)
			SubPlayerInfo($playerid,"item",31112,-1)
			SubPlayerInfo($playerid,"item",31113,-1)
			SubPlayerInfo($playerid,"item",31114,-1)
			SubPlayerInfo($playerid,"item",31115,-1)
			SubPlayerInfo($playerid,"item",31116,-1)
			SubPlayerInfo($playerid,"item",31117,-1)
			SubPlayerInfo($playerid,"item",31150,-1)
			SubPlayerInfo($playerid,"item",31151,-1)
			SubPlayerInfo($playerid,"item",31152,-1)
			SubPlayerInfo($playerid,"item",31153,-1)
			SubPlayerInfo($playerid,"item",31154,-1)
			SubPlayerInfo($playerid,"item",31155,-1)
			SubPlayerInfo($playerid,"item",31156,-1)
			SubPlayerInfo($playerid,"item",31157,-1)
			SubPlayerInfo($playerid,"item",19635,-1)
			SubPlayerInfo($playerid,"item",19615,-1)
			SubPlayerInfo($playerid,"item",19620,-1)
		endif
		if $profession == 6
			SubPlayerInfo($playerid,"item",39927,-1)
			SubPlayerInfo($playerid,"item",39928,-1)
			SubPlayerInfo($playerid,"item",39929,-1)
			SubPlayerInfo($playerid,"item",39930,-1)
			SubPlayerInfo($playerid,"item",39931,-1)
			SubPlayerInfo($playerid,"item",39932,-1)
			SubPlayerInfo($playerid,"item",39933,-1)
			SubPlayerInfo($playerid,"item",39934,-1)
			SubPlayerInfo($playerid,"item",31216,-1)
			SubPlayerInfo($playerid,"item",31217,-1)
			SubPlayerInfo($playerid,"item",31218,-1)
			SubPlayerInfo($playerid,"item",31219,-1)
			SubPlayerInfo($playerid,"item",31220,-1)
			SubPlayerInfo($playerid,"item",31221,-1)
			SubPlayerInfo($playerid,"item",31222,-1)
			SubPlayerInfo($playerid,"item",31223,-1)
			SubPlayerInfo($playerid,"item",31224,-1)
			SubPlayerInfo($playerid,"item",31225,-1)
			SubPlayerInfo($playerid,"item",31226,-1)
			SubPlayerInfo($playerid,"item",31227,-1)
			SubPlayerInfo($playerid,"item",31228,-1)
			SubPlayerInfo($playerid,"item",31229,-1)
			SubPlayerInfo($playerid,"item",31230,-1)
			SubPlayerInfo($playerid,"item",31231,-1)
			SubPlayerInfo($playerid,"item",19636,-1)
			SubPlayerInfo($playerid,"item",19582,-1)
			SubPlayerInfo($playerid,"item",19583,-1)
		endif
		
			$profession = GetPlayerInfo($playerid,"profession")
		if $profession == 1
			AddPlayerInfo($playerid,"item",19631,1)
//			AddPlayerInfo($playerid,"item",19611,1)
//			AddPlayerInfo($playerid,"item",19616,1)
			AddPlayerInfo($playerid,"item",39855,1)
			AddPlayerInfo($playerid,"item",39856,1)
			AddPlayerInfo($playerid,"item",39857,1)
			AddPlayerInfo($playerid,"item",39858,1)
			AddPlayerInfo($playerid,"item",39859,1)
			AddPlayerInfo($playerid,"item",39860,1)
			AddPlayerInfo($playerid,"item",39861,1)
//			AddPlayerInfo($playerid,"item",31081,1)
//			AddPlayerInfo($playerid,"item",31082,1)
//			AddPlayerInfo($playerid,"item",31083,1)
//			AddPlayerInfo($playerid,"item",31084,1)
//			AddPlayerInfo($playerid,"item",31085,1)
//			AddPlayerInfo($playerid,"item",31086,1)
//			AddPlayerInfo($playerid,"item",31087,1)
//			AddPlayerInfo($playerid,"item",31121,1)
//			AddPlayerInfo($playerid,"item",31122,1)
//			AddPlayerInfo($playerid,"item",31123,1)
//			AddPlayerInfo($playerid,"item",31124,1)
//			AddPlayerInfo($playerid,"item",31125,1)
//			AddPlayerInfo($playerid,"item",31126,1)
//			AddPlayerInfo($playerid,"item",31127,1)
		endif
		if $profession == 2
			AddPlayerInfo($playerid,"item",19632,1)
//			AddPlayerInfo($playerid,"item",19612,1)
//			AddPlayerInfo($playerid,"item",19617,1)
			AddPlayerInfo($playerid,"item",39869,1)
			AddPlayerInfo($playerid,"item",39870,1)
			AddPlayerInfo($playerid,"item",39871,1)
			AddPlayerInfo($playerid,"item",39872,1)
			AddPlayerInfo($playerid,"item",39873,1)
			AddPlayerInfo($playerid,"item",39874,1)
			AddPlayerInfo($playerid,"item",39875,1)
			AddPlayerInfo($playerid,"item",39876,1)
//			AddPlayerInfo($playerid,"item",31088,1)
//			AddPlayerInfo($playerid,"item",31089,1)
//			AddPlayerInfo($playerid,"item",31090,1)
//			AddPlayerInfo($playerid,"item",31091,1)
//			AddPlayerInfo($playerid,"item",31092,1)
//			AddPlayerInfo($playerid,"item",31093,1)
//			AddPlayerInfo($playerid,"item",31094,1)
//			AddPlayerInfo($playerid,"item",31095,1)
//			AddPlayerInfo($playerid,"item",31128,1)
//			AddPlayerInfo($playerid,"item",31129,1)
//			AddPlayerInfo($playerid,"item",31130,1)
//			AddPlayerInfo($playerid,"item",31131,1)
//			AddPlayerInfo($playerid,"item",31132,1)
//			AddPlayerInfo($playerid,"item",31133,1)
//			AddPlayerInfo($playerid,"item",31134,1)
//			AddPlayerInfo($playerid,"item",31135,1)
		endif
		if $profession == 3
			AddPlayerInfo($playerid,"item",19633,1)
//			AddPlayerInfo($playerid,"item",19613,1)
//			AddPlayerInfo($playerid,"item",19618,1)
			AddPlayerInfo($playerid,"item",39884,1)
			AddPlayerInfo($playerid,"item",39885,1)
			AddPlayerInfo($playerid,"item",39886,1)
			AddPlayerInfo($playerid,"item",39887,1)
			AddPlayerInfo($playerid,"item",39888,1)
			AddPlayerInfo($playerid,"item",39889,1)
			AddPlayerInfo($playerid,"item",39890,1)
//			AddPlayerInfo($playerid,"item",31096,1)
//			AddPlayerInfo($playerid,"item",31097,1)
//			AddPlayerInfo($playerid,"item",31098,1)
//			AddPlayerInfo($playerid,"item",31099,1)
//			AddPlayerInfo($playerid,"item",31100,1)
//			AddPlayerInfo($playerid,"item",31101,1)
//			AddPlayerInfo($playerid,"item",31102,1)
//			AddPlayerInfo($playerid,"item",31136,1)
//			AddPlayerInfo($playerid,"item",31137,1)
//			AddPlayerInfo($playerid,"item",31138,1)
//			AddPlayerInfo($playerid,"item",31139,1)
//			AddPlayerInfo($playerid,"item",31140,1)
//			AddPlayerInfo($playerid,"item",31141,1)
//			AddPlayerInfo($playerid,"item",31142,1)
		endif
		if $profession == 4
			AddPlayerInfo($playerid,"item",19634,1)
//			AddPlayerInfo($playerid,"item",19619,1)
//			AddPlayerInfo($playerid,"item",19614,1)
			AddPlayerInfo($playerid,"item",39898,1)
			AddPlayerInfo($playerid,"item",39899,1)
			AddPlayerInfo($playerid,"item",39900,1)
			AddPlayerInfo($playerid,"item",39901,1)
			AddPlayerInfo($playerid,"item",39902,1)
			AddPlayerInfo($playerid,"item",39903,1)
			AddPlayerInfo($playerid,"item",39904,1)
//			AddPlayerInfo($playerid,"item",31103,1)
//			AddPlayerInfo($playerid,"item",31104,1)
//			AddPlayerInfo($playerid,"item",31105,1)
//			AddPlayerInfo($playerid,"item",31106,1)
//			AddPlayerInfo($playerid,"item",31107,1)
//			AddPlayerInfo($playerid,"item",31108,1)
//			AddPlayerInfo($playerid,"item",31109,1)
//			AddPlayerInfo($playerid,"item",31143,1)
//			AddPlayerInfo($playerid,"item",31144,1)
//			AddPlayerInfo($playerid,"item",31145,1)
//			AddPlayerInfo($playerid,"item",31146,1)
//			AddPlayerInfo($playerid,"item",31147,1)
//			AddPlayerInfo($playerid,"item",31148,1)
//			AddPlayerInfo($playerid,"item",31149,1)
		endif
		if $profession == 5
			AddPlayerInfo($playerid,"item",19635,1)
//			AddPlayerInfo($playerid,"item",19615,1)
//			AddPlayerInfo($playerid,"item",19620,1)
			AddPlayerInfo($playerid,"item",39912,1)
			AddPlayerInfo($playerid,"item",39913,1)
			AddPlayerInfo($playerid,"item",39914,1)
			AddPlayerInfo($playerid,"item",39915,1)
			AddPlayerInfo($playerid,"item",39916,1)
			AddPlayerInfo($playerid,"item",39917,1)
			AddPlayerInfo($playerid,"item",39918,1)
			AddPlayerInfo($playerid,"item",39919,1)
//			AddPlayerInfo($playerid,"item",31110,1)
//			AddPlayerInfo($playerid,"item",31111,1)
//			AddPlayerInfo($playerid,"item",31112,1)
//			AddPlayerInfo($playerid,"item",31113,1)
//			AddPlayerInfo($playerid,"item",31114,1)
//			AddPlayerInfo($playerid,"item",31115,1)
//			AddPlayerInfo($playerid,"item",31116,1)
//			AddPlayerInfo($playerid,"item",31117,1)
//			AddPlayerInfo($playerid,"item",31150,1)
//			AddPlayerInfo($playerid,"item",31151,1)
//			AddPlayerInfo($playerid,"item",31152,1)
//			AddPlayerInfo($playerid,"item",31153,1)
//			AddPlayerInfo($playerid,"item",31154,1)
//			AddPlayerInfo($playerid,"item",31155,1)
//			AddPlayerInfo($playerid,"item",31156,1)
//			AddPlayerInfo($playerid,"item",31157,1)
		endif
		if $profession == 6
			AddPlayerInfo($playerid,"item",19636,1)
//			AddPlayerInfo($playerid,"item",19582,1)
//			AddPlayerInfo($playerid,"item",19583,1)
			AddPlayerInfo($playerid,"item",39927,1)
			AddPlayerInfo($playerid,"item",39928,1)
			AddPlayerInfo($playerid,"item",39929,1)
			AddPlayerInfo($playerid,"item",39930,1)
			AddPlayerInfo($playerid,"item",39931,1)
			AddPlayerInfo($playerid,"item",39932,1)
			AddPlayerInfo($playerid,"item",39933,1)
			AddPlayerInfo($playerid,"item",39934,1)
//			AddPlayerInfo($playerid,"item",31216,1)
//			AddPlayerInfo($playerid,"item",31217,1)
//			AddPlayerInfo($playerid,"item",31218,1)
//			AddPlayerInfo($playerid,"item",31219,1)
//			AddPlayerInfo($playerid,"item",31220,1)
//			AddPlayerInfo($playerid,"item",31221,1)
//			AddPlayerInfo($playerid,"item",31222,1)
//			AddPlayerInfo($playerid,"item",31223,1)
//			AddPlayerInfo($playerid,"item",31224,1)
//			AddPlayerInfo($playerid,"item",31225,1)
//			AddPlayerInfo($playerid,"item",31226,1)
//			AddPlayerInfo($playerid,"item",31227,1)
//			AddPlayerInfo($playerid,"item",31228,1)
//			AddPlayerInfo($playerid,"item",31229,1)
//			AddPlayerInfo($playerid,"item",31230,1)
//			AddPlayerInfo($playerid,"item",31231,1)
		endif
		
	}
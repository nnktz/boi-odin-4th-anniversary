	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2013
	//		Author:???
	//		Best wishs for all !
	//****************************************
	function OnDead(){
//575	???-????
//576	???-????
//577	???-????
//578	???-????
//579	???-????
//580	???-????

//64188	??????
//64189	??????
//64184	??????
//64185	??????
//64186	??????
//64187	??????
		$dropitemid = 0
		$droprate = 0
//???-????	26621
//???-????	26622
//???-????	26623
//???-????	26624
//???-????	26625
//???-????	26626

		$getvar = GetPlayerInfo(-1,"mapid")
		if $getvar == 26621
			$dropitemid = 64188
			$droprate = 99
		endif
		if $getvar == 26622
			$dropitemid = 64189
			$droprate = 99
		endif
		if $getvar == 26623
			$dropitemid = 64184
			$droprate = 99
		endif
		if $getvar == 26624
			$dropitemid = 64185
			$droprate = 99
		endif
		if $getvar == 26625
			$dropitemid = 64186
			$droprate = 99
		endif
		if $getvar == 26626
			$dropitemid = 64187
			$droprate = 99
		endif
		//------------------LOG
		#logname = GetPlayerInfo(-1,"name")
		if $dropitemid == 0
			$var0 = $getvar
			$var1 = GetPlayerID()
			ScriptLog0("PlayerLog_Script-Can't drop monsters, Map [%d] Player [%d].",$var0,$var1)
			SetPlayerActLog($teamplayer_id,61,1003)
		endif
		//------------------LOG
		
//		$droprate = 1000
		
		$randombuff = RandomNumber(1,1000)
		if $randombuff > $droprate
			return
		endif
		
				
		$playerid = GetPlayerID()
		$week = GetNowWeek()
		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerid,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerid,$teamplayer_id )
				if $lenD < 50
					//3471????boss???????(6????)
					//??????????
					$getvar = GetPlayerVar(-1,3471)
					if $week != $getvar
						AddPlayerInfo($teamplayer_id,"item",$dropitemid,1)
					endif
  			endif
			endif
			$Cid = $Cid + 1
		endwhile
		

	}	
	
	
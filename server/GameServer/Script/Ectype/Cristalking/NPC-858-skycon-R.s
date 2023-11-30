	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-7
	//		Author:???
	//		TaskName:???? - The Throne of Magic Crystal
	//		TaskID:
	//
	//****************************************

	function OnRequest(){


		$isend = GetGlobalVar(137)
		if $isend >= 1
			call Disall()
			return
		endif
		$playerid = GetPlayerID()
		$guildid = GetPlayerInfo($playerid,"guildid")
		if $guildid == 0
			FlyToMap($playerid,173,55,66,0)
			call Disall()
			return
		endif
		$enterCT = GetGuildVar($guildid,17)
		if $enterCT != 1
			call Disall()
			return
		endif


	}
	
	function Disall(){
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(8)
	}

//--????
	function OnOption0(){

		$playerid = GetPlayerID()
		$guildid = GetPlayerInfo($playerid,"guildid")
		$ectype_id = GetEctypeID(-1, 545)
		SetEctypeVar($ectype_id,27,1)

	}

//--?????
	function OnOption1(){

		$playerid = GetPlayerID()
		$guildid = GetPlayerInfo($playerid,"guildid")
		$ectype_id = GetEctypeID(-1, 545)
		SetEctypeVar($ectype_id,27,2)
		
	}

//--??????
	function OnOption2(){

		$playerid = GetPlayerID()
		$guildid = GetPlayerInfo($playerid,"guildid")
		$ectype_id = GetEctypeID(-1, 545)
		SetEctypeVar($ectype_id,27,3)


	}

//--??????
	function OnOption3(){

		$playerid = GetPlayerID()
		$guildid = GetPlayerInfo($playerid,"guildid")
		$ectype_id = GetEctypeID(-1, 545)
		SetEctypeVar($ectype_id,27,4)


	}

//--????BOSS
	function OnOption4(){

		$playerid = GetPlayerID()
		$guildid = GetPlayerInfo($playerid,"guildid")
		$ectype_id = GetEctypeID(-1, 545)
		SetEctypeVar($ectype_id,27,5)


	}

//--A
	function OnOption5(){

		$playerid = GetPlayerID()
		$guildid = GetPlayerInfo($playerid,"guildid")
		$itemchk = GetPlayerInfo($playerid,"item",44387)
		$grank = GetPlayerInfo($playerid,"guildrank")
		if $grank != 0
			if $itemchk < 1
				BC("messagebox","player",-1,"Only Guild Leaders and those who have a Control Key can operate this!")
				return
			endif
		endif
		$ectype_id = GetEctypeID(-1, 545)
		$ept_B = GetEctypeVar($ectype_id,20)
		if $ept_B > 0
			$ept_B -= 1
			SetEctypeVar($ectype_id,20,$ept_B)
			SetEctypeVar($ectype_id,28,1)
			#gname = GetPlayerInfo($playerid,"guildname")
			BC("screen","map",$ectype_id,"The ",#gname," Guild used 1 Zephyr Point!")
		else
			BC("dialogbox","player",-1,"Your Guild does not have enough Zephyr Points!")
		endif


	}

//--B
	function OnOption6(){

		$playerid = GetPlayerID()
		$guildid = GetPlayerInfo($playerid,"guildid")
		$itemchk = GetPlayerInfo($playerid,"item",44387)
		$grank = GetPlayerInfo($playerid,"guildrank")
		if $grank != 0
			if $itemchk < 1
				BC("messagebox","player",-1,"Only Guild Leaders and those who have a Control Key can operate this!")
				return
			endif
		endif
		$ectype_id = GetEctypeID(-1, 545)
		$ept_B = GetEctypeVar($ectype_id,20)
		if $ept_B > 0
			$ept_B -= 1
			SetEctypeVar($ectype_id,20,$ept_B)
			SetEctypeVar($ectype_id,28,2)
			#gname = GetPlayerInfo($playerid,"guildname")
			BC("screen","map",$ectype_id,"The ",#gname," Guild used 1 Zephyr Point!")
		else
			BC("dialogbox","player",-1,"Your Guild does not have enough Zephyr Points!")
		endif

	}

//--C
	function OnOption7(){

		$playerid = GetPlayerID()
		$guildid = GetPlayerInfo($playerid,"guildid")
		$itemchk = GetPlayerInfo($playerid,"item",44387)
		$grank = GetPlayerInfo($playerid,"guildrank")
		if $grank != 0
			if $itemchk < 1
				BC("messagebox","player",-1,"Only Guild Leaders and those who have a Control Key can operate this!")
				return
			endif
		endif
		$ectype_id = GetEctypeID(-1, 545)
		$ept_B = GetEctypeVar($ectype_id,20)
		if $ept_B > 0
			$ept_B -= 1
			SetEctypeVar($ectype_id,20,$ept_B)
			SetEctypeVar($ectype_id,28,3)
			#gname = GetPlayerInfo($playerid,"guildname")
			BC("messagebox","map",$ectype_id,"The ",#gname," Guild used 1 Zephyr Point!")
		else
			BC("dialogbox","player",-1,"Your Guild does not have enough Zephyr Points!")
		endif

	}

//--D
//44387	????

	function OnOption8(){

		$playerid = GetPlayerID()
		$guildid = GetPlayerInfo($playerid,"guildid")
		$itemchk = GetPlayerInfo($playerid,"item",44387)
		$grank = GetPlayerInfo($playerid,"guildrank")
		if $grank != 0
			if $itemchk < 1
				BC("messagebox","player",-1,"Only Guild Leaders and those who have a Control Key can operate this!")
				return
			endif
		endif
		$ectype_id = GetEctypeID(-1, 545)
		$ept_B = GetEctypeVar($ectype_id,20)
		if $ept_B > 0
			$ept_B -= 1
			SetEctypeVar($ectype_id,20,$ept_B)
			SetEctypeVar($ectype_id,28,4)
			#gname = GetPlayerInfo($playerid,"guildname")
			BC("screen","map",$ectype_id,"The ",#gname," Guild used 1 Zephyr Point!")
		else
			BC("dialogbox","player",-1,"Your Guild does not have enough Zephyr Points!")
		endif

	}
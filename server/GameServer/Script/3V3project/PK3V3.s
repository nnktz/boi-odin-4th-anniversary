	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013-4
	//		Author: ???
	//
	//****************************************
	
	
	function OnSetLeftCampInfo(){
		
		//??0???,?????????????
		$ectype_id = GetCurEctypeID()
		#fieldsid = PK3V3_GET_CURRENT_FIELDSID()
		$campid = 0
		$playerid_num = PK3V3_CAMP_INFO_GET_PLAYERID_NUM(#fieldsid,$campid)
		//???????????HP
		$i = 0
		$all_power = 0
		$MHP_add = 0
		while($i < $playerid_num)
			$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,$campid,$i)
			call resetplayerjoin()
			call GG_power_rev()
			$all_power += $power
			$i = $i + 1
		endwhile
		call GG_MHP()
		//????????buff???
		PK3V3_CAMP_INFO_SET_MAXHP(#fieldsid,$campid,$mhp)
		PK3V3_CAMP_INFO_SET_HP(#fieldsid,$campid,$mhp)
		SetEctypeVar($ectype_id,116,$mhp)
		SetEctypeVar($ectype_id,118,$mhp)
		SetEctypeVar($ectype_id,2,0)
		SetEctypeVar($ectype_id,4,0)
		SetEctypeVar($ectype_id,12,0)
		
	}

	function OnSetRightCampInfo(){
		
		//??1???,?????????????
		$ectype_id = GetCurEctypeID()
		#fieldsid = PK3V3_GET_CURRENT_FIELDSID()
		$campid = 1
		$playerid_num = PK3V3_CAMP_INFO_GET_PLAYERID_NUM(#fieldsid,$campid)
		//???????????HP
		$i = 0
		$all_power = 0
		$MHP_add = 0
		while($i < $playerid_num)
			$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,$campid,$i)
			call resetplayerjoin()
			call GG_power_rev()
			$all_power += $power
			$i = $i + 1
		endwhile
		call GG_MHP()
		//????????buff???
		PK3V3_CAMP_INFO_SET_MAXHP(#fieldsid,$campid,$mhp)
		PK3V3_CAMP_INFO_SET_HP(#fieldsid,$campid,$mhp)
		SetEctypeVar($ectype_id,117,$mhp)
		SetEctypeVar($ectype_id,119,$mhp)
		SetEctypeVar($ectype_id,3,0)
		SetEctypeVar($ectype_id,5,0)
		SetEctypeVar($ectype_id,13,0)
		
	}

	function OnEnd(){
		
		$ectype_id = GetCurEctypeID()
		#fieldsid = PK3V3_GET_CURRENT_FIELDSID()
		//????????AI?
		SetEctypeVar($ectype_id,0,2)
		//??????????????
		$isovertime = GetEctypeVar($ectype_id,10)
		if $isovertime == 1
			return
		endif
		//????
		$campid_win = PK3V3_GET_WINNER_CAMPID(#fieldsid)
		if $campid_win < 0
			BC("chat","map",$ectype_id,"The match is invalid!")
			BC("screen","map",$ectype_id,"The match is invalid!")
			return
		endif
		if $campid_win == 2
			BC("chat","map",$ectype_id,"The match ends in a draw!")
			BC("messagebox","map",$ectype_id,"The match ends in a draw!")
			return
		endif
		$campid_lose = 1 - $campid_win
		
		//-----?????-----
		$i = 0
		$playerid_num = PK3V3_CAMP_INFO_GET_PLAYERID_NUM(#fieldsid,$campid_win)
		//???????????
		$bcid = RandomNumber(1,$playerid_num)
		$bcid -= 1
		while($i < $playerid_num)
			$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,$campid_win,$i)
			//????????
			RemoveStatusByID($playerid,6477)
			RemoveStatusByID($playerid,6478)
			RemoveStatusByID($playerid,6479)
			RemoveStatusByID($playerid,6480)
			RemoveStatusByID($playerid,6571)
			RemoveStatusByID($playerid,6572)
			//????
			$map_id = GetPlayerInfo($playerid,"mapid")
			if $map_id >= 26421
				if $map_id <= 26520
					//---------------------------
					call winscore()
					if $score > 60000
						$score = 60000
					endif
					PK3V3_SET_SCORE($playerid,$score)
					//---------------------------
				endif
			endif
			$i = $i + 1
		endwhile
		
		//-----?????-----
		$i = 0
		$playerid_num = PK3V3_CAMP_INFO_GET_PLAYERID_NUM(#fieldsid,$campid_lose)
		while($i < $playerid_num)
			$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,$campid_lose,$i)
			//????????
			RemoveStatusByID($playerid,6477)
			RemoveStatusByID($playerid,6478)
			RemoveStatusByID($playerid,6479)
			RemoveStatusByID($playerid,6480)
			RemoveStatusByID($playerid,6571)
			RemoveStatusByID($playerid,6572)
			//????
			$map_id = GetPlayerInfo($playerid,"mapid")
			if $map_id >= 26421
				if $map_id <= 26520
					//---------------------------
					call losescore()
					if $score > 60000
						$score = 60000
					endif
					PK3V3_SET_SCORE($playerid,$score)
					//---------------------------
				endif
			endif
			$i = $i + 1
		endwhile
		
		//???????AI?
		call checkrank()
		
	}
	
	//????
	function winscore(){
		
//		$ectype_id = GetCurEctypeID()
//		#fieldsid = PK3V3_GET_CURRENT_FIELDSID()
//		$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,$campid_win,$i)
		$score = PK3V3_GET_SCORE($playerid)
		//????????,?????????,????????,??????
		$winner_winold_id = 8 + $campid_win
		$winner_cpold_id = 8 + $campid_lose
		$winold = GetEctypeVar($ectype_id,$winner_winold_id)
		$cpwinold = GetEctypeVar($ectype_id,$winner_cpold_id)
		$winnow = PK3V3_CAMP_INFO_GET_WINS(#fieldsid,$campid_win)
		//??????????:?????????????10+20?
		$cpMHPid = 118 + $campid_lose
		$cpMHP = GetEctypeVar($ectype_id,$cpMHPid)
		$hpline = $cpMHP / 2
		$cpHP = PK3V3_CAMP_INFO_GET_HP(#fieldsid,$campid_lose)
		if $cpHP > $hpline
			$processbar = GetEctypeVar($ectype_id,11)
			if $processbar < 30
				BC("messagebox","player",$playerid,"Your opponent has given up, the match is cancelled!")
				return
			endif
		endif
		
//	3461	???
		SetPlayerVar($playerid,3461,0)
		
		//-----------------------??
		$havetask1890 = IsTaskAccept($playerid,1890)
		if $havetask1890 == 0
			$item = GetPlayerInfo($playerid,"item",12882)
			if $item == 0
				AddPlayerInfo($playerid,"item",12882,1)
			endif
		endif
		$havetask1891 = IsTaskAccept($playerid,1891)
		if $havetask1891 == 0
			$item = GetPlayerInfo($playerid,"item",12883)
			if $item < 10
				AddPlayerInfo($playerid,"item",12883,1)
			endif
		endif
		$havetask1892 = IsTaskAccept($playerid,1892)
		if $havetask1892 == 0
			$item = GetPlayerInfo($playerid,"item",12883)
			if $item < 100
				AddPlayerInfo($playerid,"item",12883,1)
			endif
		endif
		
		//???------------------------
		$score_ori = $score
		//????
		$score += 100
		//????
		$score_add = 100
		
		//????------------------------
		//??10????????10???
		if $winnow > 10
			$winadd = 200
		else
			$winadd = $winnow * 20
		endif
		$score += $winadd
		$score_add += $winadd
		
		//????------------------------
		//(win*win+win)*10,??10?????(win-10)??,?????30????
		if $cpwinold > 30
			$cpwinclac = 30
		else
			$cpwinclac = $cpwinold
		endif
		$cpwinold_PT = $cpwinclac * $cpwinclac
		$cpwinold_PT += $cpwinclac
		$cpwinold_PT *= 10
		if $cpwinclac > 10
			$cpwinold_sub = $cpwinclac - 10
			$cpwinold_sub_PT = $cpwinold_sub * $cpwinold_sub
			$cpwinold_sub_PT += $cpwinold_sub
			$cpwinold_sub_PT *= 10
			$cpwinold_PT -= $cpwinold_sub_PT
		endif
		$score += $cpwinold_PT
		$score_add += $cpwinold_PT
		
//??2??	?????3??		15
//??5??	?????5??		45
//		3457	3.85 3v3	???????
		#prwinscoreBC = "\n"
		$getkilled = GetPlayerVar($playerid,3457)
		if $getkilled == 0
			if $winnow == 2
				$prwinscore = 15
				#killername = GetPlayerInfo($playerid,"name")
				#prwinscoreBC = "\nTwice in a Row acheivement unlocked! +15\n"
				SetPlayerVar($playerid,3466,1)
			endif
			if $winnow == 5
				$prwinscore = 45
				#killername = GetPlayerInfo($playerid,"name")
				#prwinscoreBC = "\nFive Times in a Row acheivement unlocked! +45\n"
				SetPlayerVar($playerid,3467,1)
			endif
		endif
		
		$score += $prwinscore
		$score_add += $prwinscore
		
		//???????,?player.s???
		$killadd = GetPlayerVar($playerid,4201)
		if $killadd > 0
			$score += $killadd
			$score_add += $killadd
			SetPlayerVar($playerid,4201,0)
		endif
		
		//????
		if $cpwinold_PT == 0
			if $killadd > 0
				BC("dialogbox","player",$playerid,"Victory! Score: \nVictory Score: +100\n",$winnow,"Winning streak: (",$winadd,") Score",#prwinscoreBC,"Kill Achievement Score: (",$killadd,") Score\n\nOriginal Score (",$score_ori,") Score, in this round add (",$score_add,") Score\nPresent Score: (",$score,") Score")
			else
				BC("dialogbox","player",$playerid,"Victory! Score: \nVictory Score: +100\n",$winnow,"Winning streak: (",$winadd,") Score",#prwinscoreBC,"\nOriginal Score (",$score_ori,") Score, in this round add (",$score_add,") Score\nPresent Score: (",$score,") Score")
			endif
		else
			if $killadd > 0
				BC("dialogbox","player",$playerid,"Victory! Score: \nVictory Score: +100\n",$winnow,"Winning streak: (",$winadd,") Score",#prwinscoreBC,"End the opponent's ",$cpwinold,"Winning streak:(",$cpwinold_PT,") Score\nKill Achievement Score:(",$killadd,") Score\n\nOriginal Score (",$score_ori,") Score, in this round add (",$score_add,") Score\nPresent Score: (",$score,") Score")
			else
				BC("dialogbox","player",$playerid,"Victory! Score: \nVictory Score: +100\n",$winnow,"Winning streak: (",$winadd,") Score",#prwinscoreBC,"End the opponent's ",$cpwinold,"Winning streak:(",$cpwinold_PT,") Score\n\nOriginal Score (",$score_ori,") Score, in this round add (",$score_add,") Score\nPresent Score: (",$score,") Score")
			endif
		endif
		
		//----------??+????
		//PK3V3.s	????	????3,5,7,10+
		//PK3V3.s	????,????3
		if $i == $bcid
			#name = GetPlayerInfo($playerid,"name")
			if $winnow > 1
				BC("screen","map",$ectype_id,#name,"Your team got",$winnow,"Winning streak! Got a Winning streak reward. (",$winadd,") Score")
				if $winnow == 3
					$isbc_1 = 1
				endif
				if $winnow == 5
					$isbc_1 = 1
				endif
				if $winnow == 7
					$isbc_1 = 1
				endif
				if $winnow >= 10
					$moda = $winnow % 2
					if $moda == 0
						$isbc_1 = 1
					endif
				endif
			endif
			if $cpwinold >= 2
				// ?????
				$playercpid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,$campid_lose,0)
				#namecp = GetPlayerInfo($playercpid,"name")
				BC("screen","map",$ectype_id,#name,"Your team ended the opponent's ",$cpwinold,"Winning streak! Got a Winning streak. (",$cpwinold_PT,") Score")
				if $cpwinold >= 5
					$isbc_2 = 1
				endif
			endif
			if $isbc_1 == 1
				if $isbc_2 == 1
					BC("chat","server",$ectype_id,#name,"Your party in the Warsoul Arena ended",#namecp,"the opponent's",$cpwinold,"Winning streak! Got a Winning streak. (",$cpwinold_PT,") Score! Got a ",$winnow,"Winning streak!")
					BC("screen","server",$ectype_id,#name,"Your party in the Warsoul Arena ended",#namecp,"the opponent's",$cpwinold,"Winning streak! Got a Winning streak. (",$cpwinold_PT,") Score! Got a ",$winnow,"Winning streak!")
				else
					BC("chat","server",$ectype_id,#name," Your party in the Warsoul Arena got",$winnow,"Winning streak!")
					BC("screen","server",$ectype_id,#name," Your party in the Warsoul Arena got",$winnow,"Winning streak!")
				endif
			else
				if $isbc_2 == 1
					BC("chat","server",$ectype_id,#name," Your party in the Warsoul Arena ended",#namecp,"the opponent's",$cpwinold,"Winning streak! Got a Winning streak. (",$cpwinold_PT,") Score!")
					BC("screen","server",$ectype_id,#name," Your party in the Warsoul Arena ended",#namecp,"the opponent's",$cpwinold,"Winning streak! Got a Winning streak. (",$cpwinold_PT,") Score!")
				else
					//null
				endif
			endif
		endif
		
		
		
		
	}
	
	//????
	function losescore(){
		
//		$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,$campid_win,$i)
		$score = PK3V3_GET_SCORE($playerid)
		//367	v3.88	???????????	
		SetPlayerVar($playerid,367,1)
		//???50?----?4???????25?,?????????15?------------------------------------
		//	3461	???
		$losenow = GetPlayerVar($playerid,3461)
		$losenow += 1
		SetPlayerVar($playerid,3461,$losenow)
		$losescore = 50
		if $losenow > 3
			$losescore = 25
		endif
		if $losenow > 6
			$losescore = 15
		endif
		$score_ori = $score
		$score += $losescore
		$score_add = $losescore
		
		//??????------------------------------------
		$attackscore = 5
		//--------------
		$hp0_A = GetEctypeVar($ectype_id,31)
		$hp0_B = GetEctypeVar($ectype_id,32)
		$hp1_A = GetEctypeVar($ectype_id,33)
		$hp1_B = GetEctypeVar($ectype_id,34)
		$HHH0 = $hp0_A * 30000
		$HHH0 += $hp0_B
		$HHH1 = $hp1_A * 30000
		$HHH1 += $hp1_B
		$power0_A = GetEctypeVar($ectype_id,35)
		$power0_B = GetEctypeVar($ectype_id,36)
		$power1_A = GetEctypeVar($ectype_id,37)
		$power1_B = GetEctypeVar($ectype_id,38)
		$PPP0 = $power0_A * 30000
		$PPP0 += $power0_B
		$PPP1 = $power1_A * 30000
		$PPP1 += $power1_B
		$num_0 = GetEctypeVar($ectype_id,39)
		$num_1 = GetEctypeVar($ectype_id,40)
		//--------------
		if $campid_win == 0
			$hp_final = PK3V3_CAMP_INFO_GET_HP(#fieldsid,0)
			$hp_ori = $HHH0
//			BC("chat","map",$ectype_id,"A|hp_ori=",$hp_ori)
			//--------------
			$all_power = $PPP1
			$playerid_num = $num_1
//			BC("chat","map",$ectype_id,"A|all_power=",$all_power)
//			BC("chat","map",$ectype_id,"A|playerid_num=",$playerid_num)
			$MHP_add = GetEctypeVar($ectype_id,41)
			call GG_MHP()
			//--------------??????HP??,??????????,?????
//			BC("chat","server",-1,"|mhp-1-1=",$mhp)
			$mhp = PK3V3_CAMP_INFO_GET_MAXHP(#fieldsid,0)
//			BC("chat","server",-1,"|mhp-1-2=",$mhp)
			$hp_self = $mhp
//			BC("chat","map",$ectype_id,"A|hp_self=",$hp_self)
		else
			$hp_final = PK3V3_CAMP_INFO_GET_HP(#fieldsid,1)
			$hp_ori = $HHH1
//			BC("chat","map",$ectype_id,"B|hp_ori=",$hp_ori)
			//--------------
			$all_power = $PPP0
			$playerid_num = $num_0
//			BC("chat","map",$ectype_id,"B|all_power=",$all_power)
//			BC("chat","map",$ectype_id,"B|playerid_num=",$playerid_num)
			$MHP_add = GetEctypeVar($ectype_id,42)
			call GG_MHP()
			//--------------??????HP??,??????????,?????
//			BC("chat","server",-1,"|mhp-2-1=",$mhp)
			$mhp = PK3V3_CAMP_INFO_GET_MAXHP(#fieldsid,1)
//			BC("chat","server",-1,"|mhp-2-2=",$mhp)
			$hp_self = $mhp
//			BC("chat","map",$ectype_id,"B|hp_self=",$hp_self)
		endif
		//???????????,????5?(???)
//		if $isaddPT == 1
			$hp_change = $hp_ori - $hp_final
			if $hp_change < 0
				$hp_change = 0
			endif
//			BC("chat","map",$ectype_id,"|hp_change=",$hp_change)
			$hp_change *= 100
			$hppct = $hp_change / $hp_self
//			BC("chat","map",$ectype_id,"|hppct=",$hppct)
			//???1%???,?5?
			$attackscoreadd = $hppct * 5
//			BC("chat","map",$ectype_id,"|attackscoreadd=",$attackscoreadd)
			$attackscore += $attackscoreadd
			if $attackscore > 50
				$attackscore = 50
			endif
//		endif
		$score += $attackscore
		$score_add += $attackscore
		if $score < 0
			$score = 0
		endif
		//???????,?player.s???------------------------------------
		$killadd = GetPlayerVar($playerid,4201)
		if $killadd > 0
			$score += $killadd
			$score_add += $killadd
			SetPlayerVar($playerid,4201,0)
			BC("dialogbox","player",$playerid,"Failed! Score:\nFailure Score (",$losescore,") Score\nDeal Damage Score (",$attackscore,") Score\nKill Achievement Score:(",$killadd,") Score\n\nOriginal Score (",$score_ori,") Score, in this round add (",$score_add,") Score\nPresent Score: (",$score,") Score")
		else
			BC("dialogbox","player",$playerid,"Failed! Score:\nFailure Score (",$losescore,") Score\nDeal Damage Score (",$attackscore,") Score\n\nOriginal Score (",$score_ori,") Score, in this round add (",$score_add,") Score\nPresent Score: (",$score,") Score")
		endif
		
	}
	
	function OnStart(){
		
		$ectype_id = GetCurEctypeID()
		#fieldsid = PK3V3_GET_CURRENT_FIELDSID()
		BC("screen","map",$ectype_id,"The Warsoul Arena is opening soon.")
		//??
		CloseMapMask(1)
		//??
		StartEctypeTimer($ectype_id, 1)
		//?AI
		DeleteMonster($ectype_id,32419)
		AddMonsterByFloat(32419,1,$ectype_id,148,148,0)
		//???
		DeleteMonster($ectype_id,53249)
		StartEctypeTimer($ectype_id,2)
		//?????AI??
		SetEctypeVar($ectype_id,0,0)
		//????
		SetEctypeVar($ectype_id,1,0)
		//??????????,??????
		$winold0 = PK3V3_CAMP_INFO_GET_WINS(#fieldsid,0)
		$winold1 = PK3V3_CAMP_INFO_GET_WINS(#fieldsid,1)
		SetEctypeVar($ectype_id,8,$winold0)
		SetEctypeVar($ectype_id,9,$winold1)
		//????
		SetEctypeVar($ectype_id,11,0)
		//???????AI?
		call checkrank()
		//????id??????AI?
		$indexW = 110
		while $indexW <= 115
			SetEctypeVar($ectype_id,$indexW,0)
			$indexW += 1
		endwhile
		$campid = 0
		$playerid_num = PK3V3_CAMP_INFO_GET_PLAYERID_NUM(#fieldsid,$campid)
		$i = 0
		while($i < $playerid_num)
			$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,$campid,$i)
			$index_p = 110 + $i
			SetEctypeVar($ectype_id,$index_p,$playerid)
			//????
			SetPlayerVar($playerid,351,0)
			//???
			SetPlayerVar($playerid,3595,1)
			$i += 1
		endwhile
		$campid = 1
		$playerid_num = PK3V3_CAMP_INFO_GET_PLAYERID_NUM(#fieldsid,$campid)
		$i = 0
		while($i < $playerid_num)
			$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,$campid,$i)
			$index_p = 113 + $i
			SetEctypeVar($ectype_id,$index_p,$playerid)
			//????
			SetPlayerVar($playerid,351,1)
			//???
			SetPlayerVar($playerid,3595,0)
			$i += 1
		endwhile

//		SetEctypeVar($ectype_id,31,0)
//		SetEctypeVar($ectype_id,32,0)
//		SetEctypeVar($ectype_id,33,0)
//		SetEctypeVar($ectype_id,34,0)


		
	}
	
	//???????????,?????????id
	function OnEnter(){
		//??????,??????
		$ectype_id = GetCurEctypeID()
		$var = GetEctypeVar($ectype_id,1)
		$var += 1
		SetEctypeVar($ectype_id,1,$var)
			
	}
	
	//???????
	function OnStarting(){
		
//		PK3V3_CAMP_INFO_GET_IN_FIELD_PLAYERID_NUM(#fieldsid,0)
		#fieldsid = PK3V3_GET_CURRENT_FIELDSID()
		$ectype_id = GetCurEctypeID()
		//????????AI??
		SetEctypeVar($ectype_id,0,1)
		$get_num = PK3V3_CAMP_INFO_GET_IN_FIELD_PLAYERID_NUM(#fieldsid,0)
		if $get_num <= 0
			//????????AI??
			SetEctypeVar($ectype_id,0,2)
			BC("chat","map",$ectype_id,"Your opponent didn't join the match, the match has been cancelled!")
			BC("screen","map",$ectype_id,"Your opponent didn't join the match, the match has been cancelled!")
			//??????,???????
			$campid_win = 1
			$campid_lose = 0
			$playerid_num = PK3V3_CAMP_INFO_GET_PLAYERID_NUM(#fieldsid,$campid_win)
			$i = 0
			while($i < $playerid_num)
				$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,$campid_win,$i)
				call cpgiveup()
				PK3V3_SET_SCORE($playerid,$score)
				$i += 1
			endwhile
			//?????????,???????????
			$playerid_num = PK3V3_CAMP_INFO_GET_PLAYERID_NUM(#fieldsid,0)
			$i = 0
			while($i < $playerid_num)
				$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,0,$i)
				BC("messagebox","player",$playerid,"Your party didn't enter the Warsoul Arena in the preparation time, the match has been cancelled. Please register again!")
				$i += 1
			endwhile
			return
		endif
		$get_num = PK3V3_CAMP_INFO_GET_IN_FIELD_PLAYERID_NUM(#fieldsid,1)
		if $get_num <= 0
			//????????AI??
			SetEctypeVar($ectype_id,0,2)
			BC("chat","map",$ectype_id,"Your opponent didn't join the match, the match has been cancelled!")
			BC("screen","map",$ectype_id,"Your opponent didn't join the match, the match has been cancelled!")
			//??????,???????
			$campid_win = 0
			$campid_lose = 1
			$playerid_num = PK3V3_CAMP_INFO_GET_PLAYERID_NUM(#fieldsid,$campid_win)
			$i = 0
			while($i < $playerid_num)
				$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,$campid_win,$i)
				call cpgiveup()
				PK3V3_SET_SCORE($playerid,$score)
				$i += 1
			endwhile
			//?????????,???????????
			$playerid_num = PK3V3_CAMP_INFO_GET_PLAYERID_NUM(#fieldsid,1)
			$i = 0
			while($i < $playerid_num)
				$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,1,$i)
				BC("messagebox","player",$playerid,"Your party didn't enter the Warsoul Arena in the preparation time, the match has been cancelled. Please register again!")
				$i += 1
			endwhile
			return
		endif
		

		#fieldsid = PK3V3_GET_CURRENT_FIELDSID()
		$hp0 = PK3V3_CAMP_INFO_GET_HP(#fieldsid,0)
		$hp1 = PK3V3_CAMP_INFO_GET_HP(#fieldsid,1)
		$hp0_A = $hp0 / 30000
		$hp0_B = $hp0 % 30000
		$hp1_A = $hp1 / 30000
		$hp1_B = $hp1 % 30000
		SetEctypeVar($ectype_id,31,$hp0_A)
		SetEctypeVar($ectype_id,32,$hp0_B)
		SetEctypeVar($ectype_id,33,$hp1_A)
		SetEctypeVar($ectype_id,34,$hp1_B)
//		BC("chat","map",$ectype_id,"|hp0=",$hp0,"|hp0_A=",$hp0_A,"|hp0_B=",$hp0_B)
//		BC("chat","map",$ectype_id,"|hp1=",$hp1,"|hp1_A=",$hp1_A,"|hp1_B=",$hp1_B)
		$i = 0
		$all_power_0 = 0
		$MHP_add = 0
		$playerid_num_0 = PK3V3_CAMP_INFO_GET_PLAYERID_NUM(#fieldsid,0)
		while($i < $playerid_num_0)
			$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,0,$i)
			call GG_power_rev()
			$MHP_add_0 = $MHP_add
			$all_power_0 += $power
			$i = $i + 1
		endwhile
		$i = 0
		$all_power_1 = 0
		$MHP_add = 0
		$playerid_num_1 = PK3V3_CAMP_INFO_GET_PLAYERID_NUM(#fieldsid,1)
		while($i < $playerid_num_1)
			$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,1,$i)
			call GG_power_rev()
			$MHP_add_1 = $MHP_add
			$all_power_1 += $power
			$i = $i + 1
		endwhile
//		BC("chat","map",$ectype_id,"|all_power_0=",$all_power_0,"|all_power_1=",$all_power_1)
		$power0_A = $all_power_0 / 30000
		$power0_B = $all_power_0 % 30000
		$power1_A = $all_power_1 / 30000
		$power1_B = $all_power_1 % 30000
		$res = GetEctypeVar($ectype_id,35)
		if $res < $power0_A
			SetEctypeVar($ectype_id,35,$power0_A)
		endif
		SetEctypeVar($ectype_id,36,$power0_B)
		SetEctypeVar($ectype_id,37,$power1_A)
		SetEctypeVar($ectype_id,38,$power1_B)
		SetEctypeVar($ectype_id,39,$playerid_num_0)
		SetEctypeVar($ectype_id,40,$playerid_num_1)
		SetEctypeVar($ectype_id,41,$MHP_add_0)
		SetEctypeVar($ectype_id,42,$MHP_add_1)
		
	}
	
	//????
	function OnTick(){
		
		#fieldsid = PK3V3_GET_CURRENT_FIELDSID()
		$ectype_id = GetCurEctypeID()
		//??????,??????
		$processbar = GetEctypeVar($ectype_id,11)
		if $processbar < 9999
			$processbar += 5
			SetEctypeVar($ectype_id,11,$processbar)
			if $processbar == 30
				//???????AI?
				call checkrank()
			endif
		endif
		
		$hp0 = PK3V3_CAMP_INFO_GET_HP(#fieldsid,0)
		if $hp0 < 0
			$hp0 = 0
		endif
		$hp1 = PK3V3_CAMP_INFO_GET_HP(#fieldsid,1)
		if $hp1 < 0
			$hp1 = 0
		endif
		SetEctypeVar($ectype_id,116,$hp0)
		SetEctypeVar($ectype_id,117,$hp1)
		
//		$hp0_A = GetEctypeVar($ectype_id,31)
//		$hp0_B = GetEctypeVar($ectype_id,32)
//		$hp1_A = GetEctypeVar($ectype_id,33)
//		$hp1_B = GetEctypeVar($ectype_id,34)
//		BC("chat","map",$ectype_id,"|hp0_A=",$hp0_A,"|hp0_B=",$hp0_B)
//		BC("chat","map",$ectype_id,"|hp1_A=",$hp1_A,"|hp1_B=",$hp1_B)
//		$HHH0 = $hp0_A * 30000
//		$HHH0 += $hp0_B
//		$HHH1 = $hp1_A * 30000
//		$HHH1 += $hp1_B
//		BC("screen","map",$ectype_id,"|HHH0=",$HHH0,"|HHH1=",$HHH1)
		
		$key = 110
		while $key <= 115
			$getvar = GetEctypeVar($ectype_id,$key)
			if $getvar > 0
				$level = GetPlayerInfo($getvar,"level")
				if $level > 0
					$map_id = GetPlayerInfo($getvar,"mapid")
					if $map_id >= 26421
						if $map_id <= 26520
							//????buff
							RemoveStatusByID($getvar,11911)
						endif
					endif
				endif
			endif
			$key = $key + 1
		endwhile
		
		
		//--????---------
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$second = GetSystemTime("second")
		
		$houradd = $hour * 100
		$time = $houradd + $minute
		
		if $time >= 2025
			if $time < 2030
				if $second == 0
					$Leftmin = 2030 - $time
					BC("screen","map",$ectype_id,"The countdown of the Warsoul Arena this week starts: (",$Leftmin,") min")
				endif
			endif
		endif
		
		if $time == 2029
			if $second > 0
				$Leftsec = 60 - $second
				BC("screen","map",$ectype_id,"The countdown of the Warsoul Arena this week starts: (",$Leftsec,"Seconds")
			endif
		endif
		
		$getvar15 = GetEctypeVar($ectype_id,15)
		if $getvar15 == 0
			$isdone = GetServerVar(387)
			if $isdone == 9
				SetEctypeVar($ectype_id,10,1)
				BC("screen","map",$ectype_id,"The match ends, and the arena is closed! Teleporting to Atlantis.")
				SetEctypeVar($ectype_id,15,1)
			endif
			if $time < 1945
				SetEctypeVar($ectype_id,10,1)
				BC("screen","map",$ectype_id,"The match ends, and the arena is closed! Teleporting to Atlantis.")
				SetEctypeVar($ectype_id,15,1)
			endif
			if $time >= 2030
				SetEctypeVar($ectype_id,10,1)
				BC("screen","map",$ectype_id,"The match ends, and the arena is closed! Teleporting to Atlantis.")
				SetEctypeVar($ectype_id,15,1)
			endif
		endif
		if $getvar15 > 0
			$key = 110
			while $key <= 115
				$fly_playerid = GetEctypeVar($ectype_id,$key)
				if $fly_playerid > 0
					$level = GetPlayerInfo($fly_playerid,"level")
					if $level > 0
						$map_id = GetPlayerInfo($fly_playerid,"mapid")
						if $map_id >= 26421
							if $map_id <= 26520
								$lastfly = $getvar15 * 10
								$firstfly = $lastfly - 10
								$getrank = PK3V3_RANK_BY_PLAYERID($fly_playerid)
								if $getrank <= $lastfly
									if $getrank > $firstfly
										call randompos()
										FlyToMap($fly_playerid,475,$map_x,$map_y)
//										BC("messagebox","player",$fly_playerid,"index = ",$getvar15)
									endif
								endif
							endif
						endif
					endif
				endif
				$key = $key + 1
			endwhile
			$getvar15ps = $getvar15 + 1
			SetEctypeVar($ectype_id,15,$getvar15ps)
		endif
		if $getvar15 == 30
			StartEctypeTimer($ectype_id,3)
			call randompos()
			MapPlayerFlyToMap($ectype_id,475,$map_x,$map_y)
			$getvar15ps = $getvar15 + 1
			SetEctypeVar($ectype_id,15,$getvar15ps)
		endif
		
	}
	
	function randompos(){
		
		$randombuff = RandomNumber(1,4)
		if $randombuff == 1
			$map_x = 162
			$map_y = 121
		endif
		if $randombuff == 2
			$map_x = 163
			$map_y = 94
		endif
		if $randombuff == 3
			$map_x = 142
			$map_y = 92
		endif
		if $randombuff == 4
			$map_x = 140
			$map_y = 118
		endif
		$map_x *= 100
		$map_x /= 256
		$map_y *= 100
		$map_y /= 256
		
	}

	function resetplayerjoin(){
		
//		$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,$campid,$i)
		$nowweek = GetNowWeek()
		$playerweek = GetPlayerVar($playerid,3460)
		if $playerweek != $nowweek
			//3460	3.85 3v3	????????
			SetPlayerVar($playerid,3460,$nowweek)
			//3458	3.85 3v3	?????
			SetPlayerVar($playerid,3458,0)
			//141	3.85	3v3 reward ?1????
			SetPlayerVar($playerid,141,1)
			//	3461	???
			SetPlayerVar($playerid,3461,0)
		endif
		
		//3457	3.85 3v3	???????
		SetPlayerVar($playerid,3457,0)
		//3459	3.85 3v3	?????
		SetPlayerVar($playerid,3459,0)
		//4201	3.85 3v3	??????
		SetPlayerVar($playerid,4201,0)
		//????,????
		$winold = PK3V3_CAMP_INFO_GET_WINS(#fieldsid,$campid)
		SetPlayerVar($playerid,3469,$winold)
		//367	v3.88	???????????
		SetPlayerVar($playerid,367,0)
		
		
	}
	
	function OnAbort(){
		
		#fieldsid = PK3V3_GET_CURRENT_FIELDSID()
		$ectype_id = GetCurEctypeID()
		
		$playeridAbort = PK3V3_GET_ABORT_PLAYERID(#fieldsid)
		$scoreAbort = PK3V3_GET_SCORE($playeridAbort)
		
		//367	v3.88	???????????
		$isrun = GetPlayerVar($playeridAbort,367)
		if $isrun == 1
			return
		endif
		//??????????????
		$isovertime = GetEctypeVar($ectype_id,10)
		if $isovertime == 1
			return
		endif
		//????????????,??????????????
		$winold_player = GetPlayerVar($playeridAbort,3469)
		//????(win*win+win)*10,??10?????(win-10)??,?????30????
		$scoresub_win = 0
		if $winold_player > 30
			$winold_player = 30
		endif
		if $winold_player > 0
			$scoresub_win = $winold_player * $winold_player
			$scoresub_win += $winold_player
			$scoresub_win *= 10
			if $winold_player > 10
				$winold_player_sub = $winold_player - 10
				$winold_player_sub_PT = $winold_player_sub * $winold_player_sub
				$winold_player_sub_PT += $winold_player_sub
				$winold_player_sub_PT *= 10
				$scoresub_win -= $winold_player_sub_PT
			endif
		endif
		
		//????40?
		$scoresub = 40
		//??????????
		if $scoresub < $scoresub_win
			$scoresub = $scoresub_win
		endif
		//????7??????
		$scoresub_dv8 = $scoreAbort / 7
//		if $scoresub < $scoresub_dv8
			$scoresub += $scoresub_dv8
//		endif
		
		//????0???
		if $scoreAbort < $scoresub
			$scoresub = $scoreAbort
		endif
		
		$score = $scoreAbort - $scoresub
		if $scoresub >= 300
			#nameAbort = GetPlayerInfo($playeridAbort,"name")
			BC("screen","server",-1,"Player ",#nameAbort," left from the Warsoul Arena! They are deducted (",$scoresub,") as a punishment!")
			BC("dialogbox","player",$playeridAbort,"You left from the Arena, can't get a reward! \n\nThe original score (",$scoreAbort,"), the punishment for leaving (",$scoresub,") Score\nPresent Score: (",$score,") \n\n (The higher score will get a higher score deduction, leaving from the Winning streak will get a higher score deduction!)")
		else
			BC("dialogbox","player",$playeridAbort,"You left from the Arena, can't get a reward! \n\nThe original score (",$scoreAbort,"), the punishment for leaving (",$scoresub,") Score\nPresent Score: (",$score,") \n\n (The higher score will get a higher score deduction, leaving from the Winning streak will get a higher score deduction!)")
		endif
		
		if $score < 0
			$score = 0
		endif
		if $score > 60000
			$score = 60000
		endif
		PK3V3_SET_SCORE($playeridAbort,$score)
		
		
	}
	
	function checkrank(){
		//???????AI?
		$indexW = 1
		while $indexW <= 20
			$setindex = 387 + $indexW
			SetServerVar($setindex,0)
			$indexW += 1
		endwhile
		
		$indexW = 1
		while $indexW <= 10
			$id_pk3v3 = PK3V3_PLAYERID_BY_RANK($indexW)
			if $id_pk3v3 > 0
				$setindex = 387 + $indexW
				$scoreindex = 397 + $indexW
				SetServerVar($setindex,$id_pk3v3)
				$getlevel = GetPlayerInfo($id_pk3v3,"level")
				if $getlevel > 0
					$pkscore = PK3V3_GET_SCORE($id_pk3v3)
					SetServerVar($scoreindex,$pkscore)
				else
					SetServerVar($scoreindex,0)
				endif
			else
				$indexW = 11
			endif
			$indexW += 1
		endwhile
		
	}
	
	function GG_power_rev(){
//	1.????????	2.??HP??(????)

		$power = GetPlayerInfo($playerid,"powerwostatus")
		$profession = GetPlayerInfo($playerid,"profession")
		if $profession == 1
//1:??			15%			10%
			$power *= 115
			$power /= 100
			$MHP_add += 10
		endif
		if $profession == 2
//2:??			30%			25%
			$power *= 130
			$power /= 100
			$MHP_add += 25
		endif
		if $profession == 3
//3:??			0%			0%
			$power *= 100
			$power /= 100
			$MHP_add += 0
		endif
		if $profession == 4
//4:??			10%			5%
			$power *= 110
			$power /= 100
			$MHP_add += 5
		endif
		if $profession == 5
//5:??			30%			25%
			$power *= 130
			$power /= 100
			$MHP_add += 25
		endif
		if $profession == 6
//6:???		10%			5%
			$power *= 110
			$power /= 100
			$MHP_add += 5
		endif
		if $profession == 7
//7:???		-5%			5%
			$power *= 95
			$power /= 100
			$MHP_add += 5
		endif
		
		
	}
	
	function GG_MHP(){
		
		//????MAXHP
		$all_power /= $playerid_num
		//BC("chat","server",-1,"|all_power=",$all_power)
		if $all_power < 4000
			$all_power = 4000
		endif
		if $all_power > 1000000
			$all_power = 1000000
		endif
		//((power*100)^0.35-90)*17500
		$all_power *= 100
		$pros_sub = 90
		$pros_add = 15000
		$poweradd = powercommand($all_power,0.35)
		$poweradd -= $pros_sub
		$poweradd *= $pros_add
		$mhp = $poweradd
		//????????HP
		$mhp_ADD = $mhp / 100
		$mhp_ADD = $mhp_ADD * $MHP_add
		$mhp += $mhp_ADD
		
	}
	
	//???????????,???????????
	function cpgiveup(){
		
		$ectype_id = GetCurEctypeID()
		#fieldsid = PK3V3_GET_CURRENT_FIELDSID()
		$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,$campid_win,$i)
		$score = PK3V3_GET_SCORE($playerid)
		//?????????
		$winner_cpold_id = 8 + $campid_lose
		$cpwinold = GetEctypeVar($ectype_id,$winner_cpold_id)
		//??????????:?????????????10+20?
		$cpMHPid = 118 + $campid_lose
		$cpMHP = GetEctypeVar($ectype_id,$cpMHPid)
		$hpline = $cpMHP / 2
		$cpHP = PK3V3_CAMP_INFO_GET_HP(#fieldsid,$campid_lose)
		if $cpHP > $hpline
			$processbar = GetEctypeVar($ectype_id,11)
			if $processbar < 30
//				BC("messagebox","player",$playerid,"Your opponent has given up, the match is cancelled!")
				return
			endif
		endif

		//????2???
		if $cpwinold < 2
//			BC("messagebox","player",$playerid,"Your opponent has given up, the match is cancelled!")
			return
		endif
		$score_ori = $score
		//????------------------------
		//(win*win+win)*10,??10?????(win-10)??,?????30????
		if $cpwinold > 30
			$cpwinclac = 30
		else
			$cpwinclac = $cpwinold
		endif
		$cpwinold_PT = $cpwinclac * $cpwinclac
		$cpwinold_PT += $cpwinclac
		$cpwinold_PT *= 10
		if $cpwinclac > 10
			$cpwinold_sub = $cpwinclac - 10
			$cpwinold_sub_PT = $cpwinold_sub * $cpwinold_sub
			$cpwinold_sub_PT += $cpwinold_sub
			$cpwinold_sub_PT *= 10
			$cpwinold_PT -= $cpwinold_sub_PT
		endif
		$score += $cpwinold_PT
		$score_add += $cpwinold_PT
		//????
		BC("dialogbox","player",$playerid,"The opponent has left! Score: \n End the opponent's (",$cpwinold,"Winning streak:(",$cpwinold_PT,") Score\n\nOriginal Score (",$score_ori,") Score, in this round add (",$score_add,") Score\nPresent Score: (",$score,") Score")
		//????
		if $i == 0
			#name = GetPlayerInfo($playerid,"name")
			$playercpid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,$campid_lose,0)
			#namecp = GetPlayerInfo($playercpid,"name")
			BC("screen","map",$ectype_id,#name,"Your team ended the opponent's ",$cpwinold,"Winning streak! Got a Winning streak. (",$cpwinold_PT,") Score")
			if $cpwinold >= 5
				BC("chat","server",$ectype_id,#name," Your party in the Warsoul Arena ended",#namecp,"the opponent's",$cpwinold,"Winning streak! Got a Winning streak. (",$cpwinold_PT,") Score!")
				BC("screen","server",$ectype_id,#name," Your party in the Warsoul Arena ended",#namecp,"the opponent's",$cpwinold,"Winning streak! Got a Winning streak. (",$cpwinold_PT,") Score!")
			endif
		endif
		
	}
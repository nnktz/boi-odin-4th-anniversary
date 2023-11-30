///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32506 ??1
///****************************  
//32506	????
//32507	????(??)
//32525	????
//32484	????       
//??	131	170	133	166	131	162	135	161	129	159	124	158
	function OnDead(){

		//???? ??id 541
		
		$ectype_id = GetEctypeID(-1, 573)
		$varline = GetEctypeVar($ectype_id,0)
		if $varline == 1
		$turn = GetEctypeVar(-1, 11)
		$turn = $turn + 1
		SetEctypeVar($ectype_id,11,$turn)
		if $turn == 1
			BC("screen","map",$ectype_id,"Spirit Crystals destroyed: 1/6") 
			AddMonsterByFloat(32506,1,$ectype_id,131,170,1,0,90)
		endif		
		if $turn == 2
			BC("screen","map",$ectype_id,"Spirit Crystals destroyed: 2/6")
			AddMonsterByFloat(32506,1,$ectype_id,133,166,1,0,90)
		endif		
		if $turn == 3
			BC("screen","map",$ectype_id,"Spirit Crystals destroyed: 3/6")
			AddMonsterByFloat(32506,1,$ectype_id,131,162,1,0,90)
		endif		
		if $turn == 4
			BC("screen","map",$ectype_id,"Spirit Crystals destroyed: 4/6")
			AddMonsterByFloat(32506,1,$ectype_id,135,161,1,0,90)
		endif		
		if $turn == 5
			BC("screen","map",$ectype_id,"Spirit Crystals destroyed: 5/6")
			AddMonsterByFloat(32506,1,$ectype_id,129,159,1,0,90)
		endif		
		if $turn == 6
			BC("screen","map",$ectype_id,"The Crystal Gate has appeared!")
			AddMonsterByFloat(32484,1,$ectype_id,127,156,1,0,90)
		endif		
		if $turn == 7
			OpenMask(9,$ectype_id)
			BC("screen","map",$ectype_id,"The path forward has been opened. Keep moving!")
			PlayEffect(-1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			StartEctypeTimer($ectype_id,0)	
		endif	
//---------------
		$rand = RandomNumber(1,100)
		$turns = GetEctypeVar(-1, 8)
		if $turns < 1
			if $rand > 0
				if $turns < 10
				$turns = $turns + 1
				SetEctypeVar($ectype_id,8,$turns)
				BC("screen","map",$ectype_id,"Crystal Fragments acquired: ",$turns)
				if $turns >= 4 
					BC("screen","map",$ectype_id,"You can open the Crystal Treasure upon completing the instance!")
				endif
				endif
			endif
		endif
//---------------
		endif
		if $varline == 32 
			$count = GetEctypeVar($ectype_id,19)
			$count += 1
			SetEctypeVar($ectype_id,19,$count)
			if $cout == 2 
				$count1 = GetEctypeVar($ectype_id,16)
				$count1 += 1
				SetEctypeVar($ectype_id,16,$count1)
			endif	
		endif	
	}
///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName:	32467 axia
///****************************  

	function OnDead(){
		$ectype_id = GetEctypeID(-1, 573)
		//baoxiang ?? 
		$var = GetEctypeVar($ectype_id,0)
		if $var == 32
			StartEctypeTimer($ectype_id,2)	
			SetEctypeVar($ectype_id,63,1)
			//---------------
		$rand = RandomNumber(1,100)
		$turns = GetEctypeVar(-1, 8)
		if $rand > 0
			$turns = $turns + 1
			SetEctypeVar($ectype_id,8,$turns)
			BC("screen","map",$ectype_id,"Crystal Fragments acquired: ",$turns)
			if $turns >= 4
				BC("screen","map",$ectype_id,"You can open the Crystal Treasure upon completing the instance!")
			endif
		endif
//--------------
		endif
		if $var == 31
			StartEctypeTimer($ectype_id,4)	
		endif
		if $var == 22
			StartEctypeTimer($ectype_id,3)	
			$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
		$dropitemDbase = 90298
		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 9999
  					DropMonsterItems($teamplayer_id,$dropitemDbase)
  				endif
  			endif
			$Cid = $Cid + 1
		endwhile		
		endif
		if $var == 21
		$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
		$dropitemDbase = 90299
		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 9999
  					DropMonsterItems($teamplayer_id,$dropitemDbase)
  				endif
  			endif
			$Cid = $Cid + 1
		endwhile		
			StartEctypeTimer($ectype_id,1)	
		//---------------
		$rand = RandomNumber(1,100)
		$turns = GetEctypeVar(-1, 8)
		if $rand > 0
			$turns = $turns + 1
			SetEctypeVar($ectype_id,8,$turns)
			BC("screen","map",$ectype_id,"Crystal Fragments acquired: ",$turns)
			if $turns >= 4 
				BC("screen","map",$ectype_id,"You can open the Crystal Treasure upon completing the instance!")
			endif
		endif
//--------------
		endif
		
	}
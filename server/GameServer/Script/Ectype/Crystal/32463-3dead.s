///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32483????
///****************************  
//	$mon1 = 32471
//	$mon2 = 32468
	function OnDead(){

		//1177	????

		
		$ectype_id = GetEctypeID(-1, 573)
		$var = GetEctypeVar($ectype_id,0)
		if $var == 31
			StartEctypeTimer($ectype_id,4)	
			$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
		DeleteMonster($ectype_id,32524)
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
			StartEctypeTimer($ectype_id,1)	
			$mon1 = 32477
			AddMonsterByFloat( $mon1 , 1, $ectype_id, 67, 157, 1 ,0 ,180 )	
			$playerID = GetPlayerID()
			DeleteMonster($ectype_id,32500)
			DeleteMonster($ectype_id,32501)
			BC("screen","map",$ectype_id,"With your help, Azura has extinguished the power of Flame!")
			SetEctypeVar($ectype_id,49,5)
			
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
		//---------------1
		if $var == 1
			AddNpcByPos( 1177 ,$ectype_id ,61,158,79200,0)
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
		endif
		//---------------32
		if $var == 32
			$sametime1 = GetEctypeVar($ectype_id,16) 
			if $sametime1 == 1 
				$sametime1 += 1
				SetEctypeVar($ectype_id,16,$sametime1)
			endif
			$turn = GetEctypeVar(-1, 3)
			if $turn == 5 
				StartEctypeTimer($ectype_id,2)
			endif
			$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
		$dropitemDbase = 90300
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
	DeleteMonster($ectype_id,32500)
	DeleteMonster($ectype_id,32501)
		
	}
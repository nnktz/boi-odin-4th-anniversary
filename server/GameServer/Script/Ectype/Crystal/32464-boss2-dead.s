///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32464???? 
///****************************  

	function OnDead(){

		//32464????

		
		$ectype_id = GetEctypeID(-1, 573)
		$var = GetEctypeVar($ectype_id,0)
		if $var == 31
			StartEctypeTimer($ectype_id,4)	
			//-------------------------????---------------
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
		//-------------------------????---------------
		endif
		if $var == 22
			
			//-------------------------????---------------
			$playerID = GetPlayerID()
			if $playerID < 0
				return
			endif
			$count = GetEctypeVar($ectype_id,4)
			if $count >= 5 
				BC("screen","map",$ectype_id,"The Power of Ice has been destroyed, and the  flames will soon engulf all of Quartz Grotto.")
				SetEctypeVar($ectype_id,49,15)
				StartEctypeTimer($ectype_id,3)	
				$dropitemDbase = 90300
			else 
				StartEctypeTimer($ectype_id,3)	
				BC("screen","map",$ectype_id,"Defeat the power of Ice!")
				SetEctypeVar($ectype_id,49,10)
				//$mon1 = 32517
				///???????
				//AddMonsterByFloat( $mon1 , 1, $ectype_id, 61, 158, 1 ,0 ,180 )	
				$dropitemDbase = 90298
			endif
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
		//-------------------------????---------------
		endif
		
		if $var == 32
			$sametime1 = GetEctypeVar($ectype_id,16) 
			$sametime1 += 1
			SetEctypeVar($ectype_id,16,$sametime1) 
			SetEctypeVar($ectype_id,64,9) 
			StartEctypeTimer($ectype_id,6)
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
////------------------------------------------//diaoluo
//	$playerID = GetPlayerID()
//		if $playerID < 0
//			return
//		endif
//		$dropitemDbase = 90243
//		$Cid = 0
//		while $Cid < 6
//			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
//			if $teamplayer_id > 0
//				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
//				if $lenD < 9999
//  					DropMonsterItems($teamplayer_id,$dropitemDbase)
//  				endif
//  			endif
//			$Cid = $Cid + 1
//		endwhile		
////----------------------????--------------------	
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
		
	}
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/3
	//		Author:???(??,??,??)
	//		TaskName:BOSS
	//		TaskID:52321_3_BOSS_SS.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 540,??????? 1

		$ectype_id = GetEctypeID(-1, 540)


	
//--------------????------------------------------
		//???boss ????? 90170  

		$playerID = GetPlayerID()
//		if $playerID < 0
//			return
//		endif
//------------------------------------------		

		$dropitemD = 90170
		$teamD_count = 0
		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
			$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 15
					$teamD_count = $teamD_count + 1
				endif
			endif
			$Cid = $Cid + 1
		endwhile
		BC("screen","map", $ectype_id, "",$teamD_count)
		
		$maskD = 60 / $teamD_count
		$maskD2 = $maskD
		$randbuff = RandomNumber( 0 , 59 )

		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 15
  				if $randbuff < $maskD2
  					#name = GetPlayerInfo( $teamplayer_id, "name" )
 						BC( "screen", "map", $ectype_id, "The hero ",#name," found the Cursed Magic Vial after defeating the Abyss Abomonation!" )	
  					DropMonsterItems($teamplayer_id,$dropitemD)
  					$maskD2 = -999
  					//$droped1 = $Cid
  					// ???? ?????,1????,?????????????,2 NPC?? 788  ??793
  					SetEctypeVar(-1,23,1)
  					DeleteNPC(788, $ectype_id)
  					AddNPC(793,$ectype_id)
  					BC( "screen", "map", $ectype_id, "Beware, the Naga Queen has sensed the Cursed Magic Vial! " )
  				else
//  					DropMonsterItems($teamplayer_id,$dropitemDbase)
  					$maskD2 = $maskD2 + $maskD
  				endif
				endif
			endif
			$Cid = $Cid + 1
		endwhile		
//----------------------????--------------------		


		//??????,?????
		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 15
//      		$weektask1 = GetPlayerVar($teamplayer_id,3565)
//      		if $weektask1 != 255
//      			SetPlayerVar($teamplayer_id,3565,1)
//      			OpenUI($teamplayer_id,1)
//      		endif
      		$weektask2 = GetPlayerVar($teamplayer_id,3566)
      		if $weektask2 != 255
      			SetPlayerVar($teamplayer_id,3566,1)
      			OpenUI($teamplayer_id,1)
      		endif      		
				endif
			endif
			$Cid = $Cid + 1
		endwhile					
		//????


		
		
	}
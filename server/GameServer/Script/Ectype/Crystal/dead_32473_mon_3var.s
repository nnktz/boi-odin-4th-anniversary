///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName:32473 ???
///****************************  
//34/32497	??????      20
//35/32498	?????        20
//36/32499	????-??     20
//37/32503	????-???   20
//38/32504	????         -------
//39/32515	????          10 Y
//40/32529	??????      4 Y
//41/32530	????          50    



	function OnDead(){

		//???? ??id 541
		
		$ectype_id = GetEctypeID(-1, 573)
		$varline = GetEctypeVar($ectype_id,0)
		PlayEffect(-1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		if $varline == 31
			BC("screen","map",$ectype_id,"With the Flying Leopard King's death, the path to the Land of Ice has opened!")
			StartEctypeTimer($ectype_id,4)
		endif
			if $varline == 21
				BC("screen","map",$ectype_id,"With the Flying Leopard King's death, the path to the Land of Darkness has opened!")
				StartEctypeTimer($ectype_id,1)
			endif
			if $varline == 22
				BC("screen","map",$ectype_id,"With the Flying Leopard King's death, the path to the Land of Darkness has opened!")
				StartEctypeTimer($ectype_id,3)
			endif
			if $varline == 32
				BC("screen","map",$ectype_id,"With the Flying Leopard King's death, the path to the Land of Flame has opened!")
				OpenMask(16,$ectype_id)
			endif
		//---------------
		$rand = RandomNumber(1,100)
		$turns = GetEctypeVar(-1, 8)
		if $rand > 80
			if $turns < 10
			$turns = $turns + 1
			SetEctypeVar($ectype_id,8,$turns)   
			BC("chat","map",$ectype_id,"The Awakened Leopard King has fallen asleep. Received a Crystal Fragment.")   
			BC("screen","map",$ectype_id,"The Awakened Leopard King has fallen asleep. Received a Crystal Fragment.") 
			if $turns >= 4 
				BC("screen","map",$ectype_id,"You can open the Crystal Treasure upon completing the instance!")
			endif
			endif
		endif
//---------------
	//-------------------------????---------------
			$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
		if $varline == 32
			$dropitemDbase = 90298 
		else
			if $varline == 31
				$dropitemDbase = 90298
			else
				$dropitemDbase = 90304
			endif
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
//		if $turn == 1
//			
//			OpenMask(9,$ectype_id)
//			StartEctypeTimer($ectype_id,0)	
//		endif	
//		endif
//		if $varline == 32 
//			$count = GetEctypeVar($ectype_id,19)
//			$count += 1
//			SetEctypeVar($ectype_id,19,$count)
//			if $cout == 2 
//				$count1 = GetEctypeVar($ectype_id,16)
//				$count1 += 1
//				SetEctypeVar($ectype_id,16,$count1)
//			endif
//			
//		endif	
	}
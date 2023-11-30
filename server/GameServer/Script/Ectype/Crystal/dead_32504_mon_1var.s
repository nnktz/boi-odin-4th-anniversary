///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32504	????
///****************************  
//34/32497	??????      20
//35/32498	?????        20
//36/32499	????-??     20
//37/32503	????-???   20
//38/32504	????         	30
//39/32515	????          10 Y
//40/32529	??????      4 Y
//41/32530	????          50    



	function OnDead(){

		//???? ??id 541
		
		$ectype_id = GetEctypeID(-1, 573)
		$varline = GetEctypeVar($ectype_id,0)
		//if $varline == 1
		$turn = GetEctypeVar(-1, 38)
		$turn = $turn + 1
		SetEctypeVar($ectype_id,38,$turn)
		BC("screen","map",$ectype_id,"Darkshadow Crystals found: ",$turn) 
		$rand = RandomNumber(1,100)   
		if $rand <= 40
			BC("screen","map",$ectype_id,"This Darkshadow Crystal has already lost its power.") 
//------------??-------------------------
	  $lv = GetEctypeVar($ectype_id,5)
	  $fieldlevel = GetEctypeVar($ectype_id,6)
	   call exp()
	   $exp1 = $exp1 / 100
	   $exp2 = $exp2 / 100
	   $godexp = $godexp / 100
	   $playerID = GetPlayerID()
			if $playerID < 0
				return
			endif
	   $Cid = 0
			while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 9999
  					AddPlayerInfo( $teamplayer_id , "exp" , $exp2 )
						if $fieldlevel > 0
							AddFieldExp( $teamplayer_id , $godexp )
						endif
  				endif
  			endif
			$Cid = $Cid + 1
			endwhile		
		
//------------??-------------------------
		else
			
				$turn1 = GetEctypeVar(-1, 10)
				$turn1 = $turn1 + 1
				SetEctypeVar($ectype_id,10,$turn1)
				BC("screen","map",$ectype_id,"Shadow Cores acquired: ",$turn1)
				if $turn1 == 10 
					BC("screen","map",$ectype_id,"You can start the Darkshadow Trial upon completing the instance!")
				endif
			
		endif
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
	function exp(){
		
//----------lv*lv*10*12+lv*lv*400-------------
		$a = $lv * $lv
		$b = 120 * $a
		$c = 400 * $a
		$exp1 = $b + $c
	
//----------6*(4*lv-76)*lv*lv/5 + 400*lv*lv-----
		$a = $lv * $lv
		$b = 4 * $lv
		$c = $b - 76
		$d = $c * $a
		$e = 6 * $d
		$f = $e / 5
		$g = 400 * $a
		$exp2 = $f + $g
//---------------------------------
			//?????
			//????? = ????^2+0.6*????+1000
			//????? = ????? * 60
			$fieldlevel = GetEctypeVar($ectype_id,6)
			$godexp = $fieldlevel * $fieldlevel
			$b = $fieldlevel * 6
			$b = $b / 10
			$godexp = $godexp + $b
			$godexp = $godexp + 1000
			$godexp = $godexp * 60
			
			
//---------------------------------
}
///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName:32488	??42-50
///****************************4  
//34/32497	??????      20
//35/32498	?????        20
//36/32499	????-??     20
//37/32503	????-???   20
//38/32504	????         -------
//39/32515	????          10 Y
//40/32529	??????      4 Y
//41/32530	????          50    
//42/32488  fuwen


	function OnDead(){

		//???? ??id 541
		
		$ectype_id = GetEctypeID(-1, 573)
		$varline = GetEctypeVar($ectype_id,0)
		//if $varline == 1
		$turn = GetEctypeVar(-1, 42)
		$turn = $turn + 1
		SetEctypeVar($ectype_id,42,$turn)
		BC("screen","map",$ectype_id,"Monsters killed: ",$turn,"/50") 
		$ectype_id = GetEctypeID(-1, 573)
		$var = GetEctypeVar($ectype_id,10)
		$level = GetEctypeVar($ectype_id,5)
		$flevel = GetEctypeVar($ectype_id,6)
		$posx = GetPlayerInfo(-1,"mapx")
		$posy = GetPlayerInfo(-1,"mapy")
		$count = GetEctypeVar(-1, 43)
			$mon2 = 32488
		if $count < 90
		if $flevel > 0	
			$rand = RandomNumber(3,7)
			$posx1 = $posx + $rand
			$posy1 = $posy - $rand	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx , $posy , 1 )	
			$count = $count + 1
			SetEctypeVar($ectype_id,43,$count)
			else
			$rand = RandomNumber(3,7)
			$posx1 = $posx + $rand
			$posy1 = $posy - $rand
			$posx2 = $posx - $rand
			$posy2 = $posy + $rand
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx , $posy , 1 )		
			$count = $count + 1
			SetEctypeVar($ectype_id,43,$count)
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
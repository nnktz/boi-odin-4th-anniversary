///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName:32529	??????
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
		//if $varline == 1
		$turn = GetEctypeVar(-1, 40)
		$turn = $turn + 1
		SetEctypeVar($ectype_id,40,$turn)
		BC("screen","map",$ectype_id,"Mirrors broken: ",$turn,"/4") 
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			$posx = GetPlayerInfo(-1,"mapx")
			$posy = GetPlayerInfo(-1,"mapy")
			$mon2 = 32503
			$posx1 = $posx + 2
			$posy1 = $posy - 2
			$posx2 = $posx - 2
			$posy2 = $posy + 2
			if $flevel > 0			
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,$posx , $posy , 1 )	
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,$posx1, $posy1, 1 )	
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,$posx2, $posy1, 1 )	
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,$posx1, $posy2, 1 )	
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,$posx2, $posy2, 1 )					
			else
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,$posx , $posy , 1 )	
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,$posx1, $posy1, 1 )	
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,$posx2, $posy1, 1 )	
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,$posx1, $posy2, 1 )	
			AddLevelMonster( $mon2,256,$level,1,$ectype_id,$posx2, $posy2, 1 )	
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
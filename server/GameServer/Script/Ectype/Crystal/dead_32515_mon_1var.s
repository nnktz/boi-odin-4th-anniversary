///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32515	????
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
		if $varline == 1
			$turn = GetEctypeVar(-1, 39)
			$turn = $turn + 1
			SetEctypeVar($ectype_id,39,$turn)
			BC("screen","map",$ectype_id,"Darkshadow Statues destroyed: ",$turn,"/3") 
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			$posx = GetPlayerInfo(-1,"mapx")
			$posy = GetPlayerInfo(-1,"mapy")
			$stand = GetEctypeVar($ectype_id,73)
			$stand = $stand - 10
			SetEctypeVar($ectype_id,73,$stand)
			$mon2 = 32530
			$posx1 = $posx + 2
			$posy1 = $posy - 2
			if $flevel > 0			
			AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,$posx , $posy , 1 )	
			AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,$posx1, $posy1, 1 )	
			AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,$posx , $posy1, 1 )	
			AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,$posx1, $posy , 1 )	
			AddLevelFieldMonster( $mon2,266,$level,266,$flevel,1,$ectype_id,$posx , $posy , 1 )					
			else
			AddLevelMonster( $mon2,266,$level,1,$ectype_id,$posx , $posy , 1 )	
			AddLevelMonster( $mon2,266,$level,1,$ectype_id,$posx1, $posy1, 1 )	
			AddLevelMonster( $mon2,266,$level,1,$ectype_id,$posx , $posy1, 1 )	
			AddLevelMonster( $mon2,266,$level,1,$ectype_id,$posx1, $posy , 1 )	
			AddLevelMonster( $mon2,266,$level,1,$ectype_id,$posx , $posy , 1 )	
			endif   
		else
		$turn = GetEctypeVar(-1, 39)
		$turn = $turn + 1
		SetEctypeVar($ectype_id,39,$turn)
		BC("screen","map",$ectype_id,"Darkshadow Statues destroyed: ",$turn,"/10") 
		$stand = GetEctypeVar($ectype_id,73)
		$stand = $stand - 3
		SetEctypeVar($ectype_id,73,$stand)
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			$posx = GetPlayerInfo(-1,"mapx")
			$posy = GetPlayerInfo(-1,"mapy")
			$mon2 = 32530
			$posx1 = $posx + 2
			$posy1 = $posy - 2
			if $flevel > 0			
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx , $posy , 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx1, $posy1, 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx , $posy1, 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx1, $posy , 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx , $posy , 1 )					
			else
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx , $posy , 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx1, $posy1, 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx , $posy1, 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx1, $posy , 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx , $posy , 1 )	
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
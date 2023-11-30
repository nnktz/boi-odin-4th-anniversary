///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName:32498	?????
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
		$turn = GetEctypeVar(-1, 35)
		$turn = $turn + 1
		SetEctypeVar($ectype_id,35,$turn)
		BC("screen","map",$ectype_id,"Awakened Leopards killed: ",$turn,"/20") 
		if $turn == 20 
			$mon1 = 32473
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			if $varline == 31
			$posx = 62
			$posy = 68
			BC("screen","map",$ectype_id,"The Flying Leopard King has appeared at (159, 174) in Crystal Nexus!") 
			else
				if $varline == 32
					$posx = 46
					$posy = 65
					BC("screen","map",$ectype_id,"The Flying Leopard King has appeared at (119, 167) in Crystal Nexus!") 
				else
				$posx = 54
				$posy = 72
				BC("screen","map",$ectype_id,"The Flying Leopard King has appeared at (138, 184) in Crystal Nexus!") 
				endif
			endif
			if $flevel > 0
				AddLevelFieldMonster( $mon1,258,$level,258,$flevel,1,$ectype_id,$posx, $posy, 1 )
			else
				AddLevelMonster($mon1,258,$level,1,$ectype_id,$posx, $posy, 1)
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
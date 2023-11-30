///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32499	????-??  
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
		$turn = GetEctypeVar(-1, 36)
		$turn = $turn + 1
		SetEctypeVar($ectype_id,36,$turn)
		BC("screen","map",$ectype_id,"Destroy the crystals to awaken the Leopard. Flying Leopards Awakened: ",$turn,"/20") 
		$mon1 = 32498
		$level = GetEctypeVar($ectype_id,5)
		$flevel = GetEctypeVar($ectype_id,6)
		$posx = GetPlayerInfo(-1,"mapx") 
		$posy = GetPlayerInfo(-1,"mapy") 

		if $flevel > 0
		AddLevelFieldMonster( $mon1,256,$level,256,$flevel,1,$ectype_id,$posx, $posy, 1 )
		else
		AddLevelMonster($mon1,256,$level,1,$ectype_id,$posx, $posy, 1)
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
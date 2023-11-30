///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32530	???? 
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
		$turn = GetEctypeVar(-1, 41)
		$turn = $turn + 1
		SetEctypeVar($ectype_id,41,$turn)
		BC("screen","map",$ectype_id,"Winged Sentinels killed: ",$turn,"/15. Shadow Witch Obsidia is awakening!") 
		if $turn == 15 
			$mon1 = 32465
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			if $flevel > 0
				AddLevelFieldMonster( $mon1,268,$level,268,$flevel,1,$ectype_id,67, 105, 1 )
			else
				AddLevelMonster($mon1,268,$level,1,$ectype_id,67, 105, 1)
			endif  
		endif
	else
		$turn = GetEctypeVar(-1, 41)
		$turn = $turn + 1
		SetEctypeVar($ectype_id,41,$turn)
		BC("screen","map",$ectype_id,"Winged Sentinels killed: ",$turn,"/50. Shadow Witch Obsidia is awakening!") 
		if $turn == 50 
			$mon1 = 32465
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			if $flevel > 0
				AddLevelFieldMonster( $mon1,259,$level,259,$flevel,1,$ectype_id,67, 105, 1 )
			else
				AddLevelMonster($mon1,259,$level,1,$ectype_id,67, 105, 1)
			endif	
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
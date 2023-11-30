 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.2.25  
 //  Author:???  
 //  TaskName: area_h 
 //****************************  
	function EnterArea(){
	$ectype_id = GetPlayerInfo(-1,"mapid")
		$rand = RandomNumber(1,10)
		$count_total = GetEctypeVar($ectype_id,83) 
		$count_one = GetEctypeVar($ectype_id,81) 
		if $rand == 5
			if $count_total <= 3
				if $count_one < 1
					BC( "screen", "map", $ectype_id, "A crystal shower is approaching Quartz Grotto. Darkshadow Crystals will soon land in the Land of Ice in the North!")
					$mon1 = 32535
		//			AddMonsterByFloat( $mon1 , 1, $ectype_id, 61, 66, 1 ,0 ,180 )
		//		AddMonsterByFloat( $mon1 , 1, $ectype_id, 122, 116, 1 ,0 ,180 )
		//		AddMonsterByFloat( $mon1 , 1, $ectype_id, 67, 154, 1 ,0 ,180 )
		//		AddMonsterByFloat( $mon1 , 1, $ectype_id, 105, 238, 1 ,0 ,180 )
		//		AddMonsterByFloat( $mon1 , 1, $ectype_id, 170, 268, 1 ,0 ,180 )
		//		AddMonsterByFloat( $mon1 , 1, $ectype_id, 220, 248, 1 ,0 ,180 )
		//		AddMonsterByFloat( $mon1 , 1, $ectype_id, 220, 179, 1 ,0 ,180 )
					AddMonsterByFloat( $mon1 , 1, $ectype_id, 187, 116, 1 ,0 ,180 )
		//		AddMonsterByFloat( $mon1 , 1, $ectype_id, 144, 170, 1 ,0 ,180 )
					$count_one += 1
					$count_total += 1
					SetEctypeVar($ectype_id,83,$count_total)
					SetEctypeVar($ectype_id,81,$count_one)
				endif
			endif
		endif
	//----------------------------------------------------------------------------
		
	}
	
	function LeaveArea(){
	
	$ectype_id = GetPlayerInfo(-1,"mapid")
	
	}
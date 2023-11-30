 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.2.25  
 //  Author:???  
 //  TaskName: area_a 
 //****************************  
	function EnterArea(){
	$ectype_id = GetPlayerInfo(-1,"mapid")
	$count = GetEctypeVar($ectype_id,57)
	if $count == 0 
		AddMonsterByFloat(32542,1,$ectype_id,90,93,0,0,5)
		AddMonsterByFloat(32541,1,$ectype_id,85,98,0,0,5)
		AddMonsterByFloat(32540,1,$ectype_id,95,88,0,0,5)
		$level = GetEctypeVar($ectype_id,5)
		$flevel = GetEctypeVar($ectype_id,6)
		$mon1 = 32466
		if $flevel > 0
			AddLevelFieldMonster( $mon1,260,$level,260,$flevel,1,$ectype_id,25, 27, 1 )
		else
			AddLevelMonster ( $mon1,260,$level,1,$ectype_id,25, 27, 1 )
		endif
		$count += 1
		SetEctypeVar($ectype_id,57,1)
	endif

	}
	
	function LeaveArea(){
	
		AddStatus(-1,6362,2)
		AddStatus(-1,6372,2)
//		BC("chat","player",-1,"GUID:04004000000")
	
	}
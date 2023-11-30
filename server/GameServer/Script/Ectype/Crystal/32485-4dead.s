///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32485	????
///****************************  

	function OnDead(){

		//32485	????1

		
		$ectype_id = GetEctypeID(-1, 573)
		$turn = GetEctypeVar(-1, 15)
		$varline = GetEctypeVar($ectype_id,0)
		$turn = $turn + 1
		SetEctypeVar($ectype_id,15,$turn)
		if $turn < 3
			$left = 3 - $turn
			BC("screen","map",$ectype_id,"There are still ",$left," Key Crystals remaining.")
		endif
		if $turn == 3
			if $varline == 1
			OpenMask(6,$ectype_id)
			PlayEffect(-1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			StartEctypeTimer($ectype_id,0)	
			SetEctypeVar($ectype_id,87,1)
			endif
			if $varline == 32
			OpenMask(11,$ectype_id)
			PlayEffect(-1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
				
			//32532	????
			//32463	????

			$mon1 = 32463
			$mon2 = 32532
			$mon3 = 32501
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			if $flevel > 0
			AddLevelFieldMonster( $mon1,258,$level,258,$flevel,1,$ectype_id,24, 62, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,24, 61, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,25, 60, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,26, 59, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,27, 58, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,27, 57, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,25, 63, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,25, 63, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,26, 64, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,27, 57, 1 )
			AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,28, 58, 1 )
			AddMonsterByFloat( $mon3 , 1, $ectype_id, 77, 164, 1 ,0 ,180 )
			AddMonsterByFloat( $mon3 , 1, $ectype_id, 74, 151, 1 ,0 ,180 )
			AddMonsterByFloat( $mon3 , 1, $ectype_id, 61, 151, 1 ,0 ,180 )
			AddMonsterByFloat( $mon3 , 1, $ectype_id, 59, 161, 1 ,0 ,180 )
			else
			AddLevelMonster($mon1,258,$level,1,$ectype_id,24, 62, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,24, 61, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,25, 60, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,26, 59, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,27, 58, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,27, 57, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,25, 63, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,25, 63, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,26, 64, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,27, 57, 1)
			AddLevelMonster($mon2,256,$level,1,$ectype_id,28, 58, 1)
			AddMonsterByFloat( $mon3 , 1, $ectype_id, 77, 164, 1 ,0 ,180 )
			AddMonsterByFloat( $mon3 , 1, $ectype_id, 74, 151, 1 ,0 ,180 )
			AddMonsterByFloat( $mon3 , 1, $ectype_id, 61, 151, 1 ,0 ,180 )
			AddMonsterByFloat( $mon3 , 1, $ectype_id, 59, 161, 1 ,0 ,180 )
			endif		
							
			BC("screen","map",$ectype_id,"Instance has been refreshed.")
			StartEctypeTimer($ectype_id,2)	
			endif
			
		endif		
		
	}
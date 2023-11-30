///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName:32505	??
///****************************  

	function OnDead(){

		//baoxiang ?? 

		
		$ectype_id = GetEctypeID(-1, 573)
		SetEctypeVar($ectype_id,0,31)
		StartEctypeTimer($ectype_id,4)	
		DeleteMonster($ectype_id,32520)
		OpenMask(3,$ectype_id)
		$count_dark = GetEctypeVar($ectype_id,10)
		$count_dark += 1
		SetEctypeVar($ectype_id,10,$count_dark)
		PlayEffect(-1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		BC("screen","map",$ectype_id,"Got a Shadow Core.") 
			//32532	????
			//32517	????

			$mon1 = 32517
			$mon2 = 32532
			//32501	????   
			$mon3 = 32501 
			//AddLevelFieldMonster( $mon1,258,$level,258,$flevel,1,$ectype_id,$posx, $posy, 1 )	
			//	AddLevelMonster($mon1,258,$level,1,$ectype_id,$posx, $posy, 1)
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
							
	}
///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32482	????
///****************************  
//1175	????

	function OnDead(){


		
		$ectype_id = GetEctypeID(-1, 573)
		$var = GetEctypeVar(-1, 0)
		if $var == 21
			AddNpcByPos( 1175 ,$ectype_id ,192,117,79200,0)
			DeleteMonster($ectype_id,32516)
			BC("screen","map",$ectype_id,"The Mysterious Man has been released from the Crystal Shackles!")	
			PlayEffect(-1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		endif
		
		
	}
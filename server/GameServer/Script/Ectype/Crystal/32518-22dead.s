///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32518	???? 
///****************************  
//	32517	???? ??
//32518	???? ??
	function OnDead(){


		
		$ectype_id = GetEctypeID(-1, 573)
		$var = GetEctypeVar(-1, 0)
		if $var == 22
			OpenMask(16,$ectype_id)
			BC("screen","map",$ectype_id,"You helped Pyrope to win!")
			StartEctypeTimer($ectype_id,3)	
		endif
		
		
	}
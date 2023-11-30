///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32517	????
///****************************  
//	32517	???? ??
//32518	???? ??
	function OnDead(){


		
		$ectype_id = GetEctypeID(-1, 573)
		$var = GetEctypeVar(-1, 0)
		if $var == 21
			OpenMask(2,$ectype_id)
			BC("screen","map",$ectype_id,"You've helped Azura win!")
			StartEctypeTimer($ectype_id,1)	
		endif
		if $var == 31
			OpenMask(3,$ectype_id)
			BC("screen","map",$ectype_id,"Pyrope has recognized your ability!")
			StartEctypeTimer($ectype_id,2)	
		endif
		
		
	}
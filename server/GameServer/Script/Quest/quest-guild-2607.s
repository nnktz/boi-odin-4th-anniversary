	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/08/07
	//		Author：朱建臣
	//		TaskName：quest-guild-2607.s
	//		TaskID：公会常规任务接取
	//
	//****************************************
	
	//高级运镖 4036
	//究极运镖 4037
	
	function OnTaskDone(){
		
		$today = GetSystemTime( "yday" )
		
		//完成对话任务设置变量
		SetPlayerVar( -1 , "4063" , 100 )
		//设置最后一次公会任务的日期
		SetPlayerVar( -1 , 4036 , $today )
		
	}
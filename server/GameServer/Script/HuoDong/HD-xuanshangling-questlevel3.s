	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2008/11/17
	//		Author：祁晶
	//		TaskName：HD-xuanshangling-questlevel3.s
	//		TaskID：圣殿骑士团的悬赏令高难度任务完成奖励脚本
	//
	//****************************************
	//3620 此活动的积分
	function OnTaskDone(){
		
		$level = GetPlayerInfo( -1, "level" )
		$a = $level * $level
		$addexp = $a * 30
		
		AddPlayerInfo(-1 , "exp" , $addexp)
		
	
		AddPlayerInfo(-1 , "item", 64244 , 1)
		
		
		//累积活动积分。暂时没做积分奖励
		$point = GetPlayerVar(-1 ,3620 )
		$point = $point + 3
		SetPlayerVar(-1 ,3620 , $point)
	
	}
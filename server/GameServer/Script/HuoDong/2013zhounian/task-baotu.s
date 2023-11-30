	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/03/21
	//		Author：朱建臣
	//		TaskName：task-baotu.s
	//		TaskID：
	//
	//****************************************
	
	function OnTaskDone(){ 
		
		//玩家变量3361，记录今天接取宝图任务的次数
		//玩家变量4203，记录天数
		
		$now_day = GetSystemTime( "yday" )
		$last_day = GetPlayerVar(-1,4203)
		
		if $now_day != $last_day
			SetPlayerVar(-1,3361,0)
			SetPlayerVar(-1,4203,$now_day)
		endif
		
		$result = AddPlayerInfo(-1,"item",44722,1)
		if $result == 0
			$cishu = GetPlayerVar(-1,3361)
			$cishu = $cishu + 1
			SetPlayerVar(-1,3361,$cishu)
		endif				
							
	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){    
  

          
  }               
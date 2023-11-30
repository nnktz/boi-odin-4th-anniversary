	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/21
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫task-1911.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnTaskDone(){ 
		
	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){    
  
  	$x = GetPlayerInfo(-1,"mapposx")
  	$y = GetPlayerInfo(-1,"mapposy")
  	AddMonsterByFloat( 53250, 1, 571, $x , $y , 0)

          
  }               
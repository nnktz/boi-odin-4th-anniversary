	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/21
	//		Author:???
	//		TaskName:task-1899.s
	//		TaskID:
	//
	//****************************************
	
	function OnTaskDone(){ 
		
	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                
  	SendMail( -1 , "Aphrodite Blessing: Completed" , "Congratulations! You have completed Aphrodite's Blessing Quest, and received {#ffffd800=(Item)#}. \n{#ffffd800=Hint: The quest (Aphrodite's Blessing) can be completed once a day.#}." , 0 , 44689 )                             
  	SendMail( -1 , "Aphrodite Blessing: Completed" , "Congratulations! You have completed Aphrodite's Blessing Quest, and received {#ffffd800=(Item)#}. " , 0, 44721 )                            
  }                              
                                 
  function OnTaskAccept(){    
  

          
  }               
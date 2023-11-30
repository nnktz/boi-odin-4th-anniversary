	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/21
	//		Author:???
	//		TaskName:task-1931.s
	//		TaskID:
	//
	//****************************************
	
	function OnTaskDone(){ 
		
	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	
  	SendMail( -1 , "Fate Riddle (Event) Completed" , "Congratulations! You have completed the Fate Riddle quest, and got {#ffffd800=(Item) #} as reward. \n{#ffffd800=Hint: BOI new professions are waiting for you. #}" , 0 , 44937 )                             
  	SendMail( -1 , "Fate Riddle (Event) Completed" , "Congratulations! You have completed Fate Riddle Quest, and received {#ffffd800=(Item)#} as reward." , 0, 44938 )                             
  	$ci = GetPlayerVar(-1,4214)
  	$ci = $ci + 1
  	SetPlayerVar(-1,4214,$ci)
  	if $ci == 5                         
  		SendMail( -1 , "Fate Riddle (Event) Five Riddles Gift!" , "Congratulations! You have completed the Fate Riddle quest 5 times, and got {#ffffd800=(Item) #} as reward. \n{#ffffd800=Hint: BOI new professions are waiting for you. #}" , 0 , 44939 )
  		return
  	endif
  	
  	if $ci == 10                         
  		SendMail( -1 , "Fate Riddle (Event) Five Riddles Gift!" , "Congratulations! You have completed the Fate Riddle quest 5 times, and got {#ffffd800=(Item) #} as reward. \n{#ffffd800=Hint: BOI new professions are waiting for you. #}" , 0 , 44939 )
  		return
  	endif
  	
  	if $ci == 15                        
  		SendMail( -1 , "Fate Riddle (Event) Five Riddles Gift!" , "Congratulations! You have completed the Fate Riddle quest 5 times, and got {#ffffd800=(Item) #} as reward. \n{#ffffd800=Hint: BOI new professions are waiting for you. #}" , 0 , 44939 )
  		return
  	endif
  	
  	if $ci == 20                         
  		SendMail( -1 , "Fate Riddle (Event) Five Riddles Gift!" , "Congratulations! You have completed the Fate Riddle quest 5 times, and got {#ffffd800=(Item) #} as reward. \n{#ffffd800=Hint: BOI new professions are waiting for you. #}" , 0 , 44939 )
  		return
  	endif
  	
  	if $ci == 25                         
  		SendMail( -1 , "Fate Riddle (Event) Twenty-Five Riddles Gift!" , "Congratulations! You have completed the Fate Riddle quest 25 times, and got {#ffffd800=(Item) #} as reward. \n{#ffffd800=Hint: BOI new professions are waiting for you. #}" , 0 , 44940 )
  		return
  	endif
  	    
  }                              
                                 
  function OnTaskAccept(){    
  

          
  }               
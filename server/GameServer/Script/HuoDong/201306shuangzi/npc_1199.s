 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.5.8 
 //  Author:???  
//  TaskName: ??????? 
 //****************************  
 //????-???????(??)

function OnRequest(){ 
	//??????
	$Now_Minute =  GetSystemTime( "minute")
	//??
	$Now_Hour =  GetSystemTime( "hour" )
	//??
	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	
	$time = $Now_Hour * 100
	$time = $time + $Now_Minute
	$line = GetServerLineID()								
	if $line != 3
		if $line != 5
			if $line != 7
				DisableNpcOption(0)
			endif
		endif
	endif
		
	if $Now_Year != 2013
		DisableNpcOption(0)
	endif
	if $Now_Yday != 145
		if $Now_Yday != 152
			if $Now_Yday != 159
				if $Now_Yday != 166
					DisableNpcOption(0)     
				endif
			endif
		endif
	endif
	if $time < 2000
		DisableNpcOption(0)     
	endif
	if $time > 2015
		DisableNpcOption(0)     
	endif
	$result = GetPlayerVar(-1,3582)
	if $result == $Now_Yday
	  DisableNpcOption(0)     
	endif
} 
function OnOption0(){ 
	$lv = GetPlayerInfo( -1, "level")
		if $lv < 50
			BC( "dialogbox", "player", -1, "You haven't reached LV50, keep up!")
			return
		endif
	$result = IsTaskAccept( -1, 1935 )
	if $result == 0
	   BC( "screen", "player", -1, "Your Hermes' Wisdom is not finished yet, please finish it before your accept the next quest." )
     BC( "chat", "player", -1, "Your Hermes' Wisdom is not finished yet, please finish it before your accept the next quest." )
     return   
	endif 
	$result = IsTaskAccept( -1, 1936 )
	if $result == 0
	   BC( "screen", "player", -1, "Your Hermes' Wisdom is not finished yet, please finish it before your accept the next quest." )
     BC( "chat", "player", -1, "Your Hermes' Wisdom is not finished yet, please finish it before your accept the next quest." )
     return   
	endif 
	$result = IsTaskAccept( -1, 1937 )
	if $result == 0
	   BC( "screen", "player", -1, "Your Hermes' Wisdom is not finished yet, please finish it before your accept the next quest." )
     BC( "chat", "player", -1, "Your Hermes' Wisdom is not finished yet, please finish it before your accept the next quest." )
     return   
	endif 
	$result = IsTaskAccept( -1, 1938 )
	if $result == 0
	   BC( "screen", "player", -1, "Your Hermes' Wisdom is not finished yet, please finish it before your accept the next quest." )
     BC( "chat", "player", -1, "Your Hermes' Wisdom is not finished yet, please finish it before your accept the next quest." )
     return   
	endif 
		$task_count = GetTaskCount (-1)
		if $task_count >= 20
			BC( "screen", "player", -1, "You have too many quests, either complete or abandon the ones you currently have in order to get new ones." )
			return
		endif
		
	AcceptTask( -1 , 1930 )
	SetPlayerVar(-1,3580,0)
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	SetPlayerVar(-1,3582,$Now_Yday)
	BC( "screen", "player", -1, "Quest Received: Hermes' Wisdom" )
	BC( "chat", "player", -1, "Quest Received: Hermes' Wisdom" )     
	BC( "dialogbox", "player", -1, "Quest Received: Hermes' Wisdom, please help Hermes kill the Glorious Darkness. They are in the Sea of Atlantis." )    
} 


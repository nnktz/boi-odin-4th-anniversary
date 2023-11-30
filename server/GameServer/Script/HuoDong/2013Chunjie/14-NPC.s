 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.1.9  
 //  Author:???  
 //  TaskName: ??? 
 //****************************  
	function OnRequest(){
			//??????

	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	if $Now_Year != 2013 
	  DisableNpcOption(0)
     
  endif
  	if $Now_Month != 2 
	   DisableNpcOption(0)
     
  endif
  if $Now_Mday < 10
	   DisableNpcOption(0)
     
  endif
   if $Now_Mday > 26
	   DisableNpcOption(0)
     
  endif
  	//????
    $playervar = GetPlayerVar(-1,3451)  
    if $playervar > 0
	   DisableNpcOption(0)
     
  endif
   	//??????
		$Info = GetPlayerInfo( -1, "item", 44635)	
			if $Info < 1
				DisableNpcOption(0)
				
			endif
//--------------201306????---------------------//
	$result = IsTaskAccept( -1, 1934 )
	if $result != 0
	  DisableNpcOption(1)     
	endif
	//$result = GetPlayerVar(-1,401)
	//if $result != 0
	//  DisableNpcOption(1)     
	//endif  
	$result = GetPlayerInfo(-1,"item",12885)
	if $result > 0 
		DisableNpcOption(1)     
	endif
	}
	
	
	function OnOption0(){
	  	//????
    $playervar = GetPlayerVar(-1,3451)  
    if $playervar > 0
     return
  endif
   	//??????
		$Info = GetPlayerInfo( -1, "item", 44635)	
			if $Info < 1
				return
			endif

		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "Your bag is full!" )
			return
		endif
		 //???????
     $del_count = SubPlayerInfo( -1, "item", 44635, 1 )
     //??????????,????????
  if $del_count != 0
     return
  endif
		AddPlayerInfo( -1, "item", 44636, 1 )
		AddPlayerInfo( -1, "item", 59557, 1 )
		$playervar = $playervar + 1
		SetPlayerVar(-1, 3451, $playervar )
		BC( "dialogbox", "player", -1, "This is your lucky red envelope!\nGo to see {hZorr[56]h} now! He'll be glad to see you." )
		SetPlayerActLog(-1 , 60 ,$playervar)
	}
	
	function OnOption1(){ 
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
		//?????????,???????65535?$playvar 4208
		$nullitem = GetPlayerInfo(-1,"nullitem",3)
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "You bag is full. Please clear you bag before attempting to acquire this quest!")
			return
		endif
//---------------------------------------------
		AddPlayerInfo(-1,"item",12885,1)
		$var = GetPlayerVar(-1,401)
		$var += 1
		SetPlayerVar(-1,401,$var)
		BC( "screen", "player", -1, "You make a Spring time wish, and acquired Candle of Hopes!" )
		BC( "chat", "player", -1, "You make a Spring time wish, and acquired Candle of Hopes!" )
} 
 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.5.8 
 //  Author:???  
 //  TaskName: 
 //****************************  
 ////0-???????	
function OnRequest(){
//--------------201306????---------------------//
	$result = IsTaskAccept( -1, 1934 )
	if $result != 0
	  DisableNpcOption(0)     
	endif
	$result = GetPlayerVar(-1,400)
	//if $result != 0
	//  DisableNpcOption(0)     
	//endif
	$result = GetPlayerInfo(-1,"item",12884)
	if $result > 0 
		DisableNpcOption(0)     
	endif
	}
	function OnOption0(){ 
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
			BC( "dialogbox", "player", -1, "You bag is full. Please clear your bag before you acquire the quest!")
			return
		endif
//---------------------------------------------
		AddPlayerInfo(-1,"item",12884,1)
		$var = GetPlayerVar(-1,400)
		$var += 1
		SetPlayerVar(-1,400,$var)
		BC( "screen", "player", -1, "You made a wish for Spring, and acquired a Candle of Hopes!" )
		BC( "chat", "player", -1, "You made a wish for Spring, and acquired a Candle of Hopes!" )
} 
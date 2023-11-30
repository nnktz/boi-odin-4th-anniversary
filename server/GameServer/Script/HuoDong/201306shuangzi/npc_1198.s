 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.5.8 
 //  Author:???  
 //  TaskName: ?????? 
 //****************************         
 //??????	1198	
 
 //0_ ???????	
 //1_ ????	
// 129		???????	???	global  yyyyyyy
//--------------------------------------------------4209	65535	???????	9999?????	player  ------
//--------------------------------------------------3578	255	???????	???,	player -----------
//3579	255	???????	????	player yyyyyyyyy
//398	1	???????	???0?1	player
// 0-???
// 1-???? 
//2-???? 
//3-3???
//4-?????
//10-??????
function OnRequest(){   
//	$var_select = GetPlayerVar(-1,4209)   
//	$var_is_select = GetPlayerVar(-1,3578)  
	$var_right = GetPlayerVar(-1,3579) 
	$var_mail = GetPlayerVar(-1,398)  
	$var_global = GetGlobalVar(129)    
	// //--------??????------------------------------
	// //??????
	//$Now_Minute =  GetSystemTime( "minute")
	////??
	//$Now_Hour =  GetSystemTime( "hour" )
	////??
	//$Now_Mday =  GetSystemTime( "mday" )
	////??
	//$Now_Month =  GetSystemTime( "month" )
	////???.2008????
	//$Now_Year =  GetSystemTime( "year" )
	////???.0-6
	//$Now_Week =  GetSystemTime( "week" )
	////??????.0-365
	//$Now_Yday =  GetSystemTime( "yday" )
	//$time = $Now_Hour * 100
	//$time += $Now_Minute
	//$Now_Mday *= 10000
	//$time += $Now_Mday
	//if $time <= 52200
	//	DisableNpcOption(1)
	//	DisableNpcOption(2)
	//	DisableNpcOption(3)
	//endif
	//if $time > 52200
	//	if $time <= 92200
	//		DisableNpcOption(0)
	//		DisableNpcOption(2)
	//		DisableNpcOption(3)
	//	endif
	//endif
	//if $time > 92200
	//	if $time <= 122200
	//		DisableNpcOption(0)
	//		DisableNpcOption(1)
	//		DisableNpcOption(3)
	//	endif
	//endif
	//if $time > 122200
	//	if $time <= 162200
	//		DisableNpcOption(0)
	//		DisableNpcOption(1)
	//		DisableNpcOption(2)
	//	endif
	//endif
	//if $time > 162200
	//		DisableNpcOption(0)
	//		DisableNpcOption(1)
	//		DisableNpcOption(2)
	//		DisableNpcOption(3)
	//endif
	////--------??????----------------------------
// 0-???
// 1-???? 
//2-???? 
//3-3???
//4-?????
//10-??????
	//--------???----------------------------------
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
	$time += $Now_Minute
	if $time > 2155
		if $time <= 2359
			DisableNpcOption(1)
		endif
	endif
	if $var_right != 0
		DisableNpcOption(1)
	endif
	//--------???----------------------------------
	//-----------????------------------
	if $Now_Yday >= 176
		DisableNpcOption(1)
	endif
	
	//--------???----------------------------------
	if $var_right == 0
		DisableNpcOption(0)	
		DisableNpcOption(2)
	endif
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
	$His_Mday =  GetPlayerVar(-1,3578) 
	$time = $Now_Hour * 100
	$time += $Now_Minute
	$Now_Mday *= 10000
	$His_Mday *= 10000
	$time += $Now_Mday
	$time2 = $His_Mday + 2200
	if $time < $time2
		DisableNpcOption(0)
		DisableNpcOption(2)
	endif
	if $time <= 42200
		DisableNpcOption(0)
		DisableNpcOption(2)
	endif
	// $playervar = GetPlayerVar(-1,398)
 //if $playervar != 1
 //  DisableNpcOption(0)
 //  DisableNpcOption(2)
 //endif
	//--------???----------------------------------
} 
function OnOption0(){ 
	//$var_select = GetPlayerVar(-1,4209)   
	//$var_is_select = GetPlayerVar(-1,3578)  
	$var_right = GetPlayerVar(-1,3579) 
	$var_mail = GetPlayerVar(-1,398)  
	$var_global = GetGlobalVar(129)  
	$var_num = GetPlayerVar(-1,4210)
	//???????,
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "screen", "player", -1, "There is not enough space in your bag!" )
     BC( "chat", "player", -1, "There is not enough space in your bag!" )
     return
  endif
  $bag_count = GetPlayerInfo( -1, "nullitem", 1 )
  if $bag_count < 1
     BC( "screen", "player", -1, "There is not enough space in your bag!" )
     BC( "chat", "player", -1, "There is not enough space in your bag!" )
     return
  endif
  $lv = GetPlayerInfo( -1, "level")
		if $lv < 50
			BC( "dialogbox", "player", -1, "You haven't reached LV50, keep up!")
			return
		endif
  //------------------????----------------------start
  if $var_right == 10
  	 BC( "screen", "player", -1, "Sorry, the numbers you have chosen are all different from the winning numbers, you just got Major Fortify Crystal x1!" )
     BC( "chat", "player", -1, "Sorry, the numbers you have chosen are all different from the winning numbers, you just got Major Fortify Crystal x1!" )
     AddPlayerInfo(-1,"item",9,1)
  endif
  if $var_right == 1
  	BC( "screen", "player", -1, "You have 1 matching lottery number! You received Major Fortify Crystal x2!" )
    BC( "chat", "player", -1, "You have 1 matching lottery number! You received Major Fortify Crystal x2!" )
    AddPlayerInfo(-1,"item",9,2)
  endif
  if $var_right == 2
  	BC( "screen", "player", -1, "Two of the numbers you have chosen is same as two of the winning numbers, you got Major Fortify Crystal x5!" )
    BC( "chat", "player", -1, "Two of the numbers you have chosen is same as two of the winning numbers, you got Major Fortify Crystal x5!" )
    AddPlayerInfo(-1,"item",9,5)
  endif
  if $var_right == 3
  	#name = GetPlayerInfo(-1,"name")
  	BC( "screen", "servergroup", -1, "Player",#name,"You have 3 matching lottery numbers, and received a Hermes' Seals. Congratulations!" )
    BC( "chat", "servergroup", -1, "Player",#name,"You have 3 matching lottery numbers, and received a Hermes' Seals. Congratulations!" )
    AddPlayerInfo(-1,"item",44872,1)
  endif
  if $var_right == 4
  	#name = GetPlayerInfo(-1,"name")
  	BC( "screen", "servergroup", -1, "Player",#name,"All numbers are same as the winning numbers. You get a Gemini Storm. Congratulations!" )
    BC( "chat", "servergroup", -1, "Player",#name,"All numbers are same as the winning numbers. You get a Gemini Storm. Congratulations!" )
    AddPlayerInfo(-1,"item",60928,1)
  endif
   //------------------????----------------------end
   //------------------????----------------------start 
	SetPlayerVar(-1,4209 ,0)
	SetPlayerVar(-1,4210 ,0)
   SetPlayerVar(-1,3579 ,0)
   SetPlayerVar(-1,3578 ,0)
   SetPlayerVar(-1,398,0)
   
   //------------------????----------------------end
   
  
}
function OnOption1(){ 
	$var_select = GetPlayerVar(-1,4209)   
	$lv = GetPlayerInfo( -1, "level")
		if $lv < 50
			BC( "dialogbox", "player", -1, "You haven't reached LV50, keep up!")
			return
		endif
	//$var_is_select = GetPlayerVar(-1,3578)  
	//??????21:55- 22:00????
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
	$time += $Now_Minute
	if $time >= 2155
		if $time <= 2200
			BC("screen","player",-1,"Today's lucky numbers have been announced, please come back tomorrow!")
			BC("chat","player",-1,"Today's lucky numbers have been announced, please come back tomorrow!")
			return
		endif
	endif
	$var_right = GetPlayerVar(-1,3579) 
	$var_mail = GetPlayerVar(-1,398)  
	$var_global = GetGlobalVar(129)  
	$money = GetPlayerInfo(-1,"money")
	if $money < 500000
		BC("screen","player",-1,"You don't have the 500,000 coins needed to join.")
		BC("chat","player",-1,"You don't have the 500,000 coins needed to join.")
		return
	endif
	//$del_count = SubPlayerInfo(-1,"money",500000)
	//if $del_count != 0
  //   return
  //endif
	OpenUI(-1,2)
	//SetPlayerVar(-1,4209,$var_global)
	BC("screen","player",-1,"You are graced by Hermes, please choose your lucky numbers!")
	BC("chat","player",-1,"You are graced by Hermes, please choose your lucky numbers!")

	//$var_num = GetPlayerVar(-1,4210)
	//$num = 0  
	//$var_select += 1000
	//SetPlayerVar(-1,4209,$var_select)
	//$num *= 1000
	//$var_num += $num
	//SetPlayerVar(-1,4210,$var_num)
	//if $var_select == 1111
	//	BC("screen","player",-1,"GUID:05052000026",$num,"GUID:05052000027",$var_num,"GUID:05052000028")
	//	SetPlayerVar(-1,3578,1)
	//	$n = 1
	//	while $n < 5
	//		$chu = powercommand(10, $n)
	//		$mod1 = $var_num % $chu
	//		$mod2 = $var_global % $chu
	//		if $mod1 == $mod2
	//			$var_right += 1
	//			SetPlayerVar(-1,3579,$var_right)
	//		endif 
	//		$var_num = $var_num - $mod1
	//		$var_global = $var_global - $mod2
	//		$n += 1
	//	endwhile
	//else
	//	BC("screen","player",-1,"GUID:05052000029",$num,"GUID:05052000030")
	//endif

}
function OnOption2(){
	$Now_Minute =  GetSystemTime( "minute")
	$Now_Hour =  GetSystemTime( "hour" )
	$Now_Mday =  GetSystemTime( "mday" )
  //????2
  $playervar = GetPlayerVar(-1,3579)
    if $playervar <= 0
     return
    endif 
  $His_Mday =  GetPlayerVar(-1,3578) 
	$time = $Now_Hour * 100
	$time += $Now_Minute
	$Now_Mday *= 10000
	$His_Mday *= 10000
	$time += $Now_Mday
	$time2 = $His_Mday + 2200
	$var = GetPlayerVar(-1,4210)
		$v4 = $var % 10
		$var -= $v4
		$v3 = $var % 100 
		$var -= $v3
		$v2 = $var % 1000 
		$var -= $v2
		$v1 = $var % 10000 
		$v3 = $v3 / 10
		$v2 = $v2 / 100
		$v1 = $v1 / 1000
		$var_h = GetPlayerVar(-1,4209)
		$v4_h = $var_h % 10
		$var_h -= $v4_h
		$v3_h = $var_h % 100 
		$var_h -= $v3_h
		$v2_h = $var_h % 1000 
		$var_h -= $v2_h
		$v1_h = $var_h % 10000 
		$v3_h = $v3_h / 10
		$v2_h = $v2_h / 100
		$v1_h = $v1_h / 1000
	//BC("chat","player",-1,"|time=",$time)
	//BC("chat","player",-1,"|time2=",$time2)
	if $time >= $time2
			$var_right = GetPlayerVar(-1,3579)
		 if $var_right == 10
	  	 BC("dialogbox", "player", -1 , "The lucky numbers today are",$v1_h,"",$v2_h,"",$v3_h,"",$v4_h,"\The lucky numbers you chose today are",$v1,"",$v2,"",$v3,"",$v4,"! \nYou can get Major Fortify Crystal x1!")
		  endif
		  if $var_right == 1
		    BC("dialogbox", "player", -1 , "The lucky numbers today are",$v1_h,"",$v2_h,"",$v3_h,"",$v4_h,"\The lucky numbers you chose today are",$v1,"",$v2,"",$v3,"",$v4,"! \nYou can get Major Fortify Crystal x2!")
		  endif
		  if $var_right == 2
		    BC("dialogbox", "player", -1 , "The lucky numbers today are",$v1_h,"",$v2_h,"",$v3_h,"",$v4_h,"\The lucky numbers you chose today are",$v1,"",$v2,"",$v3,"",$v4,"! \nYou can get Major Fortify Crystal x5!")
		  endif
		  if $var_right == 3
		  	BC("dialogbox", "player", -1 , "The lucky numbers today are",$v1_h,"",$v2_h,"",$v3_h,"",$v4_h,"\The lucky numbers you chose today are",$v1,"",$v2,"",$v3,"",$v4,"! \nYou can get Hermes' Seal x1!")
		
		  endif
		  if $var_right == 4
		   BC("dialogbox", "player", -1 , "The lucky numbers today are",$v1_h,"",$v2_h,"",$v3_h,"",$v4_h,"\The lucky numbers you chose today are",$v1,"",$v2,"",$v3,"",$v4,"! \nYou can get Gemini Storm x1!")
		  endif
	endif
	}


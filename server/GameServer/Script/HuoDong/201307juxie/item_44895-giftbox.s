 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: ?????? 
 //****************************  
function OnRequest(){ 
} 
function OnOption0(){ 
} 
function OnUseItem(){ 
	
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 2
			BC("screen","player",-1,"Insufficient bag slots!")
			return
		endif
		
		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif


		$getvar = GetPlayerVar(-1,3492)
		$getvar += 1
		if $getvar == 3
//54310	????-???(?)
			SubPlayerInfo(-1,"item",54310,1)
			BC("messagebox","player",-1,"Congratulations! You got a Gold Card!")
			#NAME = GetPlayerInfo(-1,"name")
			BC("screen","server",-1,"Player (",#NAME,") experienced 3 fate choices, and they got a Zodiac Cancer Fate Card (Gold).")
			BC("chat","server",-1,"Player (",#NAME,") experienced 3 fate choices, and they got a Zodiac Cancer Fate Card (Gold).")
		$getvar = 0
		endif
		SetPlayerVar(-1,3492,$getvar)
		
		
		AddPlayerInfo(-1,"item",9,15)
////2221	?????(??)
//		AddPlayerInfo(-1,"item",2221,3)
//64246	?????
		AddPlayerInfo(-1,"item",64246,1)
		
} 
function OnDead(){ 
} 

 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: ??? 
 //****************************  
function OnRequest(){ 
} 
function OnOption0(){ 
} 
function OnUseItem(){ 
//3482	??1	44896	???"S"??
//3483	??2	44897	???"V"??
//3484	??3	44898	???"U"??
//3485	??4	44899	???"R"??
//3486	??5	44900	???"C"??
//3487	??6	44901	???"I"??
//3488	??7	44902	???"T"??
//3489	??8	44903	???"E"??
//3490	??9	44904	???"L"??

		$cardid = 44896
		$varid = 3482
		while $cardid <= 44904
			$item = GetPlayerInfo(-1,"item",$cardid)
			if $item > 0
				$suc = SubPlayerInfo(-1,"item",$cardid,$item)
				if $suc == 0
					$var = GetPlayerVar(-1,$varid)
					$var += $item
					SetPlayerVar(-1,$varid,$var)
				else
					return
				endif
			endif
			$varid += 1
			$cardid += 1
		endwhile
	
	$box = GetPlayerInfo(-1,"item",44905)
	if $box == 0
		AddPlayerInfo(-1,"item",44905,1)
	endif
	BC("screen","player",-1,"Have opened all the Prophecy Card Packs!")
	
	
} 
function OnDead(){ 
} 

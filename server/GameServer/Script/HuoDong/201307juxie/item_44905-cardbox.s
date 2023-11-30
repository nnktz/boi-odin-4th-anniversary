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
//3482	??1	44896	???"S"??
//3483	??2	44897	???"V"??
//3484	??3	44898	???"U"??
//3485	??4	44899	???"R"??
//3486	??5	44900	???"C"??
//3487	??6	44901	???"I"??
//3488	??7	44902	???"T"??
//3489	??8	44903	???"E"??
//3490	??9	44904	???"L"??
		$all = 0
		$varid = 3482
		while $varid <= 3490
			$var = GetPlayerVar(-1,$varid)
			if $var > 0
				$all += 1
			endif
			$varid += 1
		endwhile
		
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < $all
			BC("screen","player",-1,"Insufficient bag slots",$all,"!")
			return
		endif
		
	$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,-1)
		if $del_count != 0
			BC("chat","player",-1,"|del_count=",$del_count)
			return
		endif
		
		$cardid = 44896
		$varid = 3482
		while $cardid <= 44904
			$item = GetPlayerVar(-1,$varid)
			if $item > 0
				$suc = AddPlayerInfo(-1,"item",$cardid,$item)
				if $suc == 0
					$var -= $item
					SetPlayerVar(-1,$varid,$value)
				else
					return
				endif
			endif
			$varid += 1
			$cardid += 1
		endwhile
		
	BC("screen","player",-1,"Have opened the Prophecy Card Pack!")
	
	
} 
function OnDead(){ 
} 

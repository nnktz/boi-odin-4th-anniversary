//1	2	3	4	5	6
//??????					
					
function prepare(){					
#cardname = "Return of the Zodiac: Cancer"					
$indexFALL = 1					
$indexWALL = 17					
$luckybuffALL = 10000					
					
}					
function checkbuff(){					
if $indexF == 1
$freeID = 59323
$freeGive = 1
endif
					
					
					
					
					

if $indexW == 1
$giftitem = 44941
#giftname = "Divine Armor Seal"
$luckybuff = 1
$itemgive = 1
$isBC = 1
endif

if $indexW == 2
$giftitem = 62157
#giftname = "Cancer"
$luckybuff = 1
$itemgive = 1
$isBC = 1
endif

if $indexW == 3
$giftitem = 110
#giftname = "Stardust Coin"
$luckybuff = 2
$itemgive = 1
$isBC = 1
endif

if $indexW == 4
$giftitem = 44158
#giftname = "LV10 Odin's Soul Jade"
$luckybuff = 3
$itemgive = 1
$isBC = 1
endif

if $indexW == 5
$giftitem = 53382
#giftname = "Starword - Peace"
$luckybuff = 5
$itemgive = 1
$isBC = 1
endif

if $indexW == 6
$giftitem = 64247
#giftname = "LV4 Gem Chest"
$luckybuff = 10
$itemgive = 1
$isBC = 1
endif

if $indexW == 7
$giftitem = 44459
#giftname = "Reis' Mysterious Medicine"
$luckybuff = 10
$itemgive = 1
$isBC = 1
endif

if $indexW == 8
$giftitem = 59303
#giftname = "LV3 Gem Chest"
$luckybuff = 50
$itemgive = 1
$isBC = 0
endif

if $indexW == 9
$giftitem = 63558
#giftname = "Wolfking Karth's Soul"
$luckybuff = 50
$itemgive = 1
$isBC = 0
endif

if $indexW == 10
$giftitem = 59304
#giftname = "Holy Water Pack"
$luckybuff = 200
$itemgive = 1
$isBC = 0
endif

if $indexW == 11
$giftitem = 2131
#giftname = "LV2 Gem Talisman"
$luckybuff = 300
$itemgive = 1
$isBC = 0
endif

if $indexW == 12
$giftitem = 63383
#giftname = "Colorful Meteor"
$luckybuff = 300
$itemgive = 1
$isBC = 0
endif

if $indexW == 13
$giftitem = 2449
#giftname = "Starword Recharger"
$luckybuff = 500
$itemgive = 1
$isBC = 0
endif

if $indexW == 14
$giftitem = 2222
#giftname = "Fortify Charm"
$luckybuff = 500
$itemgive = 1
$isBC = 0
endif

if $indexW == 15
$giftitem = 60028
#giftname = "Warcry Trumpet x4"
$luckybuff = 800
$itemgive = 4
$isBC = 0
endif

if $indexW == 16
$giftitem = 63422
#giftname = "Critstrike Fragment"
$luckybuff = 1800
$itemgive = 1
$isBC = 0
endif

if $indexW == 17
$giftitem = 5
#giftname = "Major Fortify Crystal"
$luckybuff = 5468
$itemgive = 1
$isBC = 0
endif















}		

function OnUseItem(){		
	$playerid = GetPlayerID	
	$bag_count = GetPlayerInfo( -1, "nullitem", 0 )	
	call prepare()	
	//??????????(???????+1)	
	$bag_need = $indexFALL + 1	
	if $bag_count < $bag_need	
		BC( "screen", "player", -1, "You do not have enough space in your Bag." )
		return
	endif	
	$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )	
	//??????????(??????2???...)	
	if $bag_count1 < 2	
		BC( "screen", "player", -1, "You do not have enough bag space." )
		return	
	endif		
//	//-------------------------------------------		????? ??
//	//???????,????????		
//	$key1 = GetPlayerInfo( -1, "item", 64266 )		
//	$key2 = GetPlayerInfo( -1, "item", 63287 )		
//	if $key1 == 0		
//		if $key2 == 0	
//			BC( "screen", "player", -1, "GUID:06658000020" )
//			return
//		else	
//			$del_count = SubPlayerInfo( -1, "item", 63287, 1 )
//		endif	
//	else		
//		$del_count = SubPlayerInfo( -1, "item", 64266, 1 )	
//	endif		
//	//-------------------------------------------		????? ??
	//????		
	$itemid = GetItemID()		
	$del_count = SubPlayerInfo(-1,"item",$itemid,1)		
	if $del_count != 0		
		return	
	endif		
	//-------------------------------------------		
	//???		
	$randombuff = RandomNumber(1,$luckybuffALL)		
	$giftbuffpre = 0		
	//??:$giftbuffpre??????????0??,???????????????		
	//??:$giftbuff??????,??????????,????,?????		
	$indexF = 1		
	while $indexF <= $indexFALL		
		$freeID = 0	
		$freeGive = 0	
		call checkbuff()	
		AddPlayerInfo(-1,"item",$freeID,$freeGive)	
		$indexF += 1	
	endwhile		
	$indexW = 1		
	while $indexW <= $indexWALL		
		$giftitem = 0	
		#giftname = " "	
		$luckybuff = 0	
		$itemgive = 0	
		$isBC = 0	
		if $giftbuff > $luckybuffALL	
			BC("screen","player",-1,"R1")
			return
		endif	
		call checkbuff()			
		//-------------------------			
		$giftbuff = $giftbuffpre + $luckybuff			
		if $randombuff > $giftbuffpre			
			if $randombuff <= $giftbuff		
				AddPlayerInfo($playerid,"item",$giftitem,$itemgive)	
				if $isBC == 1	
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player ",#name," used the ",#cardname," and was lucky enough to receive: ",#giftname)
					BC("chat","servergroup",-1,"Player ",#name," used the ",#cardname," and was lucky enough to receive: ",#giftname)
				endif	
			endif		
		endif			
		$giftbuffpre = $giftbuff			
		//-------------------------			
		$indexW += 1			
	endwhile
	//??
//	BC("screen","player",-1,"randombuff = ",$randombuff," | giftbuff = ",$giftbuff)
}	

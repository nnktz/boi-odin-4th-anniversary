	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/3/6
	//		Author:??
	//		TaskName:
	//		TaskID:????-??1 952
	//
	//****************************************
	
	
	//????????,????,???10?????????0,??????8??0,??????????
	//?????????????8???
	//??????????????,?????????????????
	//???????????????5???????
	//????????????????????,??????????
	//??????????????
	//??????,?????????
	//?????1
	
	function OnRequest(){
		
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		$itemcard1 = 59601
		$itemcard2 = 59602
		$itemcard3 = 59603
		$itemcard4 = 59604
		$itemcard5 = 59605
		$denlongvar = 118
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		
		$Now_Yday = GetSystemTime( "yday" )
		$day = GetPlayerVar( -1, 4076 )
		
		//????????????0(?????????)
		if $day != $Now_Yday
			SetPlayerVar(-1,3285,0 )
			SetPlayerVar(-1,110,0 )
			SetPlayerVar(-1,111,0 )
			SetPlayerVar(-1,112,0 )
			SetPlayerVar(-1,113,0 )
			SetPlayerVar(-1,114,0 )
			SetPlayerVar(-1,115,0 )
			SetPlayerVar(-1,116,0 )
			SetPlayerVar(-1,117,0 )
			SetPlayerVar(-1,118,0 )
			SetPlayerVar(-1,119,0 )
			SetPlayerVar(-1,4076, $Now_Yday )
		endif
		
		$card1 = GetPlayerInfo( -1, "item", $itemcard1)
		$card2 = GetPlayerInfo( -1, "item", $itemcard2)
		$card3 = GetPlayerInfo( -1, "item", $itemcard3)
		$card4 = GetPlayerInfo( -1, "item", $itemcard4)
		$card5 = GetPlayerInfo( -1, "item", $itemcard5)
		
		if $card1 > 0
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(8)
			DisableNpcOption(9)
			DisableNpcOption(10)
			DisableNpcOption(11)
			DisableNpcOption(12)
			DisableNpcOption(13)
			DisableNpcOption(14)
			DisableNpcOption(15)
			return
		endif
		
		if $card2 > 0
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(7)
			DisableNpcOption(8)
			DisableNpcOption(9)
			DisableNpcOption(10)
			DisableNpcOption(11)
			DisableNpcOption(12)
			DisableNpcOption(13)
			DisableNpcOption(14)
			DisableNpcOption(15)
			return
		endif
		
		if $card3 > 0
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(10)
			DisableNpcOption(11)
			DisableNpcOption(12)
			DisableNpcOption(13)
			DisableNpcOption(14)
			DisableNpcOption(15)
			return
		endif
		
		if $card4 > 0
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(8)
			DisableNpcOption(9)
			DisableNpcOption(13)
			DisableNpcOption(14)
			DisableNpcOption(15)
			return
		endif
		
		if $card5 > 0
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(8)
			DisableNpcOption(9)
			DisableNpcOption(10)
			DisableNpcOption(11)
			DisableNpcOption(12)
			return
		endif
		
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(8)
			DisableNpcOption(9)
			DisableNpcOption(10)
			DisableNpcOption(11)
			DisableNpcOption(12)
			DisableNpcOption(13)
			DisableNpcOption(14)
			DisableNpcOption(15)
		
		
	}

	//?????
	function OnOption0(){
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		$itemcard1 = 59601
		$itemcard2 = 59602
		$itemcard3 = 59603
		$itemcard4 = 59604
		$itemcard5 = 59605
		$denlongvar = 118
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		
		
		$cishu = GetPlayerVar( -1, 3285 )
		
		//?????????8?
		if $cishu >= 8
			BC( "dialogbox", "player", -1, "You have already joined the Riddle Event 8 times. Please come back tomorrow!")
			return
		endif
		
		
		//???????????????????
		$denlong = GetPlayerVar( -1, $denlongvar )
		if $denlong == 1
			BC( "dialogbox", "player", -1, "You have already received this Lantern Riddle.\nYou can try other Lantern Riddles.")
			return
		endif
		
//~~~~~~~~~~~~~	//?????????????????,??????~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		$card1 = GetPlayerInfo( -1, "item", 59561)
		$card2 = GetPlayerInfo( -1, "item", 59562)
		$card3 = GetPlayerInfo( -1, "item", 59563)
		$card4 = GetPlayerInfo( -1, "item", 59564)
		$card5 = GetPlayerInfo( -1, "item", 59565)
		$card6 = GetPlayerInfo( -1, "item", 59566)
		$card7 = GetPlayerInfo( -1, "item", 59567)
		$card8 = GetPlayerInfo( -1, "item", 59568)
		$card9 = GetPlayerInfo( -1, "item", 59569)
		$card10 = GetPlayerInfo( -1, "item", 59570)
		$card11 = GetPlayerInfo( -1, "item", 59571)
		$card12 = GetPlayerInfo( -1, "item", 59572)
		$card13 = GetPlayerInfo( -1, "item", 59573)
		$card14 = GetPlayerInfo( -1, "item", 59574)
		$card15 = GetPlayerInfo( -1, "item", 59575)
		$card16 = GetPlayerInfo( -1, "item", 59576)
		$card17 = GetPlayerInfo( -1, "item", 59577)
		$card18 = GetPlayerInfo( -1, "item", 59578)
		$card19 = GetPlayerInfo( -1, "item", 59579)
		$card20 = GetPlayerInfo( -1, "item", 59580)
		$card21 = GetPlayerInfo( -1, "item", 59581)
		$card22 = GetPlayerInfo( -1, "item", 59582)
		$card23 = GetPlayerInfo( -1, "item", 59583)
		$card24 = GetPlayerInfo( -1, "item", 59584)
		$card25 = GetPlayerInfo( -1, "item", 59585)
		$card26 = GetPlayerInfo( -1, "item", 59586)
		$card27 = GetPlayerInfo( -1, "item", 59587)
		$card28 = GetPlayerInfo( -1, "item", 59588)
		$card29 = GetPlayerInfo( -1, "item", 59589)
		$card30 = GetPlayerInfo( -1, "item", 59590)
		$card31 = GetPlayerInfo( -1, "item", 59591)
		$card32 = GetPlayerInfo( -1, "item", 59592)
		$card33 = GetPlayerInfo( -1, "item", 59593)
		$card34 = GetPlayerInfo( -1, "item", 59594)
		$card35 = GetPlayerInfo( -1, "item", 59595)
		$card36 = GetPlayerInfo( -1, "item", 59596)
		$card37 = GetPlayerInfo( -1, "item", 59597)
		$card38 = GetPlayerInfo( -1, "item", 59598)
		$card39 = GetPlayerInfo( -1, "item", 59599)
		$card40 = GetPlayerInfo( -1, "item", 59600)
		$card41 = GetPlayerInfo( -1, "item", 59601)
		$card42 = GetPlayerInfo( -1, "item", 59602)
		$card43 = GetPlayerInfo( -1, "item", 59603)
		$card44 = GetPlayerInfo( -1, "item", 59604)
		$card45 = GetPlayerInfo( -1, "item", 59605)
		$card46 = GetPlayerInfo( -1, "item", 59606)
		$card47 = GetPlayerInfo( -1, "item", 59607)
		$card48 = GetPlayerInfo( -1, "item", 59608)
		$card49 = GetPlayerInfo( -1, "item", 59609)
		$card50 = GetPlayerInfo( -1, "item", 59610)
		
		if $card1 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card2 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif

		if $card3 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card4 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card5 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card6 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card7 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card8 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card9 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card10 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card11 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card12 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card13 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card14 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card15 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card16 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card17 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card18 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card19 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card20 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card21 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card22 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card23 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card24 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card25 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card26 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card27 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card28 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card29 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card30 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card31 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card32 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card33 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card34 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card35 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card36 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card37 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card38 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card39 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card40 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card41 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card42 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card43 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card44 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card45 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card46 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card47 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card48 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card49 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
		if $card50 > 0
			BC( "dialogbox", "player", -1, "You already have one Lantern Riddle Card. You can't hold two at the same time.")
			return
		endif
		
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

//???????????????
		$red = GetPlayerInfo( -1, "item", 59560)
		if $red < 1
			BC( "dialogbox", "player", -1, "You don't have the item, Fortune \n{#ff920000=Finish the quest that the Event Agent sent to get the item, Fortune. #}")
			return
		endif
		
//????????,?????????,??????????,???,????????????
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot to get a Lantern Riddle Card.")
			return
		endif
		
		//??????
		SubPlayerInfo( -1, "item", 59560, 1)
		//??????????
		SetPlayerVar(-1, $denlongvar ,1 )
		
		//???????
		$rand = RandomNumber ( 1, 5 )
		if $rand == 1
			AddPlayerInfo(-1, "item", $itemcard1 , 1 )
			BC( "dialogbox", "player", -1, "You got a Lantern Riddle Card. \n{#ff920000=Please open your bag to check the Riddle, then click the lantern to answer. #}")
		endif
		
		if $rand == 2
			AddPlayerInfo(-1, "item", $itemcard2 , 1 )
			BC( "dialogbox", "player", -1, "You got a Lantern Riddle Card. \n{#ff920000=Please open your bag to check the Riddle, then click the lantern to answer. #}")
		endif

		if $rand == 3
			AddPlayerInfo(-1, "item", $itemcard3 , 1 )
			BC( "dialogbox", "player", -1, "You got a Lantern Riddle Card. \n{#ff920000=Please open your bag to check the Riddle, then click the lantern to answer. #}")
		endif

		if $rand == 4
			AddPlayerInfo(-1, "item", $itemcard4 , 1 )
			BC( "dialogbox", "player", -1, "You got a Lantern Riddle Card. \n{#ff920000=Please open your bag to check the Riddle, then click the lantern to answer. #}")
		endif
		
		if $rand == 5
			AddPlayerInfo(-1, "item", $itemcard5 , 1 )
			BC( "dialogbox", "player", -1, "You got a Lantern Riddle Card. \n{#ff920000=Please open your bag to check the Riddle, then click the lantern to answer. #}")
		endif
		
		PlayEffect( -1, "common\Yanhua\tx_chunjie\tx_yanhua_chunjie_02.ini" )
		
		
}

//?????????????? ??1 ????????????????????

//??A (??)
	function OnOption1(){

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		$itemcard1 = 59601
		$itemcard2 = 59602
		$itemcard3 = 59603
		$itemcard4 = 59604
		$itemcard5 = 59605
		$denlongvar = 118
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		

	//????????????8,???
	$cishu = GetPlayerVar( -1, 3285 )
	if $cishu >= 8
		BC( "dialogbox", "player", -1, "You have already joined the Riddle Event 8 times. Please come back tomorrow!")
		return
	endif
	
	//?????
	SubPlayerInfo( -1, "item", $itemcard1, 1)
	//?????????+1
	$cishu = $cishu + 1
	SetPlayerVar(-1, 3285 ,$cishu )
	
	
	BC( "dialogbox", "player", -1, "Sorry, your answer is wrong, but don't get discouraged. \n{#ff920000=You got a comforting reward. #}")
		AddPlayerInfo(-1, "item", 59615 , 1 )		

}


// ??B (??)
	function OnOption2(){

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		$itemcard1 = 59601
		$itemcard2 = 59602
		$itemcard3 = 59603
		$itemcard4 = 59604
		$itemcard5 = 59605
		$denlongvar = 118
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		


//????????????8,???
	$cishu = GetPlayerVar( -1, 3285 )
	if $cishu >= 8
		BC( "dialogbox", "player", -1, "You have already joined the Riddle Event 8 times. Please come back tomorrow!")
		return
	endif	
	
	
	//?????
	SubPlayerInfo( -1, "item", $itemcard1, 1)
	//?????????+1
	$cishu = $cishu + 1
	SetPlayerVar(-1, 3285 ,$cishu )
	
	BC( "dialogbox", "player", -1, "Congratulations! Your answer is right! \n{#ff920000=You got a Summer Treat Pack. #}")
	AddPlayerInfo(-1, "item", 59611 , 1 )		
	PlayEffect( -1, "common\Yanhua\tx_zhenbang2\tx_zhenbang2.ini" )
	

}


//??C (??)
	function OnOption3(){

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		$itemcard1 = 59601
		$itemcard2 = 59602
		$itemcard3 = 59603
		$itemcard4 = 59604
		$itemcard5 = 59605
		$denlongvar = 118
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		


//????????????8,???
	$cishu = GetPlayerVar( -1, 3285 )
	if $cishu >= 8
		BC( "dialogbox", "player", -1, "You have already joined the Riddle Event 8 times. Please come back tomorrow!")
		return
	endif	
	
	
	//?????
	SubPlayerInfo( -1, "item", $itemcard1, 1)
	//?????????+1
	$cishu = $cishu + 1
	SetPlayerVar(-1, 3285 ,$cishu )
	
	BC( "dialogbox", "player", -1, "Sorry, your answer is wrong, but don't get discouraged. \n{#ff920000=You got a comforting reward. #}")
		AddPlayerInfo(-1, "item", 59615 , 1 )
}

//????????????? ??1 ?????????????????????????

//?????????????? ??2 ????????????????????

//??A (??)
	function OnOption4(){

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		$itemcard1 = 59601
		$itemcard2 = 59602
		$itemcard3 = 59603
		$itemcard4 = 59604
		$itemcard5 = 59605
		$denlongvar = 118
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		


//????????????8,???
	$cishu = GetPlayerVar( -1, 3285 )
	if $cishu >= 8
		BC( "dialogbox", "player", -1, "You have already joined the Riddle Event 8 times. Please come back tomorrow!")
		return
	endif	
	
	
	//?????
	SubPlayerInfo( -1, "item", $itemcard2, 1)
	//?????????+1
	$cishu = $cishu + 1
	SetPlayerVar(-1, 3285 ,$cishu )
	
	BC( "dialogbox", "player", -1, "Sorry, your answer is wrong, but don't get discouraged. \n{#ff920000=You got a comforting reward. #}")
		AddPlayerInfo(-1, "item", 59615 , 1 )
}


//??B (??)
	function OnOption5(){

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		$itemcard1 = 59601
		$itemcard2 = 59602
		$itemcard3 = 59603
		$itemcard4 = 59604
		$itemcard5 = 59605
		$denlongvar = 118
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		


//????????????8,???
	$cishu = GetPlayerVar( -1, 3285 )
	if $cishu >= 8
		BC( "dialogbox", "player", -1, "You have already joined the Riddle Event 8 times. Please come back tomorrow!")
		return
	endif	
	
	
	//?????
	SubPlayerInfo( -1, "item", $itemcard2, 1)
	//?????????+1
	$cishu = $cishu + 1
	SetPlayerVar(-1, 3285 ,$cishu )
	
	BC( "dialogbox", "player", -1, "Sorry, your answer is wrong, but don't get discouraged. \n{#ff920000=You got a comforting reward. #}")
		AddPlayerInfo(-1, "item", 59615 , 1 )

}


//??C (??)
	function OnOption6(){

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		$itemcard1 = 59601
		$itemcard2 = 59602
		$itemcard3 = 59603
		$itemcard4 = 59604
		$itemcard5 = 59605
		$denlongvar = 118
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		


//????????????8,???
	$cishu = GetPlayerVar( -1, 3285 )
	if $cishu >= 8
		BC( "dialogbox", "player", -1, "You have already joined the Riddle Event 8 times. Please come back tomorrow!")
		return
	endif	
	
	
	//?????
	SubPlayerInfo( -1, "item", $itemcard2, 1)
	//?????????+1
	$cishu = $cishu + 1
	SetPlayerVar(-1, 3285 ,$cishu )
	
	BC( "dialogbox", "player", -1, "Congratulations! Your answer is right! \n{#ff920000=You got a Summer Treat Pack. #}")
	AddPlayerInfo(-1, "item", 59611 , 1 )		
	PlayEffect( -1, "common\Yanhua\tx_zhenbang2\tx_zhenbang2.ini" )


}

//????????????? ??2 ?????????????????????????

//?????????????? ??3 ????????????????????

//??A (??)
	function OnOption7(){

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		$itemcard1 = 59601
		$itemcard2 = 59602
		$itemcard3 = 59603
		$itemcard4 = 59604
		$itemcard5 = 59605
		$denlongvar = 118
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		


//????????????8,???
	$cishu = GetPlayerVar( -1, 3285 )
	if $cishu >= 8
		BC( "dialogbox", "player", -1, "You have already joined the Riddle Event 8 times. Please come back tomorrow!")
		return
	endif	
	
	
	//?????
	SubPlayerInfo( -1, "item", $itemcard3, 1)
	//?????????+1
	$cishu = $cishu + 1
	SetPlayerVar(-1, 3285 ,$cishu )
	
	BC( "dialogbox", "player", -1, "Sorry, your answer is wrong, but don't get discouraged. \n{#ff920000=You got a comforting reward. #}")
		AddPlayerInfo(-1, "item", 59615 , 1 )

}


//??B (??)
	function OnOption8(){

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		$itemcard1 = 59601
		$itemcard2 = 59602
		$itemcard3 = 59603
		$itemcard4 = 59604
		$itemcard5 = 59605
		$denlongvar = 118
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		


//????????????8,???
	$cishu = GetPlayerVar( -1, 3285 )
	if $cishu >= 8
		BC( "dialogbox", "player", -1, "You have already joined the Riddle Event 8 times. Please come back tomorrow!")
		return
	endif	
	
	
	//?????
	SubPlayerInfo( -1, "item", $itemcard3, 1)
	//?????????+1
	$cishu = $cishu + 1
	SetPlayerVar(-1, 3285 ,$cishu )
	
	BC( "dialogbox", "player", -1, "Sorry, your answer is wrong, but don't get discouraged. \n{#ff920000=You got a comforting reward. #}")
		AddPlayerInfo(-1, "item", 59615 , 1 )
}


//??C (??)
	function OnOption9(){

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		$itemcard1 = 59601
		$itemcard2 = 59602
		$itemcard3 = 59603
		$itemcard4 = 59604
		$itemcard5 = 59605
		$denlongvar = 118
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		


//????????????8,???
	$cishu = GetPlayerVar( -1, 3285 )
	if $cishu >= 8
		BC( "dialogbox", "player", -1, "You have already joined the Riddle Event 8 times. Please come back tomorrow!")
		return
	endif	
	
	
	//?????
	SubPlayerInfo( -1, "item", $itemcard3, 1)
	//?????????+1
	$cishu = $cishu + 1
	SetPlayerVar(-1, 3285 ,$cishu )
	
	BC( "dialogbox", "player", -1, "Congratulations! Your answer is right! \n{#ff920000=You got a Summer Treat Pack. #}")
	AddPlayerInfo(-1, "item", 59611 , 1 )		
	PlayEffect( -1, "common\Yanhua\tx_zhenbang2\tx_zhenbang2.ini" )

}

//????????????? ??3 ?????????????????????????

//?????????????? ??4 ????????????????????

//??A (??)
	function OnOption10(){

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		$itemcard1 = 59601
		$itemcard2 = 59602
		$itemcard3 = 59603
		$itemcard4 = 59604
		$itemcard5 = 59605
		$denlongvar = 118
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		


//????????????8,???
	$cishu = GetPlayerVar( -1, 3285 )
	if $cishu >= 8
		BC( "dialogbox", "player", -1, "You have already joined the Riddle Event 8 times. Please come back tomorrow!")
		return
	endif	
	
	
	//?????
	SubPlayerInfo( -1, "item", $itemcard4, 1)
	//?????????+1
	$cishu = $cishu + 1
	SetPlayerVar(-1, 3285 ,$cishu )
	
	BC( "dialogbox", "player", -1, "Congratulations! Your answer is right! \n{#ff920000=You got a Summer Treat Pack. #}")
	AddPlayerInfo(-1, "item", 59611 , 1 )		
	PlayEffect( -1, "common\Yanhua\tx_zhenbang2\tx_zhenbang2.ini" )

}


//??B (??)
	function OnOption11(){

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		$itemcard1 = 59601
		$itemcard2 = 59602
		$itemcard3 = 59603
		$itemcard4 = 59604
		$itemcard5 = 59605
		$denlongvar = 118
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		


//????????????8,???
	$cishu = GetPlayerVar( -1, 3285 )
	if $cishu >= 8
		BC( "dialogbox", "player", -1, "You have already joined the Riddle Event 8 times. Please come back tomorrow!")
		return
	endif	
	
	
	//?????
	SubPlayerInfo( -1, "item", $itemcard4, 1)
	//?????????+1
	$cishu = $cishu + 1
	SetPlayerVar(-1, 3285 ,$cishu )
	
	BC( "dialogbox", "player", -1, "Sorry, your answer is wrong, but don't get discouraged. \n{#ff920000=You got a comforting reward. #}")
		AddPlayerInfo(-1, "item", 59615 , 1 )
}


//??C (??)
	function OnOption12(){

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		$itemcard1 = 59601
		$itemcard2 = 59602
		$itemcard3 = 59603
		$itemcard4 = 59604
		$itemcard5 = 59605
		$denlongvar = 118
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		


//????????????8,???
	$cishu = GetPlayerVar( -1, 3285 )
	if $cishu >= 8
		BC( "dialogbox", "player", -1, "You have already joined the Riddle Event 8 times. Please come back tomorrow!")
		return
	endif	
	
	
	//?????
	SubPlayerInfo( -1, "item", $itemcard4, 1)
	//?????????+1
	$cishu = $cishu + 1
	SetPlayerVar(-1, 3285 ,$cishu )
	
	BC( "dialogbox", "player", -1, "Sorry, your answer is wrong, but don't get discouraged. \n{#ff920000=You got a comforting reward. #}")
		AddPlayerInfo(-1, "item", 59615 , 1 )
}

//????????????? ??4 ?????????????????????????

//?????????????? ??5 ????????????????????

//??A (??)
	function OnOption13(){

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		$itemcard1 = 59601
		$itemcard2 = 59602
		$itemcard3 = 59603
		$itemcard4 = 59604
		$itemcard5 = 59605
		$denlongvar = 118
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		


//????????????8,???
	$cishu = GetPlayerVar( -1, 3285 )
	if $cishu >= 8
		BC( "dialogbox", "player", -1, "You have already joined the Riddle Event 8 times. Please come back tomorrow!")
		return
	endif	
	
	
	//?????
	SubPlayerInfo( -1, "item", $itemcard5, 1)
	//?????????+1
	$cishu = $cishu + 1
	SetPlayerVar(-1, 3285 ,$cishu )
	
	BC( "dialogbox", "player", -1, "Congratulations! Your answer is right! \n{#ff920000=You got a Summer Treat Pack. #}")
	AddPlayerInfo(-1, "item", 59611 , 1 )		
	PlayEffect( -1, "common\Yanhua\tx_zhenbang2\tx_zhenbang2.ini" )

}


//??B (??)
	function OnOption14(){

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		$itemcard1 = 59601
		$itemcard2 = 59602
		$itemcard3 = 59603
		$itemcard4 = 59604
		$itemcard5 = 59605
		$denlongvar = 118
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		


//????????????8,???
	$cishu = GetPlayerVar( -1, 3285 )
	if $cishu >= 8
		BC( "dialogbox", "player", -1, "You have already joined the Riddle Event 8 times. Please come back tomorrow!")
		return
	endif	
	
	
	//?????
	SubPlayerInfo( -1, "item", $itemcard5, 1)
	//?????????+1
	$cishu = $cishu + 1
	SetPlayerVar(-1, 3285 ,$cishu )
	
	BC( "dialogbox", "player", -1, "Sorry, your answer is wrong, but don't get discouraged. \n{#ff920000=You got a comforting reward. #}")
		AddPlayerInfo(-1, "item", 59615 , 1 )
}


//??C (??)
	function OnOption15(){

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		
		$itemcard1 = 59601
		$itemcard2 = 59602
		$itemcard3 = 59603
		$itemcard4 = 59604
		$itemcard5 = 59605
		$denlongvar = 118
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~		


//????????????8,???
	$cishu = GetPlayerVar( -1, 3285 )
	if $cishu >= 8
		BC( "dialogbox", "player", -1, "You have already joined the Riddle Event 8 times. Please come back tomorrow!")
		return
	endif	
	
	
	//?????
	SubPlayerInfo( -1, "item", $itemcard5, 1)
	//?????????+1
	$cishu = $cishu + 1
	SetPlayerVar(-1, 3285 ,$cishu )
	
	BC( "dialogbox", "player", -1, "Sorry, your answer is wrong, but don't get discouraged. \n{#ff920000=You got a comforting reward. #}")
		AddPlayerInfo(-1, "item", 59615 , 1 )
}

//????????????? ??5 ?????????????????????????

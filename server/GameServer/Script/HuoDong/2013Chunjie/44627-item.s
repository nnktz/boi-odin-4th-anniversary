 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013  
 //  Author:???  
 //  TaskName: ?????? 
 //****************************  
function OnUseItem(){


  //???????
  $itemid = GetItemID()
  $del_count = SubPlayerInfo( -1, "item", $itemid, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif


  //---------?????????------------62148???
  	#name = GetPlayerInfo( -1, "name" )
//		AddPlayerInfo( -1, "prename", 19912 )
		 //0?,1?
  	$sex = GetPlayerInfo( -1, "sex" )
		if $sex == 0
			AddPlayerInfo(-1, "item", 62148, 1 )
			AddPlayerInfo( -1, "prename", 19918 )
			PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
			BC( "screen", "player", -1, "Received the Prefix Unrivalled!")
			BC( "scrollbar", "servergroup", -1, "Player",#name,"Ranked number 1 on the Charisma ranking list during the Valentine's Day Event and was bestowed the one-of-a-kind title: Unrivalled!")
			BC( "scrollbar", "servergroup", -1, "Player",#name,"ranked top 1 on the Charisma ranking list during the Valentine's Day Event, and obtained the Mount Love Boat!")
		endif
		
		if $sex == 1
			AddPlayerInfo(-1, "item", 62148, 1 )
			AddPlayerInfo( -1, "prename", 19915 )
			PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
			BC( "screen", "player", -1, "Received the Prefix Drop-dead Gorgeous.")
			BC( "scrollbar", "servergroup", -1, "Player",#name,"ranked top 1 on the Charisma ranking list during the Valentine's Day Event, and was bestowed the one-of-a-kind title: Drop-dead Gorgeous!")
			BC( "scrollbar", "servergroup", -1, "Player",#name,"ranked top 1 on the Charisma ranking list during the Valentine's Day Event, and obtained the Mount Love Boat!")	
		endif
    
  
}
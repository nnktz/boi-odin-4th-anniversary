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


  //---------?????????------------62061????
  	#name = GetPlayerInfo( -1, "name" )
//		AddPlayerInfo( -1, "prename", 19912 )
			$sex = GetPlayerInfo( -1, "sex" )
		if $sex == 0
			AddPlayerInfo(-1, "item", 62061, 1 )
			AddPlayerInfo( -1, "prename", 19920 )
			PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
			BC( "screen", "player", -1, "Received the Prefix Elegant!")
			BC( "scrollbar", "servergroup", -1, "Player",#name,"Ranked number 3 on the Charisma ranking list during the Valentine's Day Event and was bestowed the one-of-a-kind title: Elegant!")
			BC( "scrollbar", "servergroup", -1, "Player",#name,"ranked top 3 on the Charisma ranking list during the Valentine's Day Event, and obtained the Mount Night's Romance!")
		endif
		
		if $sex == 1
	    AddPlayerInfo(-1, "item", 62061, 1 )
			AddPlayerInfo( -1, "prename", 19917 )
			PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
			BC( "screen", "player", -1, "Received the Prefix Love Boat.")
			BC( "scrollbar", "servergroup", -1, "Player",#name,"ranked top 3 on the Charisma ranking list during the Valentine's Day Event, and was bestowed the one-of-a-kind title: Love Boat!")
			BC( "scrollbar", "servergroup", -1, "Player",#name,"ranked top 3 on the Charisma ranking list during the Valentine's Day Event, and obtained the Mount Night's Romance!")
  	endif
}

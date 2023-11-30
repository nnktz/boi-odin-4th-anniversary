 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.3.9  
 //  Author:???  
 //  TaskName: ?????? 
 //****************************  
function OnUseItem(){
  
//??44407	???*40??
//44707	????	
//44708	?????	
//44709	??????	
	$item = GetPlayerInfo(-1,"item",44407)
	if $item < 40
		BC("chat","player",-1,"It takes 40 Gold Keys to open the Holy Golden Snake Jade. You have insufficient Gold Keys in your bag!")
		BC("screen","player",-1,"It takes 40 Gold Keys to open the Holy Golden Snake Jade. You have insufficient Gold Keys in your bag!")
		return
	endif
	$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 2
     BC( "screen", "player", -1, "You need at least 2 empty slots in your bag before you can open the Holy Golden Snake Jade!" )
     BC( "chat", "player", -1, "You need at least 2 empty slots in your bag before you can open the Holy Golden Snake Jade!" )
     return
  endif
  $bag_count = GetPlayerInfo( -1, "nullitem", 1 )
  if $bag_count < 1
     BC( "screen", "player", -1, "You need at least 2 empty slots in your bag before you can open the Holy Golden Snake Jade!" )
     BC( "chat", "player", -1, "You need at least 2 empty slots in your bag before you can open the Holy Golden Snake Jade!" )
     return
  endif
  //???????
  $del_count = SubPlayerInfo( -1, "item", 44407, 40 )
  //??????????,????????
  if $del_count != 0
     return
  endif
    //???????
  $del_count = SubPlayerInfo( -1, "item", 44709, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //---------?????????------------
//  9	??????
//2221	?????
//62149	?????????


  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  
  //????
  AddPlayerInfo(-1,"item",9,200)
  AddPlayerInfo(-1,"item",2221,100)
  AddPlayerInfo(-1,"item",62149,1)

}
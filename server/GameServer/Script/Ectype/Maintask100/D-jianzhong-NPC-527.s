	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/27
	//		Author:???
	//		TaskName:97-jianzhong-NPC-527.s
	//		TaskID: ?? 
	//
	//****************************************

	function OnRequest(){
		
		
		$Accept = IsTaskAccept( -1 , 226 )
		if $Accept != 0
			DisableNpcOption(0)
		endif
			
	}
	
	function OnOption0(){
//		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		BC( "screen","player",-1,"Not working" )

	}
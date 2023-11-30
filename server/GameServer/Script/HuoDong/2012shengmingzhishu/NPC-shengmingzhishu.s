	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-7-31
	//		Author:??
	//		TaskName:NPC-shengmingzhishu.s
	//		TaskID:????
	//****************************************
	
	function OnRequest(){
		$playernum = GetPlayerVar( -1, 210 )
		if $playernum != 0
			DisableNpcOption(0)
		endif
	}
//	function OnOption0(){
//		//????
//		$line = GetServerLineID()
//		if $line != 7
//			BC( "screen", "player", -1, "GUID:04946000000" )
//			return
//		endif		
//		//?????
//		$guangai = GetServerVar(297 )
//		//?????
//		$level = GetPlayerInfo( -1, "level" )
//		$fieldlevel = GetFieldLevel(-1 )		
//		//???
//		//((level*4-76)*6*level*level/5+400*level*level)*2
//		$exp = $level * 4
//		$exp = $exp - 76
//		$exp = $exp * 6
//		$exp = $exp * $level
//		$exp = $exp * $level
//		$exp = $exp / 5
//		$exp1 = $level * $level
//		$exp1 = 400 * $exp1
//		$exp = $exp + $exp1
//		$exp = $exp * 2
//		//???
//		//(level^2+0.6*level+1000)*350
//		if $fieldlevel != 0
//			$fieldexp = $fieldlevel * $fieldlevel
//			$fieldexp1 =  $fieldlevel * 10
//			$fieldexp1 = $fieldexp1 / 6
//			$fieldexp1 = $fieldexp1 + 1000
//			$fieldexp = $fieldexp1 + $fieldexp
//			$fieldexp = $fieldexp * 350			
//		else
//			$fieldexp = 0
//		endif
//		//??????
//		$num1 = GetPlayerInfo( -1, "item", 44376 )
//		//????????
//		$num2 = GetPlayerInfo( -1, "item", 44377 )
//		$totalnum = $num1 + $num2
//		if $totalnum < 1
//			BC( "screen", "player", -1, "GUID:04946000001" )
//		endif
////		BC( "screen", "player", -1, "GUID:04946000002",$num1,"GUID:04946000003",$num1,"GUID:04946000004" )
//		if $num1 > 0
//			$result = SubPlayerInfo( -1, "item", 44376, 1 )
//			if $result == 0
//				AddPlayerInfo( -1, "exp", $exp )
//				AddFieldExp( -1, $fieldexp )
//				//????-START
//				$TJ_join_number = GetGlobalVar(882)
//				$TJ_join_number = $TJ_join_number + 1
//				SetGlobalVar(882 , $TJ_join_number)
//				SetPlayerActLog(-1,1,0)
//				//????-END
//				$guangai = $guangai + 1
////				BC( "screen", "player", -1, "GUID:04946000005",$guangai,"GUID:04946000006" )
//				SetServerVar( 297, $guangai )				
//				return
//			endif
//		endif
//		
//		//??????????
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		if $bag_count < 1
//			BC( "screen", "player", -1, "GUID:04946000007" )
//			return
//		endif
//		
//		if $num2 > 0
//			$result = SubPlayerInfo( -1, "item", 44377, 1 )
//				if $result == 0
//				//??
//				$n = RandomNumber ( 1, 100 )
//				//4???
//				if $n > 99
//					AddPlayerInfo( -1, "item", 5981, 1 )
//					#name = GetPlayerInfo(-1 , "name")
//					BC("screen","servergroup",-1,"GUID:04946000008",#name,"GUID:04946000009")
//					BC("chat","servergroup",-1,"GUID:04946000010",#name,"GUID:04946000011")
//				endif
//				//3???
//				if $n > 94
//					if $n < 100
//						AddPlayerInfo( -1, "item", 5963, 1 )
//						#name = GetPlayerInfo(-1 , "name")
//						BC("screen","servergroup",-1,"GUID:04946000012",#name,"GUID:04946000013")
//						BC("chat","servergroup",-1,"GUID:04946000014",#name,"GUID:04946000015")
//					endif
//				endif
//				//2???
//				if $n < 95
//					AddPlayerInfo( -1, "item", 5945, 1 )
//				endif			
//					AddPlayerInfo( -1, "exp", $exp )
//					AddFieldExp( -1, $fieldexp )
//					//????-START
//					$TJ_join_number = GetGlobalVar(882)
//					$TJ_join_number = $TJ_join_number + 1
//					SetGlobalVar(882 , $TJ_join_number)
//					SetPlayerActLog(-1,1,1)
//					//????-END
//					$guangai = $guangai + 1
//					SetServerVar( 297, $guangai )
//				return
//			endif
//		endif
//		
//	}
//	
//		function OnOption1(){
//		//????
//		$line = GetServerLineID()
//		if $line != 7
//			BC( "screen", "player", -1, "GUID:04946000016" )
//			return
//		endif		
//		//?????
//		$guangai = GetServerVar(297 )
//		BC( "dialogbox",  "player", -1, "GUID:04946000017",$guangai,"GUID:04946000018")	
//		}
//		function OnOption2(){
//		//????
//		$line = GetServerLineID()
//		if $line != 7
//			BC( "screen", "player", -1, "GUID:04946000019" )
//			return
//		endif		
//		//????????
//		//??
//		$Now_Minute =  GetSystemTime( "minute")
//		//??
//		$Now_Hour =  GetSystemTime( "hour" )
//		//??
//		$Now_Mday =  GetSystemTime( "mday" )	
//		//??
//		$Now_Month =  GetSystemTime( "month" )
//		//???.2008????
//		$Now_Year =  GetSystemTime( "year" )
//		//???.0-6
//		$Now_Week =  GetSystemTime( "week" )
//		//??????.0-365
//		$Now_Yday =  GetSystemTime( "yday" )
//		//?????
//		$guangai = GetServerVar(297 )
//		//????????3343
//		$playernum = GetPlayerVar( -1, 3343 )
//		//?????????????,?????
////		BC( "screen",  "player", -1, "1")	
//		if $playernum > 30
//			BC( "screen", "player", -1, "GUID:04946000020" )
//			return
//		endif
//		if $Now_Year == 2012
//			if $Now_Month == 9
//				if $Now_Mday >= 9
//						if $Now_Hour == 21
//							if $Now_Minute >= 20
//									$result = SetPlayerVar( -1, 3343, 50 )
//									if $result == 0
//										//???????
//										//????((level*4-76)*6*level*level/5+400*level*level)*5*guangai/20000
//										//????(level^2+0.6*level+1000)*1000*guangai/20000	
//										//?????
//										$level = GetPlayerInfo( -1, "level" )
//										$fieldlevel = GetFieldLevel(-1 )				
//										$exp = $level * 4
//										$exp = $exp - 76
//										$exp = $exp * 6
//										$exp = $exp * $level
//										$exp = $exp * $level
//										$exp = $exp / 5
//										$exp1 = $level * $level
//										$exp1 = 400 * $exp1
//										$exp = $exp + $exp1
//										$exp = $exp * 5
////										BC( "chat", "player", -1, "GUID:04946000021",$exp,"GUID:04946000022" )
//										$exp = $exp / 20000
//										$exp = $exp * $guangai
////										BC( "chat", "player", -1, "GUID:04946000023",$exp,"GUID:04946000024" )
////										BC( "chat", "player", -1, "GUID:04946000025",$guangai,"GUID:04946000026" )
////										
//
//										if $fieldlevel != 0
//											$fieldexp = $fieldlevel * $fieldlevel
//											$fieldexp1 = $fieldlevel * 10
//											$fieldexp1 = $fieldexp1 / 6
//											$fieldexp1 = $fieldexp1 + 1000
//											$fieldexp = $fieldexp1 + $fieldexp
//											$fieldexp = $fieldexp * 1000
//											$fieldexp = $fieldexp * $guangai
//											$fieldexp = $fieldexp / 20000
//										else
//											$fieldexp = 0
//										endif
//										AddPlayerInfo( -1, "exp", $exp )
//										AddFieldExp( -1, $fieldexp )									
//										return
//									endif
//								endif
//						endif	
//						if $Now_Hour > 21
//								$result = SetPlayerVar( -1, 3343, 50 )
//									if $result == 0
//										//???????
//										//????((level*4-76)*6*level*level/5+400*level*level)*5*guangai/20000
//										//????(level^2+0.6*level+1000)*1000*guangai/20000	
//										//?????
//										$level = GetPlayerInfo( -1, "level" )
//										$fieldlevel = GetFieldLevel(-1 )				
//										$exp = $level * 4
//										$exp = $exp - 76
//										$exp = $exp * 6
//										$exp = $exp * $level
//										$exp = $exp * $level
//										$exp = $exp / 5
//										$exp1 = $level * $level
//										$exp1 = 400 * $exp1
//										$exp = $exp + $exp1
//										$exp = $exp * 5
////										BC( "chat", "player", -1, "GUID:04946000027",$exp,"GUID:04946000028" )
//										$exp = $exp / 20000
//										$exp = $exp * $guangai
////										BC( "chat", "player", -1, "GUID:04946000029",$exp,"GUID:04946000030" )
////										BC( "chat", "player", -1, "GUID:04946000031",$guangai,"GUID:04946000032" )
////										
//
//										if $fieldlevel != 0
//											$fieldexp = $fieldlevel * $fieldlevel
//											$fieldexp1 = $fieldlevel * 10
//											$fieldexp1 = $fieldexp1 / 6
//											$fieldexp1 = $fieldexp1 + 1000
//											$fieldexp = $fieldexp1 + $fieldexp
//											$fieldexp = $fieldexp * 1000
//											$fieldexp = $fieldexp * $guangai
//											$fieldexp = $fieldexp / 20000
//										else
//											$fieldexp = 0
//										endif
//										AddPlayerInfo( -1, "exp", $exp )
//										AddFieldExp( -1, $fieldexp )
//										
//										return			
//								endif				
//						endif
//					endif
//			endif
//		endif		
//		BC( "screen", "player", -1, "GUID:04946000033" )
//		}
		function OnOption0(){
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		$playernum = GetPlayerVar( -1, 210 )
		if $playernum == 1
			BC( "screen", "player", -1, "You've already collected your make-up prize!" )
			return
		endif
		//?????????????,?????
//		BC( "screen",  "player", -1, "1")	
		$level = GetPlayerInfo( -1, "level" )
		$fieldlevel = GetFieldLevel(-1 )		
		//???
		//((level*4-76)*6*level*level/5+400*level*level)*2
		$exp = $level * 4
		$exp = $exp - 76
		$exp = $exp * 6
		$exp = $exp * $level
		$exp = $exp * $level
		$exp = $exp / 5
		$exp1 = $level * $level
		$exp1 = 400 * $exp1
		$exp = $exp + $exp1
		$exp = $exp * 2
		$exp = $exp * 2
		//???
		//(level^2+0.6*level+1000)*350
		if $fieldlevel != 0
			$fieldexp = $fieldlevel * $fieldlevel
			$fieldexp1 =  $fieldlevel * 10
			$fieldexp1 = $fieldexp1 / 6
			$fieldexp1 = $fieldexp1 + 1000
			$fieldexp = $fieldexp1 + $fieldexp
			$fieldexp = $fieldexp * 350			
			$fieldexp = $fieldexp * 2
		else
			$fieldexp = 0
		endif		
		AddPlayerInfo( -1, "exp", $exp )
		AddFieldExp( -1, $fieldexp )
		AddPlayerInfo( -1, "item", 59838, 1 )
		SetPlayerVar( -1, 210, 1)
		BC( "screen", "player", -1, "Successfully collected make-up prize!" )
		}
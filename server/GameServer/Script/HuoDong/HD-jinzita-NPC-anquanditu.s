	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/14
	//		Author:??
	//		TaskName:HD-jinzita-NPC-anquanditu.s
	//		TaskID:????????-????????NPC,???????????
	//
	//****************************************
	//3617,?????????????????
	//3214,???????????????????????
	
	function OnRequest(){
	//????????????
	
		$today_days = GetSystemTime( "yday" )	
		$today_week = GetSystemTime( "week" )
		
		if $today_week != 5
			DisableNpcOption(0)
		endif
		
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$houradd = $hour * 100
		$time = $houradd + $minute
		if $time <= 2130
			DisableNpcOption(0)
		endif
		//-------------------------
		
		$last_days = GetPlayerVar(-1,3617)
		
		if $today_days != $last_days
			DisableNpcOption(0)
		endif
		
	}
	
	//?????
	function OnOption0(){
		
		$today_days = GetSystemTime( "yday" )	
		$last_days = GetPlayerVar(-1,3617)
		
		if $today_days != $last_days
			BC( "chat", "player", -1, "You have not been to the Pyramid today." )
			return
		endif
		
		$line =  GetServerLineID()
		if $line != 6
			BC( "chat", "player", -1, "Only Realm 6 can enter the Pyramid." )
			return
		endif
		
		$map_id = GetPlayerVar(-1, 4207)

		call getmappos()
		
			$map_x *= 100
			$map_x /= 256
			$map_y *= 100
			$map_y /= 256
		$succ = FlyToEctype( -1, $map_id, $map_x, $map_y )
//		BC("chat","player",-1,"|map_id=",$map_id,"|map_x=",$map_x,"|map_y=",$map_y,"|succ=",$succ)
		
	}
	//????
	function OnOption1(){

		FlyToMap( -1, 475, 71, 39 )
		
	}
	
	
function getmappos(){

	if $map_id == 575
		$randombuff = RandomNumber(1,6)
		if $randombuff == 1
			$map_x = 81
			$map_y = 75
		endif
		if $randombuff == 2
			$map_x = 234
			$map_y = 244
		endif
		if $randombuff == 3
			$map_x = 231
			$map_y = 94
		endif
		if $randombuff == 4
			$map_x = 82
			$map_y = 242
		endif
		if $randombuff == 5
			$map_x = 172
			$map_y = 111
		endif
		if $randombuff == 6
			$map_x = 128
			$map_y = 208
		endif
	endif
	if $map_id == 576
		//???????,??????????????
			$map_x = 85
			$map_y = 158
	endif
	if $map_id == 577
		$randombuff = RandomNumber(1,6)
		if $randombuff == 1
			$map_x = 74
			$map_y = 113
		endif
		if $randombuff == 2
			$map_x = 81
			$map_y = 243
		endif
		if $randombuff == 3
			$map_x = 218
			$map_y = 76
		endif
		if $randombuff == 4
			$map_x = 215
			$map_y = 147
		endif
		if $randombuff == 5
			$map_x = 122
			$map_y = 158
		endif
		if $randombuff == 6
			$map_x = 139
			$map_y = 204
		endif
	endif
	if $map_id == 578
		$randombuff = RandomNumber(1,6)
		if $randombuff == 1
			$map_x = 115
			$map_y = 161
		endif
		if $randombuff == 2
			$map_x = 165
			$map_y = 210
		endif
		if $randombuff == 3
			$map_x = 74
			$map_y = 130
		endif
		if $randombuff == 4
			$map_x = 72
			$map_y = 236
		endif
		if $randombuff == 5
			$map_x = 203
			$map_y = 254
		endif
		if $randombuff == 6
			$map_x = 244
			$map_y = 217
		endif
	endif
	if $map_id == 579
		$randombuff = RandomNumber(1,6)
		if $randombuff == 1
			$map_x = 115
			$map_y = 161
		endif
		if $randombuff == 2
			$map_x = 165
			$map_y = 210
		endif
		if $randombuff == 3
			$map_x = 74
			$map_y = 130
		endif
		if $randombuff == 4
			$map_x = 72
			$map_y = 236
		endif
		if $randombuff == 5
			$map_x = 203
			$map_y = 254
		endif
		if $randombuff == 6
			$map_x = 115
			$map_y = 217
		endif
	endif
	if $map_id == 580
		$randombuff = RandomNumber(1,6)
		if $randombuff == 1
			$map_x = 148
			$map_y = 238
		endif
		if $randombuff == 2
			$map_x = 207
			$map_y = 241
		endif
		if $randombuff == 3
			$map_x = 219
			$map_y = 165
		endif
		if $randombuff == 4
			$map_x = 248
			$map_y = 115
		endif
		if $randombuff == 5
			$map_x = 177
			$map_y = 168
		endif
		if $randombuff == 6
			$map_x = 90
			$map_y = 199
		endif
	endif
	
	}


//****************************************
//		Copyright:PERFECT WORLD
//		Modified:2013
//		Author:???
//		Best wishs for all !
//****************************************


function OnRequest(){

		//??6??
		$line = GetServerLineID()
		if $line != 6
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif
		
		//???5??????
		$today_week = GetSystemTime( "week" )
		if $today_week != 5
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			return
		endif
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$houradd = $hour * 100
		$time = $houradd + $minute
		if $time < 2130
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif
	
}
//[???????]	
function OnOption0(){
	BC("screen","player",-1,"Pyramid Portal is filled with energy!")
}
//????	
function OnOption1(){
	$map_id = 575
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
	call enter_JZT()
}
//????
function OnOption2(){
	$map_id = 576
	$randombuff = RandomNumber(1,6)
	if $randombuff == 1
		$map_x = 161
		$map_y = 75
	endif
	if $randombuff == 2
		$map_x = 160
		$map_y = 101
	endif
	if $randombuff == 3
		$map_x = 163
		$map_y = 250
	endif
	if $randombuff == 4
		$map_x = 161
		$map_y = 224
	endif
	if $randombuff == 5
		$map_x = 248
		$map_y = 164
	endif
	if $randombuff == 6
		$map_x = 209
		$map_y = 163
	endif
	call enter_JZT()
}
//????	
function OnOption3(){
	$map_id = 577
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
	call enter_JZT()
}
//????	
function OnOption4(){
	$map_id = 578
	$randombuff = RandomNumber(1,6)
	if $randombuff == 1
//193	90
		$map_x = 193
		$map_y = 90
	endif
	if $randombuff == 2
//193	172
		$map_x = 193
		$map_y = 172
	endif
	if $randombuff == 3
//129	118
		$map_x = 129
		$map_y = 118
	endif
	if $randombuff == 4
//236	161
		$map_x = 236
		$map_y = 161
	endif
	if $randombuff == 5
//256	243
		$map_x = 256
		$map_y = 243
	endif
	if $randombuff == 6
//81	114
		$map_x = 81
		$map_y = 114
	endif
	call enter_JZT()
}
//????	
function OnOption5(){
	$map_id = 579
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
	call enter_JZT()
}
//????	
function OnOption6(){
	$map_id = 580
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
	call enter_JZT()
}




function enter_JZT(){
	
	//3214,???????????????????
	//3617,?????????????????
	
	$yday = GetSystemTime( "yday" )
	$team_headerID = GetTeamHeaderID(-1)
	$player_id = GetPlayerID()
	
	if $player_id != $team_headerID
		BC( "dialogbox", "player", -1, "You are not the Party Leader." )
		return
	endif
	
	$count = GetPlayerInfo( -1, "item", 63172)
	if $count < 1
		BC( "dialogbox", "player", -1, "You didn't carry a Pyramid Passport!" )
		return
	endif
	
	$indexW = 0
	while $indexW < 6
		$teamplayer_id =  GetTeamMemberID( -1, $indexW )
		if $teamplayer_id > 0
			$temp_level = GetPlayerInfo( $teamplayer_id, "level" )
			#name = GetPlayerInfo($teamplayer_id,"name")
			if $temp_level < 80
				BC( "dialogbox", "player", -1, "Player ",#name,"Level is lower than 80. Unable to move in!" )
				return
			endif
			$lastday = GetPlayerVar($teamplayer_id,3617)
			if $lastday == $yday
				BC( "dialogbox", "player", -1, "Player ",#name,"You have already entered the Pyramid today. Unable to enter again!" )
				return
			endif
			$lastday = GetPlayerVar($teamplayer_id,4207)
			if $lastday == $yday
				BC( "dialogbox", "player", -1, "Player ",#name," You have already joined Pyramid Approach Event, and you can't join other events of this kind." )
				return
			endif
				if $map_id == 576
					$nullitem = GetPlayerInfo($teamplayer_id,"nullitem",0)
					if $nullitem < 1
						BC( "dialogbox", "player", -1, "Player ",#name,"Insufficient Bag slots!" )
						return
					endif
				endif
		endif
		$indexW += 1
	endwhile
	
	$size = GetTeamAreaSize(-1)
	if $size > 10
		BC( "dialogbox", "player", -1, "Your party members are too far away!" )
		return
	endif
	
	$revalue = SubPlayerInfo(-1 , "item" , 63172 , 1)
	if $revalue != 0
		BC( "dialogbox", "player", -1, "Item delete failed." )
		return
	endif
	
	#player_name = GetPlayerInfo( $team_headerID, "name" )	
	BC( "screen", "server", -1, "Player ",#player_name,"Lead the party and entered the Pyramid!" )
	$map_x *= 100
	$map_x /= 256
	$map_y *= 100
	$map_y /= 256
	$indexW = 0
	while $indexW < 6
		$teamplayer_id =  GetTeamMemberID( -1, $indexW )
		if $teamplayer_id > 0
			$result = FlyToEctype($teamplayer_id,$map_id,$map_x,$map_y)
			if $result >= 0
				if $map_id == 576
					AddPlayerInfo($teamplayer_id,"item",44866,1)
				endif
				SetPlayerVar($teamplayer_id,3617,$yday )
				SetPlayerVar($teamplayer_id,3471,0)
				SetPlayerVar($teamplayer_id,4207,$map_id)
				CancelTask($teamplayer_id,1920)
				CancelTask($teamplayer_id,1921)
				AcceptTask($teamplayer_id,1921)
				//------------------LOG
				#logname = GetPlayerInfo($teamplayer_id,"name")
				#str = strcat_x("PlayerLog_Script-Pyramid Enter-player [",#logname)
				#str = strcat_x(#str,"] entered Pyramid, Date [%d] Map [%d]")
				$var0 = $yday
				$var1 = $map_id
				ScriptLog0(#str,$var0,$var1)
				SetPlayerActLog($teamplayer_id,61,1001)
				//------------------LOG
			else
				BC("messagebox","player",$teamplayer_id,"Failed to enter the Pyramid for unknown reason! Please take snapshots and report the bug! [",$result,")(",$map_id,")(",$map_x,")(",$map_y,")")
			endif
		endif
		$indexW += 1
	endwhile
	
	$join_team_number = $join_team_number + 1
	SetServerVar(30,$join_team_number)
	//????-START
	$team_count = GetTeamMemberCount(-1)
	$TJ_join_number = GetGlobalVar(942)
	$TJ_join_number = $TJ_join_number + $team_count
	SetGlobalVar(942 , $TJ_join_number)
	//????-END
	
}

	
//****************************************
//		Copyright：PERFECT WORLD
//		Modified：2011/04/07
//		Author：胡斌涛
//		TaskName：测试
//		TaskID：
//****************************************
function OnUseItem(){
	$playerid = GetPlayerID()
	$year = GetSystemTime("year")
	$month = GetSystemTime("month")
	$mday = GetSystemTime("mday")
	$week = GetSystemTime("week")
	$hour = GetSystemTime("hour")
	$minute = GetSystemTime("minute")
	$second = GetSystemTime("second")
	$yday = GetSystemTime("yday")
	$yweek = GetNowWeek()
	$mapid = GetPlayerInfo($playerid,"mapid")
	$posx = GetPlayerInfo($playerid,"mapposx")
	$posy = GetPlayerInfo($playerid,"mapposy")
	$level = GetPlayerInfo($playerid,"level")
	$FLDlevel = GetFieldLevel($playerid)
	$ExpPT = GetPlayerInfo($playerid,"exp")
	$guildid = GetPlayerInfo($playerid,"guildid")
	$powerwostatus = GetPlayerInfo($playerid,"powerwostatus")
	$ectype_id = GetCurEctypeID()
	$ServerGrade = GetServerGrade()
	BC("screen","player",-1,$year," - ",$month," - ",$mday," | ",$hour," : ",$minute," : ",$second," | week = ",$week," | yday = ",$yday," | yweek = ",$yweek)," | SG = ",$ServerGrade)
	BC("screen","player",-1,"mapid = ",$mapid," | playerid = ",$playerid," | guildid = ",$guildid," | power=",$powerwostatus)
	//---------------------------------------------------------常规
	if $mapid > 10000
		//call in_ectype()
//		ReleaseEctype($ectype_id)
//		FlyToMap(-1,84,64,64)
SetEctypeVar($ectype_id,10,1)
	else
		//call outer_land()
//		FlyToEctype($playerid,532,37,35)
	endif
//		$RankListF = GetFieldRankListValue(199)
//		$RankList = GetRankListValue(1,199)
//		BC("chat","player",-1,"|RankListF=",$RankListF,"|RankListF2=",$RankListF2,"|RankList=",$RankList)

//	AddNpcByPos(1187,475,183,93,10000,0)
//	$ectype_idsddd = GetEctypeID(-1,558)
//	$fgsdfg = ReleaseEctype($ectype_idsddd)
//	BC("chat","player",-1,"|fgsdfg=",$fgsdfg)
	
	if $mapid == 475
//			$getitem = GetPlayerInfo(-1,"item",63910)
//			if $getitem < 255
//				AddPlayerInfo(-1,"item",63910,255)
//			endif
//		EnableAstroPanel($playerid)
//		AddAPPoint(100)
	endif
//	//-------------------------------------------变量
//		$key = 3393
//		$getvar = GetPlayerVar(-1,$key)
//		if $getvar > 0
//			BC("chat","player",-1,"PlayerVar(",$key,")= ",$getvar)
//		endif
//		$key = 281
//		while $key <= 298
//			$getvar = GetGlobalVar($key)
//			if $getvar > 0
//				BC("chat","player",-1,"GetGlobalVar(",$key,")= ",$getvar)
//			endif
//			$key += 1
//		endwhile
//		$key = 388
//		while $key <= 397
//			$getvar = GetServerVar($key)
//			#name = " "
//			if $getvar > 0
//				$key2 = $key + 10
//				$getvar2 = GetServerVar($key2)
//				#name = GetPlayerInfo($getvar,"name")
//				BC("chat","player",-1,"S(",$key,")= ",$getvar," | n=",#name," | s=",$getvar2)
//			endif
//			$key += 1
//		endwhile
//	//--------------------------------------宝箱
//			//高强
//			SubPlayerInfo(-1,"item",2,-1)
//			SubPlayerInfo(-1,"item",5,-1)
//			SubPlayerInfo(-1,"item",9,-1)
//			//钱袋
//			SubPlayerInfo(-1,"item",59323,-1)
//			//+7
//			SubPlayerInfo(-1,"item",44378,-1)
//			//天印
//			SubPlayerInfo(-1,"item",2314,-1)
//			$getitem = GetPlayerInfo(-1,"item",xxx)
//			if $getitem < 200
//				AddPlayerInfo(-1,"item",xxx,200)
//			endif
//			$ig = IsExistStatus(-1,6451)
//			BC("chat","player",-1,"|ig=",$ig)	
	//-----------------------------------------天梯
	if $mapid == 84
		$tianti_level = 100
		call tianti()
	endif
	//-----------------------------------------装备
	if $mapid == 21
		LearnSkill(-1,1001,1,0)
		LearnSkill(-1,2375,1,0)
		LearnSkill(-1,2363,1,0)
		LearnSkill(-1,2360,1,0)
		LearnSkill(-1,3781,1,0)
		call addequip()
	endif
	//----------------------------------------任务
	if $mapid == 22
		$PlayerVar = GetPlayerVar(-1,3285)
		$indexW = $PlayerVar * 1000
		$indexWm = $indexW + 1000
		$PlayerVar += 1
		if $PlayerVar >= 10
			$PlayerVar = 0
		endif
		BC("chat","player",-1,"|PlayerVar=",$PlayerVar)
		SetPlayerVar(-1,3285,$PlayerVar)
		while $indexW < $indexWm
			CancelTask(-1,$indexW)
			$indexW += 1
		endwhile
	endif
	//-----------------------------------------------------------神装
	$getitem = GetPlayerInfo($playerid,"item",39113)
	if $getitem < 1
		AddPlayerInfo($playerid,"item",39113,1)
	endif
	$getitem = GetPlayerInfo($playerid,"item",39102)
	if $getitem < 1
		AddPlayerInfo($playerid,"item",39102,1)
	endif
	$getitem = GetPlayerInfo($playerid,"item",39104)
	if $getitem < 1
		AddPlayerInfo($playerid,"item",39104,1)
	endif
	$getitem = GetPlayerInfo($playerid,"item",39108)
	if $getitem < 1
//			AddPlayerInfo($playerid,"item",39108,1)
	endif
	$getitem = GetPlayerInfo($playerid,"item",39109)
	if $getitem < 1
//			AddPlayerInfo($playerid,"item",39109,1)
	endif
	$getitem = GetPlayerInfo($playerid,"item",39111)
	if $getitem < 1
		AddPlayerInfo($playerid,"item",39111,1)
	endif
	//-----------------------------------------------------------回血
	$max_hp = GetPlayerInfo( -1, "maxhp")
	$max_mp = GetPlayerInfo( -1, "maxmp")
	$hp = GetPlayerInfo( -1, "hp")
	$mp = GetPlayerInfo( -1, "mp")
	$add_hp = $max_hp - $hp
	$add_mp = $max_mp - $mp
	AddPlayerInfo( -1, "hp", $add_hp)
	AddPlayerInfo( -1, "mp", $add_mp)
	//-----------------------------------------------------------副本
	if $mapid > 10000
		$key = 0
		while $key <= 99
			$getvar = GetEctypeVar($mapid,$key)
			if $getvar > 0
				BC("chat","player",-1,"(",$key,")=",$getvar)
			endif
			$key = $key + 1
		endwhile
//			$key = 110
//			while $key <= 115
//				$getvar = GetEctypeVar($mapid,$key)
//				if $getvar > 0
//					#name = GetPlayerInfo($getvar,"name")
//					BC("chat","player",-1,"(",$key,")=",$getvar," | [N]=",#name)
//				endif
//				$key = $key + 1
//			endwhile
//			$key = 116
//			while $key <= 119
//				$getvar = GetEctypeVar($mapid,$key)
//				if $getvar > 0
//					BC("chat","player",-1,"(",$key,")=",$getvar)
//				endif
//				$key = $key + 1
//			endwhile
	endif

}
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
function expclac(){
	$level = GetEctypeVar($ectype_id,2)
	$fieldlevel = GetEctypeVar($ectype_id,3)
//(1*X*X		55*X		+0		)	*320		/1000
//(1*X*X		600*X		+0		)	*13		/1000
//(1*X*X		13*X		+0		)	*85		/1000
//(1*X*X		-15*X		+0		)	*110		/1000
	$levelvv = $level * $level
	$Xmod90 = $level / 90
	$Xmod100 = $level / 100
	$Xmod111 = $level / 111
	$expX1 = $level * 55
	$expX2 = $level * 600
	$expX3 = $level * 13
	$expX4 = $level * 15
	$expn1 = $levelvv + $expX1
	$expn2 = $levelvv + $expX2
	$expn3 = $levelvv + $expX3
	$expn4 = $levelvv - $expX4
	$expn1 *= 320
	$expn2 *= 13
	$expn3 *= 85
	$expn4 *= 110
	$expn1 /= 1000
	$expn2 /= 1000
	$expn3 /= 1000
	$expn4 /= 1000
	$expn2 *= $Xmod90
	$expn3 *= $Xmod100
	$expn4 *= $Xmod111
	$expori = $expn1
	$expori += $expn2
	$expori += $expn3
	$expori += $expn4
	BC("chat","player",-1,"level=",$level," | expori=",$expori)
//X^2*23+X*950+40000
	$fieldlevelvv = $fieldlevel * $fieldlevel
	$fexpn1 = $fieldlevelvv * 23
	$fexpn2 = $fieldlevel * 950
	$fexpori = $fexpn1 + $fexpn2
	$fexpori += 40000
	$fexpori /= 100
	BC("chat","player",-1,"fieldlevel=",$fieldlevel," | fexpori=",$fexpori)
}
function Rank2(){
	$ectype_id = GetCurEctypeID()
	$guildid = GetEctypeVar($ectype_id,110)
	$point = GetEctypeVar($ectype_id,4)
//371	第1名的玩家ID
//376	第1名的玩家平台
//5 共5个名次
	$rankstart = 371
	$pointstart = 376
	$allrank = 5
	$allrankD = $allrank - 1
	$rankend = $rankstart + $allrankD
	$pointend = $pointstart + $allrankD
	//寻找自己的排名
	$key_id = $rankstart
	$temp_rank = $rankend + 1
	while $key_id <= $rankend
		$rank_gid = GetServerVar($key_id)
		if $guildid == $rank_gid
			$temp_rank = $key_id
		endif
		$key_id += 1
	endwhile
	//第一名直接不用比分，只刷新分数
	if $temp_rank == $rankstart
		$getsetpoint = GetServerVar($pointstart)
		if $getsetpoint < $point
			SetServerVar($pointstart,$point)
		endif
	endif
	//从自己的排名的前一名开始往前找，比对分数
	$turerank = $temp_rank - $rankstart
	$key_pt = $pointstart + $turerank
	$key_pt -= 1
	while $key_pt >= $pointstart
		$rank_point = GetServerVar($key_pt)
		$turerank_key = $key_pt - $pointstart
		$key_id = $rankstart + $turerank_key
		$rank_gid = GetServerVar($key_id)
		if $point > $rank_point
			//如果大于前一名，则自己变成那一名
			SetServerVar($key_pt,$point)
			SetServerVar($key_id,$guildid)
			//前一名名次小于20名,则将前一名退后一名，否则挤出排名
			if $key_pt < $pointend
				$key_set_pt = $key_pt + 1
				$key_set_id = $key_id + 1
				SetServerVar($key_set_pt,$rank_point)
				SetServerVar($key_set_id,$rank_gid)
			endif
		else
			//如果不大于前一名
			//前一名名次小于20名，则刷新其分数，否则不进入排名
			//结束工作
			if $key_pt < $pointend
				$key_set_pt = $key_pt + 1
				$getsetpoint = GetServerVar($key_set_pt)
				if $getsetpoint < $point
					SetServerVar($key_set_pt,$point)
				endif
			endif
			$key_pt = $pointstart
		endif
		$key_pt -= 1
	endwhile
}
function addequip(){
$profession = GetPlayerInfo($playerid,"profession")	
if $profession == 1	
SubPlayerInfo($playerid,"item",41207,-1)
SubPlayerInfo($playerid,"item",41208,-1)
SubPlayerInfo($playerid,"item",41209,-1)
SubPlayerInfo($playerid,"item",41210,-1)
SubPlayerInfo($playerid,"item",41211,-1)
SubPlayerInfo($playerid,"item",41212,-1)
SubPlayerInfo($playerid,"item",41213,-1)
endif
if $profession == 2	
SubPlayerInfo($playerid,"item",41222,-1)
SubPlayerInfo($playerid,"item",41223,-1)
SubPlayerInfo($playerid,"item",41224,-1)
SubPlayerInfo($playerid,"item",41225,-1)
SubPlayerInfo($playerid,"item",41226,-1)
SubPlayerInfo($playerid,"item",41227,-1)
SubPlayerInfo($playerid,"item",41228,-1)
endif
if $profession == 3	
SubPlayerInfo($playerid,"item",41236,-1)
SubPlayerInfo($playerid,"item",41237,-1)
SubPlayerInfo($playerid,"item",41238,-1)
SubPlayerInfo($playerid,"item",41239,-1)
SubPlayerInfo($playerid,"item",41240,-1)
SubPlayerInfo($playerid,"item",41241,-1)
SubPlayerInfo($playerid,"item",41242,-1)
endif
if $profession == 4	
SubPlayerInfo($playerid,"item",41250,-1)
SubPlayerInfo($playerid,"item",41251,-1)
SubPlayerInfo($playerid,"item",41252,-1)
SubPlayerInfo($playerid,"item",41253,-1)
SubPlayerInfo($playerid,"item",41254,-1)
SubPlayerInfo($playerid,"item",41255,-1)
SubPlayerInfo($playerid,"item",41256,-1)
endif
if $profession == 5	
SubPlayerInfo($playerid,"item",41265,-1)
SubPlayerInfo($playerid,"item",41266,-1)
SubPlayerInfo($playerid,"item",41267,-1)
SubPlayerInfo($playerid,"item",41268,-1)
SubPlayerInfo($playerid,"item",41269,-1)
SubPlayerInfo($playerid,"item",41270,-1)
SubPlayerInfo($playerid,"item",41271,-1)
endif
if $profession == 6	
SubPlayerInfo($playerid,"item",41280,-1)
SubPlayerInfo($playerid,"item",41281,-1)
SubPlayerInfo($playerid,"item",41282,-1)
SubPlayerInfo($playerid,"item",41283,-1)
SubPlayerInfo($playerid,"item",41284,-1)
SubPlayerInfo($playerid,"item",41285,-1)
SubPlayerInfo($playerid,"item",41286,-1)
endif	
$profession = GetPlayerInfo($playerid,"profession")	
if $profession == 1	
AddPlayerInfo($playerid,"item",41207,1)
AddPlayerInfo($playerid,"item",41208,1)
AddPlayerInfo($playerid,"item",41209,1)
AddPlayerInfo($playerid,"item",41210,1)
AddPlayerInfo($playerid,"item",41211,1)
AddPlayerInfo($playerid,"item",41212,1)
AddPlayerInfo($playerid,"item",41213,1)
endif
if $profession == 2	
AddPlayerInfo($playerid,"item",41222,1)
AddPlayerInfo($playerid,"item",41223,1)
AddPlayerInfo($playerid,"item",41224,1)
AddPlayerInfo($playerid,"item",41225,1)
AddPlayerInfo($playerid,"item",41226,1)
AddPlayerInfo($playerid,"item",41227,1)
AddPlayerInfo($playerid,"item",41228,1)
endif
if $profession == 3	
AddPlayerInfo($playerid,"item",41236,1)
AddPlayerInfo($playerid,"item",41237,1)
AddPlayerInfo($playerid,"item",41238,1)
AddPlayerInfo($playerid,"item",41239,1)
AddPlayerInfo($playerid,"item",41240,1)
AddPlayerInfo($playerid,"item",41241,1)
AddPlayerInfo($playerid,"item",41242,1)
endif
if $profession == 4	
AddPlayerInfo($playerid,"item",41250,1)
AddPlayerInfo($playerid,"item",41251,1)
AddPlayerInfo($playerid,"item",41252,1)
AddPlayerInfo($playerid,"item",41253,1)
AddPlayerInfo($playerid,"item",41254,1)
AddPlayerInfo($playerid,"item",41255,1)
AddPlayerInfo($playerid,"item",41256,1)
endif
if $profession == 5	
AddPlayerInfo($playerid,"item",41265,1)
AddPlayerInfo($playerid,"item",41266,1)
AddPlayerInfo($playerid,"item",41267,1)
AddPlayerInfo($playerid,"item",41268,1)
AddPlayerInfo($playerid,"item",41269,1)
AddPlayerInfo($playerid,"item",41270,1)
AddPlayerInfo($playerid,"item",41271,1)
endif
if $profession == 6	
AddPlayerInfo($playerid,"item",41280,1)
AddPlayerInfo($playerid,"item",41281,1)
AddPlayerInfo($playerid,"item",41282,1)
AddPlayerInfo($playerid,"item",41283,1)
AddPlayerInfo($playerid,"item",41284,1)
AddPlayerInfo($playerid,"item",41285,1)
AddPlayerInfo($playerid,"item",41286,1)
endif	
$profession = GetPlayerInfo($playerid,"profession")	
if $profession == 1	
SubPlayerInfo($playerid,"item",19649,-1)
endif
if $profession == 2	
SubPlayerInfo($playerid,"item",19650,-1)
endif
if $profession == 3	
SubPlayerInfo($playerid,"item",19651,-1)
endif
if $profession == 4	
SubPlayerInfo($playerid,"item",19652,-1)
endif
if $profession == 5	
SubPlayerInfo($playerid,"item",19653,-1)
endif
if $profession == 6	
SubPlayerInfo($playerid,"item",19654,-1)
endif	
$profession = GetPlayerInfo($playerid,"profession")	
if $profession == 1	
AddPlayerInfo($playerid,"item",19649,1)
endif
if $profession == 2	
AddPlayerInfo($playerid,"item",19650,1)
endif
if $profession == 3	
AddPlayerInfo($playerid,"item",19651,1)
endif
if $profession == 4	
AddPlayerInfo($playerid,"item",19652,1)
endif
if $profession == 5	
AddPlayerInfo($playerid,"item",19653,1)
endif
if $profession == 6	
AddPlayerInfo($playerid,"item",19654,1)
endif	
}
function tianti(){
//		$tianti_level = 100
	AddStatus( -1, 10414 , 10 )
	AddStatus( -1, 10418 , 15 )
	AddStatus( -1, 11080 , 2 )
	AddStatus( -1, 4085 , 1 )
	AddStatus( -1, 11651 , 1 )
	AddStatus( -1, 11652 , 1 )
	AddStatus( -1, 11653 , 1 )
	AddStatus( -1, 11654 , 1 )
	RemoveStatusByID(-1,6451)
	RemoveStatusByID(-1,6458)
	RemoveStatusByID(-1,6459)
	RemoveStatusByID(-1,6460)
	RemoveStatusByID(-1,6461)
	$itr = GetEctypeID(-1,1100)
	ReleaseEctype($itr)
	$x = 200
	$y = 156
	$x *= 100
	$x /= 256
	$y *= 100
	$y /= 256
	$tiantimap = 1000 + $tianti_level
	$fly = FlyToEctype(-1 ,$tiantimap , $x ,$y )
								if $tianti_level == 100
									$playerid = GetPlayerID()
									$ectype_IDget = GetEctypeID(-1,1100)
									if $ectype_IDget > 0
										SetEctypeVar($ectype_IDget,110,$playerid)
//										BC("messagebox","player",-1,"GG")
									else
										BC("messagebox","player",-1,"error=1001!")
									endif
								endif
}
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
//*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
	function Pyramid(){
		//			CreateTeam(-1)
//			AddNpcByPos(1187,475,183,93,10000,0)
//			//3471	v3.90	上次进入boss房间内部的周数（6房间共用）
//			SetPlayerVar(-1,3471,0)
//			//3214,最近一次通行证方式进入金字塔的地图编号
//			SetPlayerVar(-1,3214,0)
//			//3617,最近一次通行证方式进入金字塔的日子
//			SetPlayerVar(-1,3617,0)
//			//外围
//			SetPlayerVar(-1,4207,0)
//			//门票任务
//			SetPlayerVar(-1,3615,0)
//			//  new_pyramid  服务器重启,金字塔活动会重置
//			SetServerVar(40,0)
//			SetServerVar(41,0)
//			SetServerVar(42,0)
//			SetServerVar(43,0)
//			SetServerVar(44,0)
//			SetServerVar(45,0)
//			SetServerVar(46,0)
//			SetServerVar(47,0)
//			SetServerVar(48,0)
//			SetServerVar(49,0)
//			SetServerVar(50,0)
//			SetServerVar(51,0)
//			SetServerVar(52,0)
//			SetServerVar(23,0)
//			SetServerVar(30,0)
//			AddMonsterByFloat(11591,1,475,$posx,$posy,0)
//			AddMonsterByFloat(11592,1,475,$posx,$posy,0)
//			AddMonsterByFloat(11593,1,475,$posx,$posy,0)
//			AddMonsterByFloat(11594,1,475,$posx,$posy,0)
//			AddMonsterByFloat(11595,1,475,$posx,$posy,0)
//			$getitem = GetPlayerInfo(-1,"item",64184)
//			if $getitem < 200
//				AddPlayerInfo(-1,"item",64184,200)
//			endif
//			$getitem = GetPlayerInfo(-1,"item",64185)
//			if $getitem < 200
//				AddPlayerInfo(-1,"item",64185,200)
//			endif
//			$getitem = GetPlayerInfo(-1,"item",64186)
//			if $getitem < 200
//				AddPlayerInfo(-1,"item",64186,200)
//			endif
//			$getitem = GetPlayerInfo(-1,"item",64187)
//			if $getitem < 200
//				AddPlayerInfo(-1,"item",64187,200)
//			endif
//			$getitem = GetPlayerInfo(-1,"item",64188)
//			if $getitem < 200
//				AddPlayerInfo(-1,"item",64188,200)
//			endif
//			$getitem = GetPlayerInfo(-1,"item",64189)
//			if $getitem < 200
//				AddPlayerInfo(-1,"item",64189,200)
//			endif
//			$getitem = GetPlayerInfo(-1,"item",63172)
//			if $getitem < 1
//				AddPlayerInfo(-1,"item",63172,1)
//			endif
		
	}
 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: 3,4???? 
 //****************************  
 
function OnDead(){ 
//32392	3????
//32393	4????
//32394	5??boss

	$ectype_id = GetCurEctypeID()
	$key = 8
	$getvar = GetEctypeVar($ectype_id,$key)
	$level = GetEctypeVar($ectype_id,2)
	$Flevel = GetEctypeVar($ectype_id,3)
	$mposx = GetEctypeVar($ectype_id,23)
	$mposy = GetEctypeVar($ectype_id,24)
	$randombuff = RandomNumber(0,1)
	$monsterID_u = 32392 + $randombuff
	$monsterID_b = 32394
	$monstusID_u = 247
	$monstusID_b = 248
	
	$mposx *= 100
	$mposx /= 256
	$mposy *= 100
	$mposy /= 256
	
//		BC("chat","player",-1," monsterID_u=",$monsterID_u," monstusID_u=",$monstusID_u," level=",$level," ectype_id=",$ectype_id," mposx=",$mposx," mposy=",$mposy)
	
	if $getvar == 3
		if $Flevel > 0
			AddLevelFieldMonster($monsterID_b,$monstusID_b,$level,$monstusID_b,$Flevel,1,$ectype_id,$mposx,$mposy,0)
		else
			AddLevelMonster($monsterID_b,$monstusID_b,$level,1,$ectype_id,$mposx,$mposy,0)
		endif
		BC("screen","map",$ectype_id,"Cuauhtemoc appears!")
	endif

	if $getvar == 1
		if $Flevel > 0
			AddLevelFieldMonster($monsterID_u,$monstusID_u,$level,$monstusID_u,$Flevel,1,$ectype_id,$mposx,$mposy,0)
		else
			AddLevelMonster($monsterID_u,$monstusID_u,$level,1,$ectype_id,$mposx,$mposy,0)
		endif
		BC("screen","map",$ectype_id,"More Elite Monsters are coming out!")
	endif
	
	if $getvar == 0
		if $Flevel > 0
			AddLevelFieldMonster($monsterID_u,$monstusID_u,$level,$monstusID_u,$Flevel,1,$ectype_id,$mposx,$mposy,0)
		else
			AddLevelMonster($monsterID_u,$monstusID_u,$level,1,$ectype_id,$mposx,$mposy,0)
		endif
		BC("screen","map",$ectype_id,"More Elite Monsters are coming out!")
	endif
	
	$getvar += 1
	SetEctypeVar($ectype_id,$key,$getvar)
	
} 

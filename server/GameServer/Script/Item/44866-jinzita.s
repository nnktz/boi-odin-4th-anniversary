	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2013
	//		Author:???
	//		Best wishs for all !
	//		
	//****************************************
	function OnUseItem(){
		
		$mapid = GetPlayerInfo(-1,"mapid")
		if $mapid != 26622
			BC("screen","player",-1,"Please use this item at the Pharaoh's Throne!")
			return
		endif
		
		$randombuff = RandomNumber(1,14)
		if $randombuff == 1
$result = FlyToEctype(-1,576,62,28)
		endif
		if $randombuff == 2
$result = FlyToEctype(-1,576,62,39)
		endif
		if $randombuff == 3
$result = FlyToEctype(-1,576,64,49)
		endif
		if $randombuff == 4
$result = FlyToEctype(-1,576,29,60)
		endif
		if $randombuff == 5
$result = FlyToEctype(-1,576,40,63)
		endif
		if $randombuff == 6
$result = FlyToEctype(-1,576,50,62)
		endif
		if $randombuff == 7
$result = FlyToEctype(-1,576,62,97)
		endif
		if $randombuff == 8
$result = FlyToEctype(-1,576,64,87)
		endif
		if $randombuff == 9
$result = FlyToEctype(-1,576,63,76)
		endif
		if $randombuff >= 10
$result = FlyToEctype(-1,576,89,63)
		endif
	}
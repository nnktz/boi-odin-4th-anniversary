	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2012-12
	//		Author:???
	//		TaskName:????2?
	//		TaskID:mapid = 568
	//****************************************

	function OnCreate(){

	

	}

	function InitTimer(){
		
		$time = 2
		SetEctypeTimer(1,$time,"Int")
		$time = 5
		SetEctypeTimer(2,$time,"NormalTimer")
		$time = 5
		SetEctypeTimer(3,$time,"DiceTimer")
		$time = 5 
		SetEctypeTimer(4,$time,"MoveTimer")

	}

	function Int(){
//???
		$ectype_id = GetCurEctypeID()
		AddNpcByPos(2342,$ectype_id,52,289,7200,0)
		AddMonsterByFloat(32399,1,$ectype_id,52,289,0)
		
		
		
		
		
		
		SetEctypeVar($ectype_id,1,1)
		SetEctypeVar($ectype_id,4,1)
		BC("screen","map",$ectype_id,"Welcome to the Pursuit of Rapture! Your adventure will start now!")
		
	}

	function NormalTimer(){
//????
		$ectype_id = GetCurEctypeID()

		
		
		StartEctypeTimer($ectype_id,2)
		BC("screen","map",$ectype_id,"Data handled successfully......")
		
	}
	
	function DiceTimer(){
//????
		$ectype_id = GetCurEctypeID()
		$mposx = GetEctypeVar($ectype_id,23)
		$mposy = GetEctypeVar($ectype_id,24)
		$fposx = GetEctypeVar($ectype_id,21)
		$fposy = GetEctypeVar($ectype_id,22)
		$dice = GetEctypeVar($ectype_id,12)
		$event = GetEctypeVar($ectype_id,6)
		$stage = GetEctypeVar($ectype_id,4)
		
		if $event == 5
			if $dice == 1
				SetEctypeVar($ectype_id,12,1)
				SetEctypeVar($ectype_id,6,99)
				BC("screen","map",$ectype_id,"The Exalted Dice rolled a 1! The door ahead will open now!")
				BC("chat","map",$ectype_id,"The Exalted Dice rolled a 1! The door ahead will open now!")
				StartEctypeTimer($ectype_id,4)
			else
				AddMonsterByFloat(32398,1,$ectype_id,$mposx,$mposy,0)
				BC("screen","map",$ectype_id,"Sorry, the Exalted Dice didn't stop at 1! Try again.")
				BC("chat","map",$ectype_id,"Sorry, the Exalted Dice didn't stop at 1! Try again.")
			endif
		else
			StartEctypeTimer($ectype_id,4)
			BC("screen","map",$ectype_id,"The Exalted Dice rolled a ",$dice,"! You will be moved shortly.")
			BC("chat","map",$ectype_id,"The Exalted Dice rolled a ",$dice,"! You will be moved shortly.")
		endif
		
	}
	
	function MoveTimer(){
//????
		$ectype_id = GetCurEctypeID()
		$mposx = GetEctypeVar($ectype_id,23)
		$mposy = GetEctypeVar($ectype_id,24)
		$fposx = GetEctypeVar($ectype_id,21)
		$fposy = GetEctypeVar($ectype_id,22)
		$dice = GetEctypeVar($ectype_id,12)
		$event = GetEctypeVar($ectype_id,6)
		$stage = GetEctypeVar($ectype_id,4)
		
		
		$fposx *= 100
		$fposx /= 256
		$fposy *= 100
		$fposy /= 256
		MapPlayerFlyToMap($ectype_id,$ectype_id,$fposx,$fposy,0)
		
//		BC("chat","map",$ectype_id,"|ectype_id=",$ectype_id,,"|stage=",$stage,"|fposx=",$fposx,"|fposy=",$fposy)
		SetEctypeVar($ectype_id,1,1)
		BC("screen","map",$ectype_id,"Keep moving! The party has reached Platform ",$stage," now.")
		BC("chat","map",$ectype_id,"Keep moving! The party has reached Platform ",$stage," now.")
		
		
	}
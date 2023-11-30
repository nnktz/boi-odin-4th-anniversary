	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013-3-12
	//		Author:??
	//		TaskName:
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){
		$result = HasBattlePet(-1)
		if $result == -1
			BC("screen","player",-1,"No Pet is currently summoned!")
			return
		endif
		$times = GetBattlePetInfo(-1,"washtimes")
		if $times == 1
			BC("screen","player",-1,"Current summoned Pet can be retrained. Unable to use Retraining Stone!")
			return
		endif
		SubPlayerInfo(-1,"item",4929,1)
		SetBattlePetInfo(-1,"washtimes",1)
		BC("screen","player",-1,"Successfully increased Retrain times.")
	}
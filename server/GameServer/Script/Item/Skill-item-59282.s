	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/15
	//		Author:???
	//		TaskName:Skill-item-59282.s
	//		TaskID:??????
	//
	//****************************************
	
	
	
function OnUseItem(){
		
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession != 5
			BC( "screen", "player", -1, "Sorry! Only Heretics can learn the Void skill." )
			return
		endif
		
//		$godlevel = GetGodLevel( -1 )
//		if $godlevel < 11
//			BC( "screen", "player", -1, "GUID:07693000001" )
//			return
//		endif
		
		$level = GetPlayerInfo( -1, "level" )
		//???????
		if $level < 115
			BC( "screen", "player", -1, "Sorry! Come back after reaching at least LV115." )
			return
		endif
		
		$skill = GetSkillLevel( -1, 8426 )
		if $skill > 0
			BC( "screen", "player", -1, "You have already learned this skill!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59282, 1 )
		if $result != 0
			return
		endif
		
		LearnSkill( -1, 8426, 1, 0 )
		
	}
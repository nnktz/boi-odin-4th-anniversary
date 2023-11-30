 //****************************  
 //  Copyright£ºPERFECT WORLD  
 //  Modified£º2012  
 //  Author£ººú±óÌÎ  
 //  TaskName£º ¾ÞÊÞÊ¯ÊÒ¡¤½ð±¦Ïä TURE
 //****************************  
function OnDead(){ 
	
//Éñ±øËéÆ¬	90288
//ÆÆËðµÄÉñ±ø	90289
	$got = GetServerVar(51)
	$randombox = GetServerVar(52)
	if $got >= 6
		return
	endif
	if $randombox == 0
		$randombox = RandomNumber(1,6)
		SetServerVar(52,$randombox)
	endif
	$got += 1
	SetServerVar(51,$got)
	$givemore = GetGlobalVar(139)
	if $got == $randombox
		DropMonsterItems(-1,90289)
		if $givemore == 1
			DropMonsterItems(-1,90289)
		endif
	else
		DropMonsterItems(-1,90288)
		if $givemore == 1
			DropMonsterItems(-1,90288)
		endif
	endif
	
}
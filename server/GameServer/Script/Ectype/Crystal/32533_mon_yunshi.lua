 ---//****************************  
 ---//  Copyright£∫PERFECT WORLD  
 ---//  Modified£∫2013.2.25  
 ---//  Author£∫≤‹≥˛…`  
 ---//  TaskName£∫ 32533‘… ØΩ≈±æ
 ---//****************************  	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		AI:SelfMurder()
	end
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	if a == 0 then
		AI:SetTimer(0,3000,1)
		AI:SetArray(0,1)
		AI:PlayAction("common\\vehicle\\gongchengdan\\hit\\tx_gongchengdan_hit1.ini", 1, 1)
		AI:AddSkill( 2037, 3 )
		AI:UseSkill( 2037, 3 )
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	rand = math.random(1,7)
	if rand == 2 then
		PosX = AI:GetPosX()
	 	PosY = AI:GetPosY()
		MonsterID=32534
		AI:SummonMonsterByPos(MonsterID,PosX,PosY,0)
	end
	AI:DelTimer(0)	
end
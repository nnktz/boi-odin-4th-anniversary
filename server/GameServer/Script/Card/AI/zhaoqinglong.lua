	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/8/12
	--		Author:������
	--		Class:	.Lua
	--		AIName:zhaoqinglong.lua
	--		Remark:������
	----------------------------------------------------
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		AI:SummonMonster(24106, 1)
		AI:SummonMonster(24106, 1)
		AI:SummonMonster(24106, 1)
		AI:SummonMonster(24106, 1)
		AI:Exit()
	
end
	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/8/12
	--		Author:张文宇
	--		Class:	.Lua
	--		AIName:skill4.lua
	--		Remark:四圣兽卡牌技能
	----------------------------------------------------
	
function Event_OnTimer(nAI, nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		AI:AddSkill(2205, 2)
		AI:UseSkill(2205, 2)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	
	if a == 0 then
		AI:AddSkill(2205, 1)
		AI:UseSkill(2205, 1)
		AI:ChangeFaction(9)
		AI:SetTimer(0,1000,1)
		AI:SetArray(0,1)
	end
	
end
	
function Event_ReadSeekPos(nAI)			
	local AI = GetMonsterAI(nAI)		
	
	b = AI:GetArray(3)
	if b == 0 then
		R1 = AI:GetRand(1)
		R2 = AI:GetRand(1)
		if R1 == 1 then
			x = AI:GetRand(327)
			if R2 == 1 then
				y = 0
			else
				y = 327
			end
		else
			y = AI:GetRand(327)
			if R2 == 1 then
				x = 0
			else
				x = 327
			end
		end
		AI:SetArray(3, 1)
	end
	mapid = AI:GetMapID()
	AI:AddSeekPos(mapid,x ,y )
	
end
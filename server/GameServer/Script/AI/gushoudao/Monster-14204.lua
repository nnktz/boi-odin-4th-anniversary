	---------------------------------------------------
	--		Copyright��PERFECT WORLD
	--		Modified��2011/10/10
	--		Author���콨��
	--		Class:	Monster-14204.lua
	--		AIName��
	--		Remark��
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:AddSkill(2257,1)
			AI:UseSkill(2257,1)
		end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		t = AI:HaveAttackTarget()
 		HP = AI:GetHP()
    HPMAX = AI:GetHPMax()
    a = AI:GetArray(1)

			if a == 0 then

					AI:SetTimer(0,3000,65535)
					AI:SetArray(1,2)
			end
	end
	
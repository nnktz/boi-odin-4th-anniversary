	---------------------------------------------------
	--		Copyright��PERFECT WORLD
	--		Modified��2011/10/10
	--		Author���콨��
	--		Class:	Monster-55401.lua
	--		AIName��
	--		Remark��
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        
        if nIndex == 0 then
        --�ͷż��� 
           AI:AddSkill(2213,1)
           AI:UseSkill(2213,1)
        end  
        
        if nIndex == 1 then
        --������Ч 
          AI:PlayEffect("common\\gaobaozhadan\\fire\\tx_common_gaobaozhadan_fire_1.ini")
        end  
        
        
        if nIndex == 3 then
        	AI:SelfMurder()
        end
	end


	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(4)
		if a == 0 then
			AI:SetTimer(0,5000,1)
			AI:SetTimer(1,3000,1)
			AI:SetTimer(3,10000,1)
     	AI:SetArray(4,1)
    end    
	
	end

	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
	end
	----------------------------------------------------
	--		Copyright：PERFECT WORLD
	--		Modified：2012/7/25
	--		Author：朱建臣
	--		Class:	.lua
	--		AIName：Monster-53309.lua
	--		Remark：
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
        --释放技能 
        AI:AddSkill(2580,1)
        AI:UseSkill(2580,1)
      end  
        
      if nIndex == 1 then
        --播放特效 
        AI:PlayEffect("common\\gaobaozhadan\\fire\\tx_common_gaobaozhadan_fire_1.ini")
      end  

			if nIndex == 2 then
				AI:SelfMurder()
				AI:Exit()
			end
      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(4)
		if a == 0 then
			AI:SetTimer(0,3000,1)
			AI:SetTimer(1,1000,1)
			AI:SetTimer(2,5000,1)
     	AI:SetArray(4,1)
    end    

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		
		
	end
	----------------------------------------------------
	--		Copyright��PERFECT WORLD
	--		Modified��2012/7/25
	--		Author���콨��
	--		Class:	.lua
	--		AIName��Monster-30606.lua
	--		Remark��
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:SelfMurder()
      end
      

      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(1)
		if a == 0 then
			AI:SetTimer(0,6000,1)
			AI:SetArray(1,1)
		end
	

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		
		
	end
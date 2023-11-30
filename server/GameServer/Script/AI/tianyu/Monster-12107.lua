	----------------------------------------------------
	--		Copyright£∫PERFECT WORLD
	--		Modified£∫2012/7/25
	--		Author£∫÷ÏΩ®≥º
	--		Class:	.lua
	--		AIName£∫Monster-12107.lua
	--		Remark£∫
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
			if nIndex == 0 then
				AI:PlayEffect( "skill\\Monster\\boss\\haidaodaoguang\\fire\\tx_haidaodaoguang_fire.ini" )
				AI:PlayEffect( "skill\\Monster\\boss\\haidaoyunxuan\\fire\\tx_haidaoyunxuan_fire.ini" )
				AI:AddSkill(2578,1)
				AI:UseSkill(2578,1)
			end
      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(4)
		if a == 0 then
			AI:SetTimer(0,3000,65535)
     	AI:SetArray(4,1)
    end    

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		
		
	end
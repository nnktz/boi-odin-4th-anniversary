

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
       
       if nIndex == 1 then
        a = AI:GetArray(1)
        	if a == 1 then
            rand = AI:GetRand(100)
        		if rand < 5 then
            AI:Say("Which bastard interrupted me! I'll break your legs!") 
            AI:GetRandTarget()
            end
           end
       end
                
       if nIndex == 2 then
        a = AI:GetArray(2)
        	if a == 1 then
        		rand = AI:GetRand(100)
        		if rand < 5 then
            	AI:Say("Watch my Ice Spear!") 
            	AI:AddSkill(2243,1)
            	AI:UseSkill(2243,1)  
            elseif rand < 10 then
            	AI:Say("Watch your back!") 
            	AI:AddSkill(2239,1)
            	AI:UseSkill(2239,1)
            else
            ----??????
            end
          end
       end
                
end
          
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		a = AI:GetArray(1)
		if a == 0 then --?????,????,????
			AI:SetTimer(1,500,1)
			AI:SetArray(1,1)
		end

		a = AI:GetArray(2)
		if a == 0 then --????,????
			AI:SetTimer(2,12000,9999)
			AI:SetArray(2,1)
		end

		
end

	function Event_ReadSeekPos(nAI)
	  local AI = GetMonsterAI(nAI)
			
end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		
end




	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
   	
end
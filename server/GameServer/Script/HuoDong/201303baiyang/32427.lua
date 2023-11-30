-- //****************************  
-- //  Copyright:PERFECT WORLD  
-- //  Modified:2013.2.25  
-- //  Author:???  
-- //  TaskName: ??????? 
-- //****************************  

	function Event_OnTimer(nAI,nIndex, nCount)
    	local AI = GetMonsterAI(nAI)
---------------------------------------------------??
--	if nIndex == 1 then
--		
--				HP = AI:GetHP()
--        HPMAX = AI:GetHPMax()
--				if HP < HPMAX * 0.4 then     
--           AI:Say("GUID:05026000000")
--           AI:AddSkill(8778,1)
--           AI:UseSkill(8778,1)
--       end
--	end
--		
--
-----------------------------------------------------------????
		if nIndex == 2 then
	
	        posx = AI:GetPosX()
		     	posy = AI:GetPosY()

	   
				HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
				
          if HP < HPMAX * 0.9 then
                --????
--                r = math.random(0,3)
--                if r == 0 then
                    AI:Say("Ares blesses us!")
                    AI:AddSkill(8779,1)
                    AI:UseSkill(8779,1)
--                end
 --               if r == 1 then
 --                   AI:Say("GUID:05026000002")
 --                   AI:AddSkill(8776,1)
 --                   AI:UseSkill(8776,1)
 --               end
--                if r == 2 then
--                    AI:Say("GUID:05026000003")
--                    AI:AddSkill(8778,1)
--                    AI:UseSkill(8778,1)
--                end
--                
--           			if r == 3 then
--                    AI:Say("GUID:05026000004")
--                    AI:AddSkill(8777,1)
--                    AI:UseSkill(8777,1)
--                end
          end

     
	 end
--------------------------------------------------------??????

---------------------------------------------------------????
        if nIndex == 4 then
        local AI = GetMonsterAI(nAI)
				PosX = AI:GetPosX()
				PosY = AI:GetPosY()

				AI:Exit()
				end
------------------------------------------------------------ 
end
------------------------------------------------------------
        
        
    function Event_Thinking(nAI)
      local AI = GetMonsterAI(nAI)
			posx = AI:GetPosX()
			posy = AI:GetPosY()
			
		n = AI:GetArray(3)
		if n == 0 then 
				AI:SetTimer(2,5000,50)
--				AI:SetTimer(1,100,999)
				AI:SetTimer(4,3600000,1)
      end
    AI:SetArray (3, 1)
    end
---------------------------------------------------------------------------
	function Event_OnDead(nAI)
    	  local AI = GetMonsterAI(nAI)  
    	  AI:Say("I am drifing into sleep.")   
	end  
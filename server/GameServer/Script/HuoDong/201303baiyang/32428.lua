 --//****************************  
 --//  Copyright:PERFECT WORLD  
 --//  Modified:2013.2.25  
 --//  Author:???  
 --//  TaskName: ??????? 
 --//****************************  
	function Event_OnTimer(nAI,nIndex, nCount)
    	local AI = GetMonsterAI(nAI)
---------------------------------------------------??
	if nIndex == 1 then
		
				HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
				if HP < HPMAX * 0.2 then     
           AI:Say("A warrior should take up arms to fight!")
           AI:AddSkill(8778,1)
           AI:UseSkill(8778,1)
       end
	end
		

-----------------------------------------------------------????
	if nIndex == 2 then
	
	        posx = AI:GetPosX()
		     	posy = AI:GetPosY()

	   
				HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
				
          if HP < HPMAX * 0.9 then
                --????
                r = math.random(0,3)
                if r == 0 then
                    AI:Say("Are there truly so many strong people in the world?")
                    AI:AddSkill(8779,1)
                    AI:UseSkill(8779,1)
                end
                if r == 1 then
                    AI:Say("What should we do?")
                    AI:AddSkill(8776,1)
                    AI:UseSkill(8776,1)
                end
                --if r == 2 then
                --    AI:Say("GUID:05027000003")
                --    AI:AddSkill(8778,1)
                --    AI:UseSkill(8778,1)
                --end
                --
           			--if r == 3 then
                --    AI:Say("GUID:05027000004")
                --    AI:AddSkill(8777,1)
                --    AI:UseSkill(8777,1)
                --end
          end

     
	end
--------------------------------------------------------??
if nIndex == 3 then
	HP = AI:GetHP()
  HPMAX = AI:GetHPMax()
  if HP < HPMAX * 0.9 then
     r = math.random(0,1)
     if r == 0 then
       AI:Say("We will support the God of War forever!")
     end
     if r == 1 then
       AI:Say("We are born for War, and we will die for War!")
     end
--     if r == 2 then
--        AI:Say("GUID:05027000007")    
--      end           
--     if r == 3 then
--         AI:Say("GUID:05027000008")
--     end
  end
end

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
				AI:SetTimer(2,4000,50)
				AI:SetTimer(1,100,999)
				AI:SetTimer(3,6000,50)
				AI:SetTimer(4,3600000,1)
      end
    AI:SetArray (3, 1)
    end
---------------------------------------------------------------------------
	function Event_OnDead(nAI)
    	  local AI = GetMonsterAI(nAI)  
    	  AI:Say("I am drifitng towards the sweet release of death, and I hope I can be reborn.")   
	end  
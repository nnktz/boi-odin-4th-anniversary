-- //****************************  
-- //  Copyright:PERFECT WORLD  
-- //  Modified:2013.2.25  
-- //  Author:???  
-- //  TaskName: ??????? 
-- //****************************  

	function Event_OnTimer(nAI,nIndex, nCount)
    	local AI = GetMonsterAI(nAI)
---------------------------------------------------??
	if nIndex == 1 then
		
				HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
				if HP < HPMAX * 0.4 then     
           AI:Say("Fight for the coming of the spring! Awaken, the soul of Ares!")
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
                    AI:Say("Ares blesses us!")
                    AI:AddSkill(8779,1)
                    AI:UseSkill(8779,1)
                end
                if r == 1 then
                    AI:Say("Warriors, attack!")
                    AI:AddSkill(8776,1)
                    AI:UseSkill(8776,1)
                end
                if r == 2 then
                    AI:Say("Ares is born of the passion for warfare!")
                    AI:AddSkill(8778,1)
                    AI:UseSkill(8778,1)
                end
                
           			if r == 3 then
                    AI:Say("The God of War will lead us to our downfall!")
                    AI:AddSkill(8777,1)
                    AI:UseSkill(8777,1)
                end
          end

     
	end
--------------------------------------------------------??
if nIndex == 3 then
	HP = AI:GetHP()
  HPMAX = AI:GetHPMax()
  if HP < HPMAX * 0.9 then
     r = math.random(0,3)
     if r == 0 then
       AI:Say("We are born for War, and we will die for war!")
     end
     if r == 1 then
       AI:Say("Death is not the end of all life, but instead, just the beginning of a new one!")
     end
     if r == 2 then
        AI:Say("That is our mission: to protect Aries!")    
      end           
     if r == 3 then
         AI:Say("We are honored to support the God of War!")
     end
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
				AI:SetTimer(2,3000,50)
				AI:SetTimer(1,100,999)
				AI:SetTimer(3,6000,50)
				AI:SetTimer(4,3600000,1)
      end
    AI:SetArray (3, 1)
    end
---------------------------------------------------------------------------
	function Event_OnDead(nAI)
    	  local AI = GetMonsterAI(nAI)  
    	  AI:Say("Death is immortal.")   
	end  
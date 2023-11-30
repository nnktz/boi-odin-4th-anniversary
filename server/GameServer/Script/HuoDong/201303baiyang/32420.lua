 --//****************************  
 --//  Copyright:PERFECT WORLD  
 --//  Modified:2013.2.25  
 --//  Author:???  
 --//  TaskName: ????? 
 --//****************************  

	function Event_OnTimer(nAI,nIndex, nCount)
    	local AI = GetMonsterAI(nAI)
---------------------------------------------------??
    if nIndex == 1 then
    
      x = AI:GetPosX()
	   	y = AI:GetPosY()
	    r = math.random(1,4)
	   	if r == 1 then
	   	AI:Say("Baa?!")
	   	end
	   	if r == 2 then
	   	AI:Say("Baa!")
	   	end
	   	if r == 3 then
	   	AI:Say("Baa!")
	   	end
	   	if r == 4 then
	   	AI:Say("Baa!")
	   	end

	  	
		end
-----------------------------------------------------------??
		if nIndex == 2 then
	
	        posx = AI:GetPosX()
		     	posy = AI:GetPosY()

--	   r = math.random(1,3)
		--			AI:PlayEffect("common\\luoyinghua\\tx_luoyinghua.ini")
		--			AI:PlayEffect("common\\fenwu\\tx_fenwu.ini")

     
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
				AI:SetTimer(2,10000,1)
				AI:SetTimer(1,10000,50)
				AI:SetTimer(4,3600000,1)
      end
    AI:SetArray (3, 1)
    end
---------------------------------------------------------------------------
	function Event_OnDead(nAI)
    	  local AI = GetMonsterAI(nAI)    
	end  
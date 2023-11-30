----------------------------------------------------
--		Copyright£ºPERFECT WORLD
--		Modified£º2013/05
--		Author£ºÔøÇ¿
--		TaskName£º°µµ­µÄ²Êµ°


	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		HP = AI:GetHP()
    HPMAX = AI:GetHPMax()

 		t = AI:HaveAttackTarget()
 		a = AI:GetArray(1)

			if a == 0 then 
				if HP == 9 then
				AI:PlayAction("dead1",0,0)
				AI:SetArray(1,1)
				end
			end
			if a == 1 then
				if HP == 7 then
				AI:PlayAction("dead3",0,0)
				AI:SetArray(1,2)
				end
			end
			if a == 2 then
				if HP == 5 then
				AI:PlayAction("dead5",0,0)
				AI:SetArray(1,3)
				end
			end
			if a == 3 then
				if HP == 1 then
				AI:PlayAction("dead8",0,0)
				AI:SetArray(1,4)
				end
			end
	end
function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
    AI:Exit()
    
end  
	
	
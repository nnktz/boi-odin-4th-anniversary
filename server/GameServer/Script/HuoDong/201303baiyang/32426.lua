 --//****************************  
 --//  Copyright:PERFECT WORLD  
 --//  Modified:2013.2.25  
 --//  Author:???  
 --//  TaskName: ????? 
 --//****************************  
--

	function Event_OnTimer(nAI,nIndex, nCount)
    	local AI = GetMonsterAI(nAI)
---------------------------------------------------------------
    if nIndex == 1 then
    
      x = AI:GetPosX()
	   	y = AI:GetPosY()


	  	
		end
-----------------------------------------------------------??
		if nIndex == 2 then
	
	        posx = AI:GetPosX()
		     	posy = AI:GetPosY()
		     	x = math.ceil(posx)
		     	y = math.ceil(posy)
		     	AI:ScreenText("A radiant corona signals the start of the Holy Nirvana event in the Grand Rift. ("..tostring(x)..","..tostring(y)..")!",2)
--	   r = math.random(1,3)
					AI:PlayEffect("common\\dayu\\tx_dayu.ini")
					AI:PlayEffect("common\\liuxing\\keep\\tx_liuxing_keep_01.ini")
					AI:PlayEffect("common\\liuxingyu1\\keep\\tx_liuxingyu1_keep_01.ini")
					AI:PlayEffect("common\\luoyinghua\\tx_luoyinghua.ini")

     
	 end
--------------------------------------------------------??????
        if nIndex == 3 then
        AI:ScreenText("Ares has blessed us! Chests full of Nirvana Crystals are sprinkled everywhere in the northeast of the Grand Rift.",2)
          posx = AI:GetPosX()
		     	posy = AI:GetPosY()
		     	MonsterID = 32423
		     	posx = posx-20
		     	posy = posy-20
		     	
		     	n = AI:GetArray(1)
		    	a = 0
		     	for a =1,5 do
		     	r = math.random(5,20)
		     	r2 = math.random(1,4)
		     	if r2 == 1 then
		     		AI:SummonMonsterByPos(MonsterID,posx+r,posy+r)
		     	end
		     	if r2 == 2 then
		     		AI:SummonMonsterByPos(MonsterID,posx-r,posy+r)
		     		end
		     	if r2 == 3 then
		     		AI:SummonMonsterByPos(MonsterID,posx+r,posy-r)
		     		end
		     	if r2 == 4 then
		     		AI:SummonMonsterByPos(MonsterID,posx-r,posy-r)
		     		end
		     	end
		     	AI:PlayEffect("common\\dayu\\tx_dayu.ini")
					AI:PlayEffect("common\\liuxing\\keep\\tx_liuxing_keep_01.ini")
					AI:PlayEffect("common\\liuxingyu1\\keep\\tx_liuxingyu1_keep_01.ini")
					AI:PlayEffect("common\\Yanhua\\tx_hunliyanhua\\tx_hunliyanhua_08.ini")
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
				AI:SetTimer(2,10000,1)
				AI:SetTimer(3,60000,10)
				AI:SetTimer(4,780000,1)
      end
    AI:SetArray (3, 1)
    end
---------------------------------------------------------------------------
	function Event_OnDead(nAI)
    	  local AI = GetMonsterAI(nAI)    
	end  
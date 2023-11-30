 ------------------------------ 
 --  Copyright：PERFECT WORLD  
 --  Modified：2013.5.8 
 --  Author：曹楚蒨 
 --  TaskName： 传送门 
 ------------------------------ 
function Event_OnTimer(nAI,nIndex, nCount)
    	local AI = GetMonsterAI(nAI)
    	local mapid = AI:GetMapID()
    	MonsterID = 32547
    	
   ------计时器1start------刷第一波怪-------------- 	
    	 if nIndex == 1 then 
    	   if mapid == 86 then
    	    a=1
    	    for a=1,100 do 
    	     rx = math.random(50,250)
    	     ry = math.random(50,250)  
    	     AI:SummonMonsterByPos(MonsterID,rx,ry)  
    	    end
    	   end
       end
   ------计时器1end------每5分钟刷一波怪-------------- 	
   ------计时器2start------消失-------------- 
       if nIndex == 2 then 
       AI:Exit()
       end
    ------计时器2end------消失-------------- 
      	
   ------计时器3start------每5分钟刷一波怪-------------- 	
    	 if nIndex == 3 then 
    	   if mapid == 86 then
    	    a=1
    	    for a=1,100 do 
    	     rx = math.random(50,250)
    	     ry = math.random(50,250)  
    	     AI:SummonMonsterByPos(MonsterID,rx,ry)  
    	    end
    	   end
       
       end
   ------计时器3end------每5分钟刷一波怪-------------- 	
end
 function Event_Thinking(nAI)
      local AI = GetMonsterAI(nAI)
      local mapid = AI:GetMapID()
			
		n = AI:GetArray(3)
		if n == 0 then 
		
			AI:SetTimer(1,1000,1)
		  AI:SetTimer(2,3000000,1)
		  AI:SetTimer(3,180000,4)
				
      end
      AI:SetArray (3, 1)
    end
---------------------------------------------------------------------------
  
---------------------------------------------------------------------------
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
	
	end
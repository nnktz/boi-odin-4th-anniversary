 ------------------------------ 
 --  Copyright��PERFECT WORLD  
 --  Modified��2013.5.8 
 --  Author���ܳ��` 
 --  TaskName�� ������ 
 ------------------------------ 
function Event_OnTimer(nAI,nIndex, nCount)
    	local AI = GetMonsterAI(nAI)
    	local mapid = AI:GetMapID()
    	MonsterID = 32547
    	
   ------��ʱ��1start------ˢ��һ����-------------- 	
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
   ------��ʱ��1end------ÿ5����ˢһ����-------------- 	
   ------��ʱ��2start------��ʧ-------------- 
       if nIndex == 2 then 
       AI:Exit()
       end
    ------��ʱ��2end------��ʧ-------------- 
      	
   ------��ʱ��3start------ÿ5����ˢһ����-------------- 	
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
   ------��ʱ��3end------ÿ5����ˢһ����-------------- 	
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
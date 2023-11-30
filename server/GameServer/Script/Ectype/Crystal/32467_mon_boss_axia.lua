 --//****************************  
 --//  Copyright:PERFECT WORLD  
 --//  Modified:2013.2.25  
 --//  Author:???  
 --//  TaskName: 32467??? 
 --//****************************  
function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		HP = AI:GetHP()
		HPMAX = AI:GetHPMax()
    hppct = HP/HPMAX*100
--32472	????
--32473	????

  -- if nIndex == 2 then ---???2--
  --  	a=AI:GetArray(3)
	--
	--   	a+=1
	--   	SetArray(3,a)
  --  	end
  --  end---???2-?????? 10syici
  -- if nIndex == 3 then ---???3--??1
  --  	a = AI:GetArray(4)
  --   hpline = 1000-a*50
----rint(" | HP = "..tostring(HP).." | hppct = "..tostring(hppct).." | hpline = "..tostring(hpline).." | a = "..tostring(a))
	--	if hppct < hpline then
	--		monid = 0
	--		recoverHP = HPMAX / 100 * (2 + monid * 2)
	--		if hpline < 600 then
	--			AI:RestoreHPInstant(recoverHP)
	--		end
  --   	HP = AI:GetHP()
	--		a = a + 1
	--		AI:SetArray(4,a)
	--	end
  --  end ---???3--??1
  --  if nIndex == 4 then ---???4--?????AI:SetTimer(0,1000,999)
  --  		a=AI:GetArray(5)
	--		a=a+1
	----		AI:ScreenText("GUID:03966000000",2)
  -- 	 	HP = AI:GetHP()
  --   	HPMAX = AI:GetHPMax()
  --  		hppct = HP/HPMAX*100
	--	if a <10 then
	--	  if hppct<80 then
	--	 --   AI:ScreenText("GUID:03966000001",1)
	--	    AI:AddSkill(2182,1)
	--			AI:UseSkill(2182,1)
	--			recoverHP = HPMAX / 100 * 20
	--			AI:RestoreHPInstant(recoverHP)
	--			AI:SetArray(5,10)
	--		 end
	--	else
	--   		if a <20 then
	--   		  if hppct<50 then
	--   		--    AI:ScreenText("GUID:03966000002",1)
	--   		    AI:AddSkill(2182,1)
	--   				AI:UseSkill(2182,1)
	--   				AI:AddSkill(2245,1)
	--   				AI:UseSkill(2245,1)
	--   				recoverHP = HPMAX / 100 * 50
	--   				AI:RestoreHPInstant(recoverHP)
	--   				AI:SetArray(5,20)
	--   			 end
	--   		else
	--   		  if a <30 then
  -- 			   if hppct<10 then
  -- 			 --  AI:ScreenText("GUID:03966000003",1)
  -- 			    AI:AddSkill(2182,1)
  -- 					AI:UseSkill(2182,1)
  -- 					recoverHP = HPMAX / 100 * 80
  -- 					AI:RestoreHPInstant(recoverHP)
  -- 					AI:SetArray(5,30)
  -- 				 end
  -- 			  end
	--   		end
	--	end
	--	AI:SetArray(5,a)
	--
  --  
  --  end---???4--??2
     if nIndex == 5 then ---???5--????3???
     		rand = math.random(0,3)
				if rand == 1 then
				--AI:Say("")
					AI:AddSkill(2243,1)
					AI:UseSkill(2243,1)
				end
				if rand == 2 then
--AI:Say("GUID:03966000004")
					AI:AddSkill(2239,1)
					AI:UseSkill(2239,1)
				end
				if rand == 3 then
			--	AI:Say("GUID:03966000005")
					AI:AddSkill(2189,1)
					AI:UseSkill(2189,1)
				end
     
     end---???5--????
     if nIndex == 6 then ---???6--??--math.random(1,7)AI:GetArray(10)
     	hp=AI:GetEctypeVarShort(mapid,47)
     	a=AI:GetArray(6)
     	count = AI:GetEctypeVarShort(mapid,61)
     	if hp > 7 then
     		rancount = AI:GetArray(10)
     		if a==0 then      
					rand1=math.random(1,7)
					AI:SetArray(10,rand1)	
					AI:SetArray(6,1)
				end
     		if a == rancount then
     		PosX = AI:GetPosX()
	   		PosY = AI:GetPosY()
				b=math.random(1,8)
				cmax=8                          
				ox,oy=170,269
				rr= math.random(1,10)                                  
				oa=6.28*b/cmax                     
				sx=ox+rr*math.sin(oa)              
				sy=oy+rr*math.cos(oa)    
				MonsterID=32512
				AI:SummonMonsterByPos(MonsterID,sx,sy,0)
				count =count +1
				if count <= 40 then
					AI:SetEctypeVarShort(mapid,61,count)
				end
				a=a+1
				AI:SetArray(6,a)
				end
     	if a<8 then
     		if a~= rancount then
     		PosX = AI:GetPosX()
	   		PosY = AI:GetPosY()
				b=math.random(1,8)
				cmax=8                          
				ox,oy=170,269
				rr= math.random(1,10)                                  
				oa=6.28*b/cmax                     
				sx=ox+rr*math.sin(oa)              
				sy=oy+rr*math.cos(oa)    
				MonsterID=32514
				AI:SummonMonsterByPos(MonsterID,sx,sy,0)
				count =count +1
				if count <= 40 then
				AI:SetEctypeVarShort(mapid,61,count)
				end
				a=a+1
				AI:SetArray(6,a)
				end
	    end
	    if a==8 then
     		if a~= rancount then
     		PosX = AI:GetPosX()
	   		PosY = AI:GetPosY()
				b=math.random(1,8)
				cmax=8                          
				ox,oy=170,269
				rr= math.random(1,10)                                  
				oa=6.28*b/cmax                     
				sx=ox+rr*math.sin(oa)              
				sy=oy+rr*math.cos(oa)    
				MonsterID=32514
				AI:SummonMonsterByPos(MonsterID,sx,sy,0)
				count =count +1
				if count <= 40 then
				AI:SetEctypeVarShort(mapid,61,count)
				end
				AI:SetArray(6,0)
				end
	    end
	    end
	
     end---???6--??--math.random(1,7)AI:GetArray(10)
     if nIndex == 7 then ---???7--????????10????,?????,???????????
     	a=AI:GetArray(7)
     	var=AI:GetEctypeVarShort(mapid,60)
     	if a<0 then
     	if var == 0 then    
     		AI:GetRandTarget()  
     		target= AI:GetTargetID()
     		AI:AddSkill(2537,1)------????
	    	AI:UseSkill(2537,1)
	    	AI:AddSkill(2538,1)------????
	    	AI:UseSkill(2538,1)
	    	MonsterID=32481
	    	PosX=AI:GetPlayerX(target)
				PosY=AI:GetPlayerY(target)
				AI:SummonMonsterByPos(MonsterID,PosX,PosY,0)
     	 	AI:ScreenText("Destruction!",2)
     	 	a=a+1
	    	AI:SetArray(7,a)
	    end
	    
	    end
     end---???7--??
     if nIndex == 8 then----???8--????????6? ??1s
     		a=AI:GetArray(8)
     		count2 = AI:GetEctypeVarShort(mapid,59)
				if a <=6 then
     			PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					MonsterID=32511
					AI:SummonMonsterByPos(MonsterID,PosX,PosY,0)
					count2 =count2+1
					if count2 <= 40 then
					AI:SetEctypeVarShort(mapid,59,count2)
					end
					a=a+1
					AI:SetArray(8,a)
				end
     end----???8--????????6? ??1s
     if nIndex ==9 then-----???9--????
     		a=AI:GetArray(9)
     		if a==0 then
     		AI:SetTimer(6,100,8)
     		AI:SetTimer(7,10000,1)
     		end
     		
     end
	

		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
			ecvar = AI:GetEctypeVarShort(mapid,0)
--			ecvar2 = AI:GetEctypeVarShort(mapid,54)-------count ????
--			if ecvar2 < 5 then
--				AI:SetTimer(6,5000,ecvar2)
--			end
--			if ecvar2 >= 5  then
--				if ecvar2 < 15  then
--					AI:SetTimer(6,5000,ecvar2/2)
--				end
--			end
--			if ecvar2 >= 15 then
--			AI:SetTimer(6,5000,ecvar2/2)
--			end 
--32472	????
--32473	????			
			
			b=AI:GetArray(2)
			if b == 0 then
			 	HP = AI:GetHP()
				HPMAX = AI:GetHPMax()
      	hppct = HP/HPMAX*100
      	if hppct < 99 then
      		AI:ScreenText("I never fight alone! Come on, my friends!",2)
					PosX=AI:GetPosX()
					PosY=AI:GetPosY()     
					x1= PosX+3   
					x2= PosX-3
      		AI:SetArray(2,1)
      		AI:SetEctypeVarShort(mapid,62,1)
      		
      	end
      end
--      	
--			  if hppct<80 then
--			  	if hppct > 60 then
--			    AI:ScreenText("1",1)
--			    SetEctypeVarShort(mapid,47,8)
--			    if fen1 == 1 then 
--      			AI:SetTimer(9,100,1)
--      			AI:SetArray(11,2)
--      		end
--					end
--				end
--				if hppct<60 then
--			  	if hppct > 40 then
--      		SetEctypeVarShort(mapid,47,9)
--      		if fen1 == 2 then 
--      			AI:SetTimer(9,100,1)
--      			AI:SetArray(11,3)
--      		end
--      		end
--      	end
--      	if hppct<30 then
--			  	if hppct > 10 then
--      		SetEctypeVarShort(mapid,47,10)
--      		if fen1 == 3 then 
--      			AI:SetTimer(9,100,1)
--      			AI:SetArray(11,4)
--      		end
--      		end
--      	end
--      end
--			fenshen=AI:GetEctypeVarShort(mapid,60)
--			if fenshen == 1 then
--				HP = AI:GetHP()
--				HPMAX = AI:GetHPMax()
--				hpl = HPMAX/10
--				AI:LoseHPInstant(hpl)
--				AI:SetEctypeVarShort(mapid,60,0)
--			end
--			   
--				AI:SetTimer(2,10000,99)     -- -???2--?????? 10syici
--				AI:SetTimer(3,1000,999)     -- ??1 
--				AI:SetTimer(4,1000,999)     -- -?????AI:SetTimer(0,1000,999)  
				
--
				----------------------------------????AI---start
				----------------------------------????AI---end
				----------------------------------????AI---start
				----------------------------------????AI---end
		a = AI:GetArray(1)
		if a == 0 then
	 -- -????3???       
				if ecvar == 1 then
					AI:SetTimer(11,2000,999)
				end
				if ecvar == 21 then
					AI:SetTimer(14,2000,999)
				end
				if ecvar == 22 then
					AI:SetTimer(15,2000,999)
				end
				if ecvar == 31 then
					AI:SetTimer(16,2000,999)
				end
				if ecvar == 32 then
					AI:SetTimer(17,2000,999)
				end
					----------------------------------??????end
			AI:SetArray(1,1)
			end
			
			----------------------------------------------------------normal end


	end--functionEvent_ThinkingEND
    function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	local mapid = AI:GetMapID()
			varline = AI:GetEctypeVarShort(mapid,0)
 			if varline == 31 then
 			AI:ScreenText("Amethyst: The Power of Darkness will come rise again! An intruder has appeared!",2)
 			end
			stand = AI:GetEctypeVarShort(mapid,73)
			stand = stand -20
			AI:SetEctypeVarShort(mapid,73,stand)
	end--fun                              
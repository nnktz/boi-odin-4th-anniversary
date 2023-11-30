-- //****************************  
-- //  Copyright:PERFECT WORLD  
-- //  Modified:2013.2.25  
-- //  Author:???  
-- //  TaskName: 32467 axina ?AI
-- //****************************  
--55

function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		HP = AI:GetHP()
		HPMAX = AI:GetHPMax()
    hppct = HP/HPMAX*100
    if nIndex == 2 then ---???2--?????? 10syici
     hp=AI:GetEctypeVarShort(mapid,47)
    -- numhy=AI:GetEctypeVarShort(mapid,54)
     	a=AI:GetArray(3)
			if a < 5 then
     		if hp > 7 then
     			AI:ScreenText("Explode! Dark Night!",1)
     			AI:SetTimer(8,1000,6)
	    	end
	    	a=a+1
	    	AI:SetArray(3,a)
     	end
     end---???2-?????? 10syici
--   if nIndex == 3 then ---???3--??1
--    	a = AI:GetArray(4)
--     hpline = 1000-a*50
---print(" | HP = "..tostring(HP).." | hppct = "..tostring(hppct).." | hpline = "..tostring(hpline).." | a = "..tostring(a))
--		if hppct < hpline then
--			monid = 0
--			recoverHP = HPMAX / 100 * (2 + monid * 2)
--			if hpline < 600 then
--				AI:RestoreHPInstant(recoverHP)
--			end
--     	HP = AI:GetHP()
--			a = a + 1
--			AI:SetArray(4,a)
--		end
--    end ---???3--??1
     if nIndex == 4 then ---???4--?????AI:SetTimer(0,1000,999)
     		a=AI:GetArray(5)
				a=a+1
	---		AI:ScreenText("GUID:03962000001",2)
    	 	HP = AI:GetHP()
      	HPMAX = AI:GetHPMax()
     		hppct = HP/HPMAX*100
			if a <10 then
			  if hppct<80 then
			
			    AI:AddSkill(2182,1)
					AI:UseSkill(2182,1)
					recoverHP = HPMAX / 100 * 20
					AI:RestoreHPInstant(recoverHP)
					AI:SetArray(5,10)
				 end
			else
	    		if a <20 then
	    		  if hppct<50 then
	    		--    AI:ScreenText("GUID:03962000002",1)
	    		    AI:AddSkill(2182,1)
	    				AI:UseSkill(2182,1)
	    				AI:AddSkill(2245,1)
	    				AI:UseSkill(2245,1)
	    				recoverHP = HPMAX / 100 * 50
	    				AI:RestoreHPInstant(recoverHP)
	    				AI:SetArray(5,20)
	    			 end
	    		else
	    		  if a <30 then
    			   if hppct<10 then
    			 --  AI:ScreenText("GUID:03962000003",1)
    			    AI:AddSkill(2182,1)
    					AI:UseSkill(2182,1)
    					recoverHP = HPMAX / 100 * 80
    					AI:RestoreHPInstant(recoverHP)
    					AI:SetArray(5,30)
    				 end
    			  end
	    		end
			end
			AI:SetArray(5,a)
		
     
     end---???4--??2
     if nIndex == 5 then ---???5--????3???
     		rand = math.random(1,3)
			if rand == 1 then
			----AI:Say("")
				AI:AddSkill( 2037, 3 )      
				AI:UseSkill( 2037, 3 )
			end
				if rand == 2 then
					AI:AddSkill(2522,3)
					AI:UseSkill(2522,3)
				end
				if rand == 3 then
			--	AI:Say("GUID:03962000004")
					line=AI:GetEctypeVarShort(mapid,0)
					if line == 1 then
						AI:AddSkill(2524,2)
						AI:UseSkill(2524,2)
					else
						AI:AddSkill(2521,5)
						AI:UseSkill(2521,5)
					end
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
					AI:AddSkill(2173,1)
					AI:UseSkill(2173,1)
					AI:ScreenText("Find the correct Cross of Power to weaken Obsidia and drain her power!",2)
				end
				rancount = AI:GetArray(10) 
     		if a == rancount then
     			PosX = AI:GetPosX()
	   			PosY = AI:GetPosY()
					b=math.random(1,8)
					cmax=8                          
					ox,oy=170,269
					rr= 10                                  
					oa=6.28*b/cmax                     
					sx=ox+rr*math.sin(oa)              
					sy=oy+rr*math.cos(oa)    
					MonsterID=32512
					AI:SummonMonsterByPos(MonsterID,sx,sy,0)
					count =count+1
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
					rr= 10                                  
					oa=6.28*b/cmax                     
					sx=ox+rr*math.sin(oa)              
					sy=oy+rr*math.cos(oa)    
					MonsterID=32514
					AI:SummonMonsterByPos(MonsterID,sx,sy,0)
					count =count+1
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
							rr= 10                                  
							oa=6.28*b/cmax                     
							sx=ox+rr*math.sin(oa)              
							sy=oy+rr*math.cos(oa)    
							MonsterID=32514
							AI:SummonMonsterByPos(MonsterID,sx,sy,0)
							count =count+1
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
     	 	AI:ScreenText("Destruction! ",2)
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
					a =a+ 1
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
		if nIndex == 11 then--???11--start
			
				randomsay=math.random(1,8)                                                         
				if randomsay == 1 then                                                              
					AI:Say("Who was it that sent you here?")    
				end                                                         
				if randomsay == 2 then                                                              
					AI:Say("Are you not fascinated by my beauty?")    
				end                                                   
				if randomsay == 3 then                                                              
					AI:Say("The only thing guaranteed here... is death.")   
				end                                                  
				if randomsay == 4 then                                                              
					AI:Say("One day, the crystal will all be dyed black.")  
				end                                            
				if randomsay == 5 then                                                              
					AI:Say("The Darkness will own this world one day!")
				end                                         
				if randomsay == 6 then                                                              
					AI:Say("Let this world return to darkness, and show its true colors!")    
				end                                
				if randomsay == 7 then                                                              
					AI:Say("Both Fire and Ice will go quietly into the night!")     
				end                                          
				if randomsay == 8 then                                                              
					AI:Say("You are no better than I, Garnet. You must realize this.")      
				end                                             

			
		end--???11--------------------end
	
		
		
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
				fen1=AI:GetArray(11)
			 	HP = AI:GetHP()
				HPMAX = AI:GetHPMax()
      	hppct = HP/HPMAX*100
      	if hppct > 90 then
      		AI:SetEctypeVarShort(mapid,47,7)
      		if fen1 == 0 then 
      			AI:SetTimer(9,100,1)
      			AI:SetArray(11,1)
      		end
      	end
      	
			  if hppct<80 then
			  	if hppct > 60 then
	--		    AI:ScreenText("1",1)
			    AI:SetEctypeVarShort(mapid,47,8)
			    if fen1 == 1 then 
      			AI:SetTimer(9,100,1)
      			AI:SetArray(11,2)
      		end
					end 
				end
				if hppct<60 then
			  	if hppct > 40 then
      		AI:SetEctypeVarShort(mapid,47,9)
      		if fen1 == 2 then 
      			AI:SetTimer(9,100,1)
      			AI:SetArray(11,3)
      		end
      		end
      	end
      	if hppct<30 then
			  	if hppct > 10 then
      		AI:SetEctypeVarShort(mapid,47,10)
      		if fen1 == 3 then 
      			AI:SetTimer(9,100,1)
      			AI:SetArray(11,4)
      		end
      		end
      	end
			fenshen=AI:GetEctypeVarShort(mapid,60)
			if fenshen == 1 then
				HP = AI:GetHP()
				HPMAX = AI:GetHPMax()
				hpl = HPMAX/10
				AI:LoseHPInstant(hpl)
				AI:SetEctypeVarShort(mapid,60,0)
				AI:AddSkill(2173,2)
				AI:UseSkill(2173,2)
			end
			a=AI:GetArray(2)
			if a == 0 then
				AI:SetTimer(2,10000,99)  
				AI:Say("The Shadow itself becomes my strength!")   -- -???2--?????? 10syici
			--	AI:SetTimer(3,1000,999)  
				--AI:Say("anyingzhix3333333")     -- ??1 
				AI:SetTimer(4,1000,999)  
				--AI:Say("anyingzhixi444444")     -- -?????AI:SetTimer(0,1000,999)  
				AI:SetTimer(5,3000,999) 
			--	AI:Say("anyingzhixi555555")      -- -????3???    
				AI:SetTimer(11,3000,999)
				----------------------------------????AI---start
				----------------------------------????AI---end
				----------------------------------????AI---start
			--	----------------------------------????AI---end
			--	if ecvar == 1 then
			--		AI:SetTimer(11,2000,999)
			--	end
			--	if ecvar == 21 then
			--		AI:SetTimer(14,2000,999)
			--	end
			--	if ecvar == 22 then
			--		AI:SetTimer(15,2000,999)
			--	end
			--	if ecvar == 31 then
			--		AI:SetTimer(16,2000,999)
			--	end
			--	if ecvar == 32 then
			--		AI:SetTimer(17,2000,999)
			--	end
			--		----------------------------------??????end
				AI:SetArray(2,1)
			end
			----------------------------------------------------------normal end


	end--functionEvent_ThinkingEND
  function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	local mapid = AI:GetMapID()
			varline = AI:GetEctypeVarShort(mapid,0)
 			if varline == 1 then
 				AI:ScreenText("Obsidia: The Darkness will return, you'll see!",2)
 			else
 			AI:ScreenText("Obsidia: The Darkness will return, you'll see!",2)
			stand = AI:GetEctypeVarShort(mapid,73)
			stand = stand -30
			AI:SetEctypeVarShort(mapid,73,stand)
			end    
			if varline == 31 then      
				AI:ScreenText("Pyrope: Thank you, warrior, the Darkness has been destroyed. Now, let us find my sister, and destroy the Power of Ice!",2)  
			end
			if varline == 22 then      
				AI:ScreenText("Pyrope: Thank you, warrior, the Darkness has been destroyed. Now, let us find my sister, and destroy the Power of Ice!",2)  
			end
	end--functionEvent_ThinkingEND                               
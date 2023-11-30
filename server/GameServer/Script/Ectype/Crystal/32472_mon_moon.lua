 --//****************************  
 --//  Copyright:PERFECT WORLD  
 --//  Modified:2013.2.25  
 --//  Author:???  
 --//  TaskName: 32473???? 
 --//****************************  
function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		HP = AI:GetHP()
		HPMAX = AI:GetHPMax()
    hppct = HP/HPMAX*100
--32472	????
--32473	????

     if nIndex == 5 then ---???5--????3???
     		rand = math.random(0,3)
				if rand == 1 then
				--AI:Say("")
					AI:AddSkill(2243,1)
					AI:UseSkill(2243,1)
				end
				if rand == 2 then
--AI:Say("GUID:03970000000")
					AI:AddSkill(2239,1)
					AI:UseSkill(2239,1)
				end
				if rand == 3 then
			--	AI:Say("GUID:03970000001")
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
					SetArray(6,1)
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
				count=count +1
				if count <= 40 then
					SetEctypeVarShort(mapid,61,count)
				end
				a=a+1
				SetArray(6,a)
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
				SetEctypeVarShort(mapid,61,count)
				end
				a=a+1
				SetArray(6,a)
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
				count =count+1
				if count <= 40 then
				SetEctypeVarShort(mapid,61,count)
				end
				SetArray(6,0)
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
				if a < =6 then
     			PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					MonsterID=32511
					AI:SummonMonsterByPos(MonsterID,PosX,PosY,0)
					count2 =count2+1
					if count2 <= 40     then
					SetEctypeVarShort(mapid,59,count2)
					end
					a=a+1
					SetArray(8,a)
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
					AI:Say("Timer 11--start")    
				end                                                         
				if randomsay == 2 then                                                              
					AI:Say("")    
				end                                                   
				if randomsay == 3 then                                                              
					AI:Say("")   
				end                                                  
				if randomsay == 4 then                                                              
					AI:Say("")  
				end                                            
				if randomsay == 5 then                                                              
					AI:Say("")
				end                                         
				if randomsay == 6 then                                                              
					AI:Say("Please believe in Lord Quetzalcoatl. It's all for your own good!")    
				end                                
				if randomsay == 7 then                                                              
					AI:Say("When the whole world has burned to ash, Lord Quetzalcoatl can protect you! Join him!")     
				end                                          
				if randomsay == 8 then                                                              
					AI:Say("This world will soon be a miserable place.")      
				end                                             

			
		end--???11--------------------end
		if nIndex == 12 then--???12--start
			
				randomsay=math.random(1,8)                                                         
				if randomsay == 1 then                                                              
					AI:Say("Timer 12--start")    
				end                                                         
				if randomsay == 2 then                                                              
					AI:Say("")    
				end                                                   
				if randomsay == 3 then                                                              
					AI:Say("")   
				end                                                  
				if randomsay == 4 then                                                              
					AI:Say("")  
				end                                            
				if randomsay == 5 then                                                              
					AI:Say("")
				end                                         
				if randomsay == 6 then                                                              
					AI:Say("Please believe in Lord Quetzalcoatl. It's all for your own good!")    
				end                                
				if randomsay == 7 then                                                              
					AI:Say("When the whole world has burned to ash, Lord Quetzalcoatl can protect you! Join him!")     
				end                                          
				if randomsay == 8 then                                                              
					AI:Say("This world will soon be a miserable place.")      
				end                                             

			
		end--???12--------------------end

		
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
      	if hppct < 50 then
      		AI:ScreenText("I never fight alone! Come on, my friends!",2)
					PosX=AI:GetPosX()
					PosY=AI:GetPosY()     
      		AI:SetArray(2,1)
      		AI:SetEctypeVarShort(mapid,18,1)
      	end
				AI:SetArray(2,1)
      end
      if b == 1 then
			 	HP = AI:GetHP()
				HPMAX = AI:GetHPMax()
      	hppct = HP/HPMAX*100
      	if hppct < 30 then
      		AI:ScreenText("I never fight alone! Come on, my friends!",2)
					PosX=AI:GetPosX()
					PosY=AI:GetPosY()     
      		AI:SetArray(2,1)
      		AI:SetEctypeVarShort(mapid,18,1)
      	end
				AI:SetArray(2,2)
      end
      	var=AI:GetEctypeVarShort(mapid,18)
     if var == 1 then
     		AI:ScreenText("You dare to hurt my sister?!",2)
     		AI:AddSkill(2537,1)------????
	    	AI:UseSkill(2537,1)
	    	AI:AddSkill(2538,1)------????
	    	AI:UseSkill(2538,1)
	    	AI:SetEctypeVarShort(mapid,18,0)
	    end

--
				----------------------------------????AI---start
				----------------------------------????AI---end
				----------------------------------????AI---start
				----------------------------------????AI---end
		a = AI:GetArray(1)
		if a == 0 then
		AI:SetTimer(5,3000,999)     -- -????3???       
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
                                 
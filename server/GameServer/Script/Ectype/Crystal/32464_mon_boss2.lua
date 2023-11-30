-- //****************************  
-- //  Copyright:PERFECT WORLD  
-- //  Modified:2013.2.25  
-- //  Author:???  
-- //  TaskName: 32464???? 
-- //****************************  
--

function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		HP = AI:GetHP()
		HPMAX = AI:GetHPMax()
    hppct = HP/HPMAX*100
	--if nIndex == 1 then--???1--???? 1?1?
	--	a=AI:GetArray(2)
	--	if a == 0 then
	--	 
  --   	end
  --   end
  --  end-------------------???1--???? 1?1?
    if nIndex == 2 then ---???2--?????? 10syici
     hp=AI:GetEctypeVarShort(mapid,46)
    -- numhy=AI:GetEctypeVarShort(mapid,54)
     	a=AI:GetArray(3)
			if a < 5 then
     		if hp > 7 then
     			--if numhy <= 8  then
     				AI:ScreenText("Azura: Come on! Frost Heart!",1)
     				AI:SetTimer(8,1000,8)
					--	recoverHP = HPMAX / 100 * 5*numhy
					--	AI:RestoreHPInstant(recoverHP)
	    			AI:AddSkill(2535,4)------???
	    			AI:UseSkill(2535,4)
	    			a=a+1
	    			AI:SetArray(3,5)
	    	end
	    	
     	end
     	if a > 5 then
     		if a < 10 then
     		if hp > 7 then
     			--if numhy <= 8  then
     				AI:ScreenText("Azura: Come on! Frost Heart!",1)
     				AI:SetTimer(8,1000,8)
					--	recoverHP = HPMAX / 100 * 5*numhy
					--	AI:RestoreHPInstant(recoverHP)
	    			AI:AddSkill(2535,4)------???
	    			AI:UseSkill(2535,4)
	    			a=a+1
	    			AI:SetArray(3,10)
	    	end
	    	end
     	end
     end---???2-?????? 10syici
    if nIndex == 3 then ---???3--??1
     	a = AI:GetArray(4)
      hpline = 1000-a*50
--print(" | HP = "..tostring(HP).." | hppct = "..tostring(hppct).." | hpline = "..tostring(hpline).." | a = "..tostring(a))
			if hppct < hpline then
				monid = 0
				recoverHP = HPMAX / 100 * (4 + monid * 2)
				if hpline < 900 then
					AI:RestoreHPInstant(recoverHP)
				end
      	HP = AI:GetHP()
				a = a + 1
				AI:SetArray(4,a)
			end
     end ---???3--??1
     if nIndex == 4 then ---???4--?????AI:SetTimer(0,1000,999)
     		a=AI:GetArray(5)
				a=a+1
	---		AI:ScreenText("GUID:03960000002",2)
    	 	HP = AI:GetHP()
      	HPMAX = AI:GetHPMax()
     		hppct = HP/HPMAX*100
			if a <10 then
			  if hppct<80 then
			 --   AI:ScreenText("GUID:03960000003",1)
			    AI:AddSkill(2182,1)
					AI:UseSkill(2182,1)
					recoverHP = HPMAX / 100 * 20
					AI:RestoreHPInstant(recoverHP)
					AI:SetArray(5,10)
				 end
			else
	    		if a <20 then
	    		  if hppct<50 then
	    		--    AI:ScreenText("GUID:03960000004",1)
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
    			 --  AI:ScreenText("GUID:03960000005",1)
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
     		rand = math.random(0,4)
				if rand == 1 then
				--AI:Say("")
					AI:AddSkill(2243,1)
					AI:UseSkill(2243,1)
				end
				if rand == 2 then
--AI:Say("GUID:03960000006")
					AI:AddSkill(2522,5)
					AI:UseSkill(2522,5)
				end
				if rand == 3 then
			--	AI:Say("GUID:03960000007")
					AI:AddSkill(2189,1)
					AI:UseSkill(2189,1)
				end
				if rand == 4 then
			--	AI:Say("GUID:03960000008")
					AI:AddSkill(2374,1)
					AI:UseSkill(2374,1)
				end
     
     end---???5--????
     if nIndex == 6 then ---???6--??-?????-????54???
     	hp=AI:GetEctypeVarShort(mapid,46)
     	a=AI:GetArray(6)
     	if hp > 7 then
     	if a<40 then
     		bufflvl=math.random(1,5)
     		AI:AddSkill(2547,1)
	    	AI:UseSkill(2547,1)
	    	AI:AddSkill(2548,1)
	    	AI:UseSkill(2548,1)
	    	a=a+1
	    	AI:SetArray(6,a)
	    end
	    end
	
     end---???6--??
     if nIndex == 7 then ---???7--?????5?,????
     	a=AI:GetArray(7)
     	HP = AI:GetHP()
			HPMAX = AI:GetHPMax()
    	hppct = HP/HPMAX*100
     	if a==0 then
     	if hppct <10 then
     	 	AI:ScreenText("Azura: Oh, great goddess, give me strength!",2) 
     	 	AI:ScreenText("Azura: Oh, great goddess, give me strength!",2) 
     		AI:AddSkill(2542,1)------????
	    	AI:UseSkill(2542,1)
	    	AI:AddSkill(2543,1)------????
	    	AI:UseSkill(2543,1)
	    	AI:AddSkill(2544,1)------????
	    	AI:UseSkill(2544,1)
	    	a=a+1
	    	AI:SetArray(7,a)
	    end
	    
	    end

     end---???7--??
     if nIndex == 8 then----???8--????????8? ??1s
    -- print("8zhixing")
     		a=AI:GetArray(8)
     		count = AI:GetEctypeVarShort(mapid,54)
     		count2 = AI:GetEctypeVarShort(mapid,55) 
     		AI:ScreenText("Azura: Come on! Frost Heart! Give me strength!",1) 
     		AI:Say("Come on! Frost Heart! Give me strength!")
				if a < 8 then
     			PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					MonsterID=32510
					AI:SummonMonsterByPos(MonsterID,PosX,PosY,0)
					count =count+1
					count2 =count2 +1
					if count <= 40 then
					AI:SetEctypeVarShort(mapid,54,count)
					AI:SetEctypeVarShort(mapid,55,count2)
					end
					a =a+ 1
					AI:SetArray(8,a)
				end
				if a == 5 then
					AI:AddSkill(2545,1)------??????
	    		AI:UseSkill(2545,1)
	    	end
				
				if a == 8 then
     			AI:ScreenText("Azura: Come on! Frost Heart!",1)
     			AI:Say("Come on! Frost Heart!")
     			PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					MonsterID=32510
					AI:SummonMonsterByPos(MonsterID,PosX,PosY,0)
					AI:AddSkill(2546,1)------????
	    		AI:UseSkill(2546,1)
					AI:SetArray(8,0)
					x = AI:GetArray(3)
					AI:SetArray(3,x+1)
				end
     end
		if nIndex == 11 then--???11--start
			
				randomsay=math.random(1,8)                                                         
				if randomsay == 1 then                                                              
					AI:Say("Who dares to intrude in the Land of Ice!?")    
				end                                                         
				if randomsay == 2 then                                                              
					AI:Say("Go to hell!")    
				end                                                   
			
		end--???11--------------------end
	
		if nIndex == 15 then--???15--start
			
				randomsay=math.random(1,8)                                                         
				if randomsay == 1 then                                                              
					AI:Say("Pyrope! You dare to fight with me?")    
				end                                                         
				if randomsay == 2 then                                                              
					AI:Say("Don't think you have the upper hand! The Power of Ice is supreme!")    
				end                                                   
				if randomsay == 3 then                                                              
					AI:Say("You, human! Leave this place now, if you want to live!")   
				end                                                  
				if randomsay == 4 then                                                              
					AI:Say("After all these years... Finally, we shall end this!")  
				end                                            
				if randomsay == 5 then                                                              
					AI:Say("Do you still remember those peaceful days with the goddess...?")
				end                                         
				if randomsay == 6 then                                                              
					AI:Say("The Power of Ice is supreme, and you will learn this well!")    
				end                                
				if randomsay == 7 then                                                              
					AI:Say("We shall end this now!")     
				end                                          
				if randomsay == 8 then                                                              
					AI:Say("I have devoted my life to the Power of Ice!")      
				end                                             

			
		end--???15--------------------end
		
		if nIndex == 17 then--???17--start
			
				randomsay=math.random(1,8)                                                         
				if randomsay == 1 then                                                              
					AI:Say("The Dark Shadow... despicable!")    
				end                                                         
				if randomsay == 2 then                                                              
					AI:Say("You do now know what you have intruded upon!")    
				end                                                   
				if randomsay == 3 then                                                              
					AI:Say("The Power of Ice will punish you! Watch yourself!")   
				end                                                  
				if randomsay == 4 then                                                              
					AI:Say("The Power of Ice runs deeper than you can imagine! Let hell freeze over!")  
				end                                            
				if randomsay == 5 then                                                              
					AI:Say("Oh, goddess... do you hear my call?")
				end                                         
				if randomsay == 6 then                                                              
					AI:Say("Oh, Power of Ice! Show mercy on this pitiful world!")    
				end                                		
		end--???17--------------------end
		if nIndex == 18 then--???18--start-22boss??
				randomsay=math.random(1,8)                                                         
				if randomsay == 1 then                                                              
					AI:Say("You dare to intrude even this far!?")    
				end                                                         
				if randomsay == 2 then                                                              
					AI:Say("Now you shall know the true Power of Ice!")    
				end                                                   
				if randomsay == 3 then                                                              
					AI:Say("Freeze, rot, decay! Everything will descend into oblivion!")   
				end                                                                                       
				if randomsay == 8 then                                                              
					AI:Say("I have devoted my life to the Power of Ice!")      
				end                                             

			
		end--???18--------------------end
		
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
			ecvar = AI:GetEctypeVarShort(mapid,0)        
			
				HP = AI:GetHP()
				HPMAX = AI:GetHPMax()
      	hppct = HP/HPMAX*100
      	if hppct > 90 then
      		AI:SetEctypeVarShort(mapid,46,7)
      	end
      	
			  if hppct<80 then
			  	if hppct > 60 then
			    AI:SetEctypeVarShort(mapid,46,8)
					end
				 end
				if hppct<60 then
			  	if hppct > 40 then
      		AI:SetEctypeVarShort(mapid,46,9)
      		end
      	end
      	if hppct<30 then
			  	if hppct > 10 then
      		AI:SetEctypeVarShort(mapid,46,10)
      		end
      	end     
    --------------line 1 surface------------------  
      	if ecvar == 1 then 
      		b=AI:GetArray(9)
          if b ==  0 then
          	AI:ChangeFaction(11)
          	b=b+1
          	AI:SetArray(9,b)
          end          
          if b ==1 then
           var_sleep = AI:GetEctypeVarShort(mapid,69)
           if var_sleep == 1 then
           	AI:ChangeFaction(1)
           	AI:ScreenText("Azura: Who dares disturb the purity of this place?",2)
           	b=b+1
          	AI:SetArray(9,b)
          	AI:SetTimer(11,2000,9)  
          	id =AI:GetTargetID()
      --    	AI:Say(";;;;"..tostring(id))
          	if id > 0 then
         -- 	AI:AddSkill(2414,1)
					--	AI:UseSkill(2414,1)
							staus = AI:IsExistStatus(id,11962)
					--		AI:Say("staus"..tostring(staus))
							if staus == 1 then
							AI:AddSkill(2512,1)
							AI:UseSkill(2512,1)
					--		AI:Say("set00000::"..tostring(id))
							AI:SetArray(9,2)
							end
						end
					 end
          end  
          if b>1 then
          	id =AI:GetTargetID()
          	if id > 0 then
							staus = AI:IsExistStatus(id,11962)
						--	AI:Say("staus"..tostring(staus))
							if staus == 1 then
							AI:AddSkill(2512,1)
							AI:UseSkill(2512,1)
						--	AI:Say("set00000::"..tostring(id))
							AI:ScreenText("Azura: Who dares disturb the purity of this place?",2)
							end
						end
          end
        end
     --------------line 1 surface------------------           
				a=AI:GetArray(10)
				if a == 0 then
					if ecvar == 1 then
						HP = AI:GetHP()
						HPMAX = AI:GetHPMax()
	      		hppct = HP/HPMAX*100
	      		
							AI:SetTimer(1,1000,999)
							AI:SetTimer(2,10000,99)
							AI:SetTimer(3,1000,999)
							AI:SetTimer(4,1000,999)
							AI:SetTimer(7,1000,999)
							ecvar2 = AI:GetEctypeVarShort(mapid,54)-------count ????    
							if ecvar2 == 0 then
								AI:SetTimer(6,5000,20) 
							end 
							if ecvar2 < 5 then                                              
								AI:SetTimer(6,5000,ecvar2)                                    
							end                                                             
							if ecvar2 >= 5  then                                            
								if ecvar2 < 15  then                                          
									AI:SetTimer(6,5000,ecvar2/2)                                
								end                                                           
							end                                                             
							if ecvar2 >= 15 then                                            
							AI:SetTimer(6,5000,ecvar2/2)                                    
							end 
					                               
					end
			--		if ecvar == 3 then
			--			AI:SetTimer(13,2000,999)
			--		end
				
					if ecvar == 22 then
						varline = AI:GetEctypeVarShort(mapid,45)
						HP = AI:GetHP()
						HPMAX = AI:GetHPMax()
	      		hppct = HP/HPMAX*100
	      		
							if varline == 1 then
							AI:SetTimer(15,2000,999)
							--AI:SetTimer(1,1000,999)
							AI:SetTimer(4,1000,999)
							AI:SetTimer(5,8000,999)
							ecvar2 = AI:GetEctypeVarShort(mapid,54)-------count ????    
							if ecvar2 == 0 then
								AI:SetTimer(6,5000,20) 
							end 
							if ecvar2 < 5 then                                              
								AI:SetTimer(6,5000,ecvar2)                                    
							end                                                             
							if ecvar2 >= 5  then                                            
								if ecvar2 < 15  then                                          
									AI:SetTimer(6,5000,ecvar2/2)                                
								end                                                           
							end                                                             
							if ecvar2 >= 15 then                                            
							AI:SetTimer(6,5000,ecvar2/2)                                    
							end   
							end
							if varline == 2  then
							AI:SetTimer(18,2000,999)
							--AI:SetTimer(1,1000,999)
							AI:SetTimer(2,10000,99)
							AI:SetTimer(3,1000,999)
							AI:SetTimer(4,1000,999)
							AI:SetTimer(5,3000,999)
							AI:SetTimer(7,1000,999)
							ecvar2 = AI:GetEctypeVarShort(mapid,54)-------count ????    
							if ecvar2 == 0 then
								AI:SetTimer(6,5000,20) 
							end 
							if ecvar2 < 5 then                                              
								AI:SetTimer(6,5000,ecvar2)                                    
							end                                                             
							if ecvar2 >= 5  then                                            
								if ecvar2 < 15  then                                          
									AI:SetTimer(6,5000,ecvar2/2)                                
								end                                                           
							end                                                             
							if ecvar2 >= 15 then                                            
							AI:SetTimer(6,5000,ecvar2/2)                                    
							end   
							end
						
					end
					if ecvar == 31 then
						HP = AI:GetHP()
						HPMAX = AI:GetHPMax()
	      		hppct = HP/HPMAX*100
	      		
							AI:SetTimer(15,2000,999)
						--	AI:SetTimer(1,1000,999)
							AI:SetTimer(2,10000,99)
							AI:SetTimer(3,1000,999)
							AI:SetTimer(4,1000,999)
							AI:SetTimer(5,3000,999)
							AI:SetTimer(7,1000,999)
							ecvar2 = AI:GetEctypeVarShort(mapid,54)-------count ????    
							if ecvar2 == 0 then
								AI:SetTimer(6,5000,20) 
							end 
							if ecvar2 < 5 then                                              
								AI:SetTimer(6,5000,ecvar2)                                    
							end                                                             
							if ecvar2 >= 5  then                                            
								if ecvar2 < 15  then                                          
									AI:SetTimer(6,5000,ecvar2/2)                                
								end                                                           
							end                                                             
							if ecvar2 >= 15 then                                            
							AI:SetTimer(6,5000,ecvar2/2)                                    
							end   
					
					end
					if ecvar == 32 then    
						HP = AI:GetHP()
						HPMAX = AI:GetHPMax()
	      		hppct = HP/HPMAX*100
	      		
		--				print("32start")
							AI:SetTimer(17,2000,999)
						--	AI:SetTimer(1,1000,999)
							AI:SetTimer(2,10000,99)
							AI:SetTimer(3,1000,999)
							AI:SetTimer(4,1000,999)
							AI:SetTimer(5,3000,999)
							AI:SetTimer(7,1000,999)
							ecvar2 = AI:GetEctypeVarShort(mapid,54)-------count ????    
							if ecvar2 == 0 then
								AI:SetTimer(6,5000,20) 
							end 
							if ecvar2 < 5 then                                              
								AI:SetTimer(6,5000,ecvar2)                                    
							end                                                             
							if ecvar2 >= 5  then                                            
								if ecvar2 < 15  then                                          
									AI:SetTimer(6,5000,ecvar2/2)                                
								end                                                           
							end                                                             
							if ecvar2 >= 15 then                                            
							AI:SetTimer(6,5000,ecvar2/2)                                    
							end   
						
					end
					a= a+1
					AI:SetArray(10,a)
				end
					----------------------------------??????end
			
			----------------------------------------------------------normal end


	end--functionEvent_ThinkingEND
function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	local mapid = AI:GetMapID()
			varline = AI:GetEctypeVarShort(mapid,0)
 			if varline == 1 then
 			AI:ScreenText("Azura: How could you...?",2)
 			stand = AI:GetEctypeVarShort(mapid,72)
			stand = stand -30
			AI:SetEctypeVarShort(mapid,72,stand)
 			end
 			if varline == 22 then
 			AI:ScreenText("Azura: I won't die... like this...",2)
 			stand = AI:GetEctypeVarShort(mapid,72)
			stand = stand -15
			AI:SetEctypeVarShort(mapid,72,stand)
 			end
 			if varline == 31 then
 			AI:ScreenText("Azura: Pyrope! You will regret this!",2)
 			stand = AI:GetEctypeVarShort(mapid,72)
			stand = stand -30
			AI:SetEctypeVarShort(mapid,72,stand)
 			end
 			if varline == 32 then
 			AI:ScreenText("Azura: Oh, goddess... I was wrong...",2)
 			stand = AI:GetEctypeVarShort(mapid,72)
			stand = stand -30
			AI:SetEctypeVarShort(mapid,72,stand)
 			end
			
	end--functionEvent_ThinkingEND

-- //****************************  
-- //  Copyright:PERFECT WORLD  
-- //  Modified:2013.2.25  
-- //  Author:???  
-- //  TaskName: 32463???? 
-- //****************************  

function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		 HP = AI:GetHP()
     HPMAX = AI:GetHPMax()
   	 hppct = HP/HPMAX*100

		if nIndex == 1 then--???1--?????
		a=AI:GetArray(2)
			if a == 0 then
			 	HP = AI:GetHP()
				HPMAX = AI:GetHPMax()
     	hppct = HP/HPMAX*100
     	if hppct < 99 then
     		posx=AI:GetPosX()
				posy=AI:GetPosY()
				MonsterID=32506
				AI:SummonMonsterByPos(MonsterID, 61, 157,0)
				AI:SummonMonsterByPos(MonsterID, 71, 147,0)
				AI:SetArray(2,1)
			end
  --    		SetEctypeVarShort(mapid,50,7)
     	end
end-------------------???1--???? 1?1?   
  	if nIndex == 2 then ------2-----????
  		-----32524	
  				PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					MonsterID=32524
					Level=AI:GetEctypeVarShort(mapid,5)
					FieldLevel=AI:GetEctypeVarShort(mapid,6)
					if FieldLevel > 0 then
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,72,151,0)
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,72,151,0)
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,72,151,0)
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,72,151,0)
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,72,151,0)
					else
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, 72,151)
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, 72,151)
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, 72,151)
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, 72,151)
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, 72,151)
					end
					if FieldLevel > 0 then
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,70,161,0)
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,70,161,0)
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,70,161,0)
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,70,161,0)
						AI:CreateFieldMonster(MonsterID,256,FieldLevel,1,mapid,70,161,0)
					else
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, 70,161)
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, 70,161)
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, 70,161)
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, 70,161)
						AI:SummonLevelMonsterByPos(MonsterID, 256, Level, 70,161)
					end
	--		  if hppct<80 then
	--		  	if hppct > 60 then
	--		    AI:ScreenText("1",1)
	--		    SetEctypeVarShort(mapid,50,8)
	--				end
	--			 end
	--			if hppct<60 then
	--		  	if hppct > 40 then
  --    		SetEctypeVarShort(mapid,50,9)
  --    		end
  --    	end
  --    	if hppct<30 then
	--		  	if hppct > 10 then
  --    		SetEctypeVarShort(mapid,50,10)
  --    		end
  --    	end
  --    end
   
  --   if nIndex == 2 then ---???2--???????? 1?1?,??
  --
  --   	end
   end---???2---????
     if nIndex == 3 then ---???3--??1
     	a = AI:GetArray(4)
      hpline = 1000-a*50
--print(" | HP = "..tostring(HP).." | hppct = "..tostring(hppct).." | hpline = "..tostring(hpline).." | a = "..tostring(a))
			if hppct < hpline then
				monid = 0
				recoverHP = HPMAX / 100 * (2 + monid * 2)
				if hpline < 600 then
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
    			 --  AI:ScreenText("GUID:03958000000",1)
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
     		rand = math.random(0,3)
				if rand == 1 then
				--????)
					AI:AddSkill(2245,1)
					AI:UseSkill(2245,1)
				end
				if rand == 2 then
				--????
					line=AI:GetEctypeVarShort(mapid,0)
					if line == 1 then
						AI:AddSkill(2524,2)
						AI:UseSkill(2524,2)
					else
						AI:AddSkill(2522,4)
						AI:UseSkill(2522,4)
					end
				end
				if rand == 3 then
			--	??
					AI:AddSkill(2189,1)
					AI:UseSkill(2189,1)
				end
     
     end---???5--????
     if nIndex == 6 then ---???6--??-????1s??
     	hp=AI:GetEctypeVarShort(mapid,50)
    	numhy=AI:GetEctypeVarShort(mapid,51)
     	a=AI:GetArray(6)
     	if hp == 8 then
     	if a<5 then
     		bufflvl=math.random(1,5)
     		AI:AddSkill(2536,bufflvl)------????
	    	AI:UseSkill(2536,bufflvl)
	    	a=a+1
	    	AI:SetArray(6,a)
	    end
	    end
	    if hp == 9 then
     	if a<15 then
     		bufflvl=math.random(1,5)
     		AI:AddSkill(2536,bufflvl)------????
	    	AI:UseSkill(2536,bufflvl)
	    	a=a+1
	    	AI:SetArray(6,a)
	    end
	    end
	    if hp == 10 then
     	if a<30 then
     		bufflvl=math.random(1,5)
     		AI:AddSkill(2536,bufflvl)------????
	    	AI:UseSkill(2536,bufflvl)
	    	a=a+1
	    	AI:SetArray(6,a)
	    end
	    end
     		
     end---???6--??
     if nIndex == 7 then ---???7--????
     	a=AI:GetArray(7)
     	numhy=AI:GetEctypeVarShort(mapid,51)
     	if a==0 then
     	if hppct <5 then
     		bufflvl=6+numhy
     		AI:AddSkill(2522,bufflvl)------????
	    	AI:UseSkill(2522,bufflvl)
	    	AI:AddSkill(2522,bufflvl)------????
	    	AI:UseSkill(2522,bufflvl)
	    	AI:ScreenText("You can never defeat me!",2)
	    	AI:SelfMurder()
	    end
	    a=a+1
	    AI:SetArray(7,a)
	    end

     end---???7--??
     

		if nIndex == 11 then--???11--start
			
				randomsay=math.random(1,8)                                                         
				if randomsay == 1 then                                                              
					AI:Say("You are not from this land. Where did you come from?")    
				end                                                         
				if randomsay == 2 then                                                              
					AI:Say("Only those with strength are welcome in the Quartz Grotto!")    
				end                                                   
				if randomsay == 3 then                                                              
					AI:Say("If you can defeat me, I will believe in your power.")   
				end                                                  
				if randomsay == 4 then                                                              
					AI:Say("The world beyond? But how...")  
				end 
				if randomsay == 5 then                                                              
					AI:Say("The Quartz Grotto is not a peaceful place!")  
				end 
				if randomsay == 6 then                                                              
					AI:Say("If we want to live, we must fight! Come on, warriors!")  
				end                                            
			                                         

			
		end--???11--------------------end

		if nIndex == 14 then--???14--start
			
				randomsay=math.random(1,8)                                                         
				if randomsay == 1 then                                                              
					AI:Say("Azura! You still insist on fighting me?")    
				end                                                         
				if randomsay == 2 then                                                              
					AI:Say("If you want to fight, then let's fight! I will never retreat!")    
				end                                                   
				if randomsay == 3 then                                                              
					AI:Say("Oh goddess, grant me strength! I will never give up!")   
				end                                                  
				if randomsay == 4 then                                                              
					AI:Say("If the goddess sees us fighting each other, what would she think?")  
				end                                            
				if randomsay == 5 then                                                              
					AI:Say("One day, the flames will blaze gloriously across this whole realm!")
				end                                         
				if randomsay == 6 then                                                              
					AI:Say("Azura, there are some things I could never say...")    
				end                                
				                                          

			
		end--???14--------------------end
		
		if nIndex == 16 then--???16--start---------31
			
				randomsay=math.random(1,8)                                                         
				if randomsay == 1 then                                                              
					AI:ScreenText("Pyrope: Who the hell are you? Why are you here?",2)   
				end                                                         
				if randomsay == 2 then    
					AI:ScreenText("Pyrope: I smell the power of Darkness on you! I will not fall for Obsidia's tricks!",2)                                                            
				end                                                   
				if randomsay == 3 then     
					AI:ScreenText("Pyrope: Prove your worth to me, and I may let you live!",2)                                                          
				end                                                  
				if randomsay == 4 then 
					AI:ScreenText("Pyrope: That Shadow Witch has no place here. She will soon pay for her schemes!",2)                                                               
				end                                            
				if randomsay == 5 then   
					AI:ScreenText("Pyrope: There is no other power with such beauty and purity as fire!",2)                                                             
				end                                         
				if randomsay == 6 then        
					AI:ScreenText("Pyrope: Fight for justice, destroy the Darkness, and you will earn salvation!",2)                                                         
				end                                
				                                          

			
		end--???16--------------------end
		if nIndex == 17 then--???17--start
			
				randomsay=math.random(1,8)                                                         
				if randomsay == 1 then                                                              
					AI:Say("You have the foul stench of Darkness about you!")    
				end                                                         
				if randomsay == 2 then                                                              
					AI:Say("If you submit to evil, then your soul will be annihilated!")    
				end                                                   
				if randomsay == 3 then                                                              
					AI:Say("The flames will cleanse this world of all evil!")   
				end                                                  
				if randomsay == 4 then                                                              
					AI:Say("If this realm were lost to the hands of Darkness, the goddess would never forgive us.")  
				end                                            
				if randomsay == 5 then                                                              
					AI:Say("Please, let me fight! If death can grant Salvation, then may the fire burn my body!")
				end                                         
				if randomsay == 6 then                                                              
					AI:Say("Fire Crystal! The Eternal Strength! May my soul live burn forever in the fire!")    
				end                                

			
		end--???17--------------------end
		
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
			ecvar = AI:GetEctypeVarShort(mapid,0)
	--		ecvar2 = AI:GetEctypeVarShort(mapid,uKey)
 		
				
--				AI:SetTimer(1,1000,999)     -???? 1?1?      
--				AI:SetTimer(2,1000,999)      -???????? 1?1?,?? 
--				AI:SetTimer(3,1000,999)      ??1 
--				AI:SetTimer(4,1000,999)      -?????AI:SetTimer(0,1000,999)  
--				AI:SetTimer(5,3000,999)      -????3???    
--				AI:SetTimer(6,1000,999)      -??-????1s??       
--				AI:SetTimer(7,1000,999)      -????
			HP = AI:GetHP()
   	 	HPMAX = AI:GetHPMax()
   		hppct = HP/HPMAX*100
		--???1--???? 1?1?
			 	HP = AI:GetHP()
				HPMAX = AI:GetHPMax()
      	hppct = HP/HPMAX*100
      	if hppct > 90 then
      		AI:SetEctypeVarShort(mapid,50,7)
      	end
			  if hppct<80 then
			  	if hppct > 60 then
			   -- AI:ScreenText("1",1)
			    AI:SetEctypeVarShort(mapid,50,8)
					end
				 end
				if hppct<60 then
			  	if hppct > 40 then
      		AI:SetEctypeVarShort(mapid,50,9)
      		end
      	end
      	if hppct<30 then
			  	if hppct > 10 then
      		AI:SetEctypeVarShort(mapid,50,10)
      		end
      	end
				hp=AI:GetEctypeVarShort(mapid,50)
    		numhy=AI:GetEctypeVarShort(mapid,51)
     		a=AI:GetArray(3)
     		HP = AI:GetHP()
				HPMAX = AI:GetHPMax()
     		hppct = HP/HPMAX*100
     		if HP < HPMAX then
     			a=AI:GetArray(3) 
					if a == 0 then
     				if hp == 9 then
     					if numhy >= 4 then
     						AI:ScreenText("Pyrope: Blood Surge!",1)
     						AI:AddSkill(2534,1)------????
	    					AI:UseSkill(2534,1)
								recoverHP = HPMAX / 100 * 5*numhy
								AI:RestoreHPInstant(recoverHP)
	    					AI:AddSkill(2535,6)------???
	    					AI:UseSkill(2535,6)
	    				end
	    				if numhy <= 3 then
	    					if numhy >= 2 then
	    					
     						AI:ScreenText("Pyrope: Blood Surge!",1)
     						AI:AddSkill(2534,1)------????
	    					AI:UseSkill(2534,1)
	    					recoverHP = HPMAX / 100 * 5*numhy
								AI:RestoreHPInstant(recoverHP)
	    					AI:AddSkill(2535,4)------???
	    					AI:UseSkill(2535,4)
	    					end
	    				end
	    				if numhy <= 1 then
     						AI:ScreenText("Pyrope: Blood Surge!",1)
     						AI:AddSkill(2534,1)------????
	    					AI:UseSkill(2534,1)
	    					if numhy~= 0 then
	    						recoverHP = HPMAX / 100 * 5*numhy
									AI:RestoreHPInstant(recoverHP)
								end
	    					AI:AddSkill(2535,2)------???
	    					AI:UseSkill(2535,2)
	    				end
	    				a=a+1
	    				AI:SetArray(3,a)
     				end
     			end
     			if a == 1 then
     				if hp == 10 then
     					if numhy >= 4 then
     						AI:ScreenText("Pyrope: Blood Surge!",1)
     						AI:AddSkill(2534,1)------????
	    					AI:UseSkill(2534,1)
	    					if numhy~= 0 then
	    						recoverHP = HPMAX / 100 * 50*numhy
									AI:RestoreHPInstant(recoverHP)
								end
	    					AI:AddSkill(2535,6)------???
	    					AI:UseSkill(2535,6)
	    				end
	    				if numhy <= 3 then
	    					if numhy >= 2 then
	    					
     						AI:ScreenText("Pyrope: Blood Surge!",1)
     						AI:AddSkill(2534,1)------????
	    					AI:UseSkill(2534,1)
	    					if numhy~= 0 then
	    						recoverHP = HPMAX / 100 * 50*numhy
									AI:RestoreHPInstant(recoverHP)
								end
	    					AI:AddSkill(2535,4)------???
	    					AI:UseSkill(2535,4)
	    					end
	    				end
	    				if numhy <= 1 then
     						AI:ScreenText("Pyrope: Blood Surge!",1)
     						AI:AddSkill(2534,1)------????
	    					AI:UseSkill(2534,1)
	    					if numhy~= 0 then
	    						recoverHP = HPMAX / 100 * 50*numhy
									AI:RestoreHPInstant(recoverHP)
								end
	    					AI:AddSkill(2535,2)------???
	    					AI:UseSkill(2535,2)
	    				end
	    				a=a+1
	    				AI:SetArray(3,a)
     				end
					end
      	end
      	
					----------------------------------????AI---start
					----------------------------------????AI---end
					----------------------------------????AI---start
					----------------------------------????AI---end
					----------------------------------??????start
				a = AI:GetArray(1)
				if a == 0 then
					HP = AI:GetHP()
					HPMAX = AI:GetHPMax()
					if HP <HPMAX then
						if ecvar == 1 then
							AI:SetTimer(11,2000,999)
							AI:SetTimer(5,3000,999)
			  	
						end
						if ecvar == 21 then
							AI:SetTimer(14,2000,999)
							AI:SetTimer(5,3000,999)
							AI:SetTimer(2,5000,1)   
							AI:SetTimer(4,1000,999)   
							AI:SetTimer(6,1000,999)
							AI:SetTimer(7,1000,999)
						end
						if ecvar == 31 then
							AI:SetTimer(16,5000,999)
							AI:SetTimer(5,3000,999)   
							AI:SetTimer(4,1000,999)   
							AI:SetTimer(6,1000,999)
							AI:SetTimer(7,1000,999)
						end
						if ecvar == 32 then
							--AI:SetTimer(1,1000,99)
							AI:SetTimer(17,2000,999)
							AI:SetTimer(3,1000,999)
							AI:SetTimer(4,1000,999)
							AI:SetTimer(5,3000,999)
							AI:SetTimer(6,1000,999)
							AI:SetTimer(7,1000,999)
							AI:SetTimer(2,5000,1) 
	      	
						end
							----------------------------------??????end
						AI:SetArray(1,1)
					end
				end
			----------------------------------------------------------normal end


			end--functionEvent_ThinkingEND

       
function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	local mapid = AI:GetMapID()
			 varline= AI:GetEctypeVarShort(mapid,0)
		--	AI:Say("varline---"..tostring(varline))
 			if varline == 1 then
 			AI:ScreenText("Pyrope: Such power! You will help me eliminate the Shadow from this realm!",2)
 			end
 			if varline == 21 then
 			AI:ScreenText("Pyrope: Azura, did you know...?",2)
 			end
 			if varline == 31 then
 			AI:ScreenText("Pyrope: You do not disappoint, warrior! The Shadow is the root of this disaster. Go, and destroy it!",2)
 			end
 			if varline == 32 then
 			AI:ScreenText("Azura: Oh, goddess! I was wrong all along!",2)
 			end
 			stand = AI:GetEctypeVarShort(mapid,71)
			stand = stand -30
			AI:SetEctypeVarShort(mapid,71,stand)
			
	end--functionEvent_ThinkingEND


                          
-- //****************************  
-- //  Copyright:PERFECT WORLD  
-- //  Modified:2013.2.25  
-- //  Author:???  
-- //  TaskName: 32482 coreh ????
-- //****************************  
--//32478	?? 6??
--//32479	??
---32495	???
---32496	???

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

	
		
		if nIndex == 2 then--???2--?????????,1syici
			a=AI:GetArray(2)
			--32508 real
			if a==1 then 
				var = math.random(1,100)
				AI:SetEctypeVarShort(mapid,31,4)
				for c=1+var,4+var do
					PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					MonsterID1=32478
					MonsterID2=32479
						b=math.mod(c,4)-------mod
						cmax=4                          
						ox,oy,rr=	PosX,PosY,8                                       
						oa=6.28*b/cmax                     
						sx=ox+rr*math.sin(oa)              
						sy=oy+rr*math.cos(oa)  
						c1 =math.mod(c,2)
					if c1 == 1 then   
					AI:SummonMonsterByPos(MonsterID1,sx,sy,0)
					end
					if c1 ~= 1 then   
					AI:SummonMonsterByPos(MonsterID2,sx,sy,0)
					end	
				end    
			end
			if a~=1 then 
				var = math.random(1,100)
				AI:SetEctypeVarShort(mapid,31,2*a)
				for c=1+var,2*a+var do
						
						PosX=AI:GetPosX()
						PosY=AI:GetPosY()
						MonsterID1=32478
						MonsterID2=32479
							
						b=math.mod(c,2*a)-------mod
						cmax=2*a                          
						ox,oy,rr=	PosX,PosY,8                                       
						oa=6.28*b/cmax                     
						sx=ox+rr*math.sin(oa)              
						sy=oy+rr*math.cos(oa)  
						c1=math.mod(c,2)  
						if c1 == 0 then   
							AI:SummonMonsterByPos(MonsterID1,sx,sy,0)
						end
						if c1 == 1 then   
							AI:SummonMonsterByPos(MonsterID2,sx,sy,0)
						end	
				end    
			end
			AI:SetArray(3,0)
			AI:ScreenText("Only be keeping the Iceflame Field in balance can it be activated.",2)  
		end--???2--------------------end
		if nIndex == 3 then--???3--?????????,
			a=AI:GetArray(4)
			--32508 real
			if a==0 then 
				var = math.random(1,100)
				for c=1+var,2+var do
					PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					MonsterID1=32495
					MonsterID2=32496	
						b=math.mod(c,2)-------mod
						cmax=2                          
						ox,oy,rr=	PosX,PosY,4                                      
						oa=6.28*b/cmax                     
						sx=ox+rr*math.sin(oa)              
						sy=oy+rr*math.cos(oa)    
					if c == 1+var then   
					AI:SummonMonsterByPos(MonsterID1,sx,sy,0)
					end
					if c ~= 1+var then   
					AI:SummonMonsterByPos(MonsterID2,sx,sy,0)
					end	
				end    
			end
			AI:ScreenText("Fire and Ice are equal but opposite. They must be attacked in tandem to maintain their balance.",2)   
			AI:SetArray(3,0)	   
		end---???3--
		if nIndex ==4 then---???3?      5-??? 3- 9-
			a=AI:GetArray(5)
			if a < 3 then
				a=a+1
				AI:SetArray(5,a)
				AI:ScreenText("Balance will be broken in: "..tostring(3-a),2)
			end
			endvar=AI:GetEctypeVarShort(mapid,29)
			if a == 3 then
				ice = AI:GetEctypeVarShort(mapid,32)
				fire = AI:GetEctypeVarShort(mapid,33)
				if ice ~= fire then
					if endvar == 0 then
					AI:SetEctypeVarShort(mapid,25,1) 
					AI:SetEctypeVarShort(mapid,32,0)   
					AI:SetEctypeVarShort(mapid,33,0)    
					--AI:Say(""..tostring(a))
					AI:SetArray(9,0)
					AI:SetArray(3,0)
					AI:SetArray(5,0)
					end
				end
				if ice == fire then
					if endvar == 0 then
					--AI:Say(""..tostring(a))
					AI:SetArray(9,0)
					AI:SetArray(3,0)
					AI:SetArray(5,0)  
					AI:ScreenText("The balance of Iceflame has been restored!",2)  
					end
				end
				invar2=AI:GetEctypeVarShort(mapid,28)
				if endvar == 1 then
				 if invar2~= 2 then
					 if invar2 ~= 0 then
						AI:SetEctypeVarShort(mapid,27,1)
						AI:SetEctypeVarShort(mapid,28,0)
						AI:SetArray(10,0)
						AI:SetArray(3,0)
						AI:SetArray(5,0)
						end
					end
				end
			end
		end--???0--------------------end
		if nIndex == 5 then-----??
			rand = math.random(1,5)
			if rand == 1 then
				AI:Say("The Power of Flame has kept me imprisoned here for a very, very long time.")
			end
			if rand == 2 then
				AI:Say("You must keep the forces of Fire and Ice in balance!")
			end
			if rand == 3 then
			AI:Say("I hope we may fight together in the future!")
			end
			if rand == 4 then
			AI:Say("I hope we may one day fight together in the name of the Power of Ice!")
			end
			if rand == 5 then
			AI:Say("It is my duty to help Ice Crystal to eliminate monsters in the Crystal Realm!")
			end
		end
		if nIndex == 6 then ------??
			a= AI:GetArray(6)
			if a== 0 then
				AI:ScreenText("Mysterious Man: Oh, thank the stars, I thought I'd never be free of that terrible cage!",2)
				AI:SetArray(6,a+1)
			end
			if a== 1 then
				AI:ScreenText("Mysterious Man: Sorry to be a burden, but could you do me a favor?",2)
				AI:SetArray(6,a+1)
			end
			if a== 2 then
				AI:ScreenText("Mysterious Man: There are evil forces lurking to the south. They trapped me here. Could you eliminate them?",2)
				AI:SetArray(6,a+1)
				AI:SelfMurder()
				AI:SetArray(3,0)
			end
				
		end
	--	if nIndex == 3 then--???2--start
	--		a=AI:GetArray(4)
	--		if a <5 then
	--			n=4-a
	--			AI:Say("GUID:03975000012"..tostring(n))
	--			a+=1
	--		end
	--	end--???2--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
			d = AI:GetArray(7)
			if d == 0 then   
			AI:ChangeFaction(11)
			var = math.random(1,100)
			AI:SetEctypeVarShort(mapid,31,8)
				for c=1+var,8+var do
					
					PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					MonsterID1=32478
					MonsterID2=32479
						b=math.mod(c,8)-------mod
						cmax=8                          
						ox,oy,rr=	PosX,PosY,8                                       
						oa=6.28*b/cmax                     
						sx=ox+rr*math.sin(oa)              
						sy=oy+rr*math.cos(oa)  
						c1=math.mod(c,2)
					if c1 == 1 then   
					AI:SummonMonsterByPos(MonsterID1,sx,sy,0)
					end
					if c1 ~= 1 then   
					AI:SummonMonsterByPos(MonsterID2,sx,sy,0)
					end	
				end
			var = math.random(1,100)
			for c=1+var,2+var do
					PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					MonsterID1=32495
					MonsterID2=32496	
						b=math.mod(c,2)-------mod
						cmax=2                          
						ox,oy,rr=	PosX,PosY,4                                      
						oa=6.28*b/cmax                     
						sx=ox+rr*math.sin(oa)              
						sy=oy+rr*math.cos(oa)    
					if c == 1+var then   
					AI:SummonMonsterByPos(MonsterID1,sx,sy,0)
					end
					if c ~= 1+var then   
					AI:SummonMonsterByPos(MonsterID2,sx,sy,0)
					end	
				end
			AI:SetArray(7,1)
			end
			a=AI:GetArray(3)
				vars=AI:GetEctypeVarShort(mapid,9)  
				AI:SetArray(2,vars)
				outvar1=AI:GetEctypeVarShort(mapid,25)
				outvar2=AI:GetEctypeVarShort(mapid,26)
				invar1=AI:GetEctypeVarShort(mapid,27)
				invar2=AI:GetEctypeVarShort(mapid,28)
				endvar=AI:GetEctypeVarShort(mapid,29)
				count =AI:GetEctypeVarShort(mapid,31)
				count = count /2
				ice = AI:GetEctypeVarShort(mapid,32)
				fire = AI:GetEctypeVarShort(mapid,33)
			m= AI:GetArray(13)
			if m == 0 then 
				if endvar == 2 then
					PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					AI:ScreenText("You helped the Mysterious Man escape from his prison!",2) 
					AI:SetEctypeVarShort(mapid,29,3)
					AI:SetTimer(6,3000,4)
					AI:SetArray(5,10)
					AI:SetArray(13,1)
				end
			end
	---------------------------------------------
			if a == 0 then
				
				if outvar1 ==1 then
					AI:SetTimer(2,1000,1)
					AI:ScreenText("Failed to activate the Outer Iceflame Field. Please try again!",2) 
					AI:SetEctypeVarShort(mapid,25,0) 
					AI:SetArray(3,1)
				end
				if invar1 ==2 then
					AI:SetTimer(3,1000,1)
					AI:ScreenText("Failed to activate the Inner Iceflame Field. Please try again!",2) 
					AI:SetEctypeVarShort(mapid,27,0)
					AI:SetArray(3,1)
				end
				
				if ice ~= fire then
					var = AI:GetArray(9)
					if var == 0 then
					AI:SetArray(5,0)
					AI:SetTimer(4,1000,3)
					AI:ScreenText("The balance of Iceflame will be broken in 3 sec.!",2) 
					AI:SetArray(9,1)
					AI:SetArray(3,1)
					end
				end
				if invar2 == 1 then
					var = AI:GetArray(10)
					if var == 0 then
						AI:SetArray(5,0)
						AI:SetTimer(4,1000,4)
						AI:ScreenText("The balance of Iceflame will be broken in 3 sec.!",2) 
						AI:SetArray(10,1)
						AI:SetArray(3,1)
					end
				end
			end
---------------------------------------------
			if invar2 == 2 then
					 AI:SetEctypeVarShort(mapid,29,2)
					 AI:SetArray(5,0)
					 AI:SetArray(3,0)
			end
			n= AI:GetArray(12)
			if n ==0 then
				if ice == fire then
					if ice ==count then
							AI:SetEctypeVarShort(mapid,29,1)
							AI:ScreenText("Congratulations! You have activated the Outer Iceflame Field!",2) 
					--		AI:SetArray(5,0)
							AI:SetArray(12,1)
							AI:SetArray(3,0)
							AI:SetArray(9,0)
					end
				end
			end
		

	end--functionEvent_ThinkingEND






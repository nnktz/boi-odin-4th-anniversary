-- //****************************  
-- //  Copyright:PERFECT WORLD  
-- //  Modified:2013.2.25  
-- //  Author:???  
-- //  TaskName: 32527 coref
-- //****************************  
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

	--	if nIndex == 1 then--???1--????-????
	--		a=AI:GetArray(3)
	--		if a == 0 then
	--			PosX=AI:GetPosX()
	--			PosY=AI:GetPosY()
	--			vars=AI:GetEctypeVarShort(mapid,58)
	--			varself=AI:GetArray(2)
	--			if vars == varself--------------------------------???
	--				AI:SetTimer(2,1000,1) 
	--				AI:SetEctypeVarShort(mapid,58,0) 
	--			end
	----			MonsterID=32487
	----			AI:SummonMonsterByPos(MonsterID,PosX,PosY,0)
	----			AI:Exit()
	--		end
	--	end--???1--------------------end
	--	
		if nIndex == 2 then--???2--???????????,
			a=AI:GetArray(2)
			rand = math.random(1,100)
			if rand < 25 then 
				a = 4
			end
			if rand >=25 then
				if rand < 50 then
					a = 5
				end
			end
			if rand >=50 then
				if rand < 75 then
					a = 3
					end
			end
			if rand >=75 then
				if rand < 95 then
					a = 2
				end
			end
			if rand>= 95 then
				a=1
			end
			AI:SetArray(2,a)
			AI:ScreenText(""..tostring(a),2)
			if a == 1 then
			--32513	???? jia
			--32508 real
				PosX=AI:GetPosX()
				PosY=AI:GetPosY()
				MonsterID=32508
				AI:SummonMonsterByPos(MonsterID,PosX,PosY,0)
				AI:ScreenText("The real Eye of Crystal has appeared!",2)
			end
			if a == 2 then
			--32513	???? jia
			--32508 real
				PosX=AI:GetPosX()
				PosY=AI:GetPosY()
				MonsterID1=32508
				MonsterID2=32513
				rand1=math.random(1,2)
				if rand1 == 1 then
				AI:SummonMonsterByPos(MonsterID1,217,249,0)
				AI:SummonMonsterByPos(MonsterID2,225,250,0)
				end
				if rand1 == 2 then
				AI:SummonMonsterByPos(MonsterID2,218,249,0)
				AI:SummonMonsterByPos(MonsterID1,224,250,0)
				end
				AI:ScreenText("Eyes of Crystal have appeared, but only one is real!",2)
			end
			var = math.random(1,100)
			var2 = math.random(1,a)
			if a> 2 then
			--32513	???? jia
			--32508 real
				for c=1+var,a+var do
					PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					MonsterID1=32508
					MonsterID2=32513	
						b=math.mod(c,a)-------mod
						cmax=a                          
						ox,oy,rr=	PosX,PosY,6                                       
						oa=6.28*b/cmax                     
						sx=ox+rr*math.sin(oa)              
						sy=oy+rr*math.cos(oa)  
						var3 = var+var2 
					if c == var3 then   
					AI:SummonMonsterByPos(MonsterID1,sx,sy,0)
					end
					if c ~= var3 then   
					AI:SummonMonsterByPos(MonsterID2,sx,sy,0)
					end	
				end
				AI:ScreenText("Eyes of Crystal have appeared, but only one is real!",2)    
			end	
		end--???2--------------------end
	--	if nIndex == 3 then--???2--start
	--		a=AI:GetArray(4)
	--		if a <5 then
	--			n=4-a
	--			AI:Say("GUID:03996000003"..tostring(n))
	--			a+=1
	--		end
	--	end--???2--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
 			b = AI:GetArray(4)
 			if b == 0 then 
 				AI:SetArray(2,2)
 				AI:SetArray(4,1)
 			end
 			if a == 0 then
				PosX=AI:GetPosX()
				PosY=AI:GetPosY()
				vars=AI:GetEctypeVarShort(mapid,58)
				varself=AI:GetArray(2)
			--	AI:ScreenText(""..tostring(vars),2)
			--	AI:ScreenText(""..tostring(varself),2)
				if vars == varself then--------------------------------???
					AI:SetTimer(2,1000,1) 
					AI:SetEctypeVarShort(mapid,58,0) 
				end
			end

	end--functionEvent_ThinkingEND






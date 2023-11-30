 	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2012/6/26
	//		Author£ºÖì½¨³¼
	//		TaskName£ºMonster-10412.s
	//		TaskID£º
	//****************************************
	
	function OnDead(){
		
		$star = 0
		$weekday = GetSystemTime ( "week" )
		$hour = GetSystemTime ( "hour" )
		$guai1 = GetGlobalVar(134)
		
		if $weekday == 3
			if $hour >= 16
				if $hour < 18
					$star = 1
				endif
			endif
			if $hour >= 20
				if $hour < 22
					$star = 1
				endif
			endif
		endif
		
		if $weekday == 4
			if $hour >= 14
				if $hour < 18
					$star = 1
				endif
			endif
			if $hour >= 20
				if $hour < 22
					$star = 1
				endif
			endif
		endif
						
		if $weekday == 5
			if $hour >= 14
				if $hour < 16
					$star = 1
				endif
			endif
		endif
		
		$renwu1 = IsTaskAccept(-1,1860)
		$renwu2 = IsTaskAccept(-1,1861)
		
		if $star == 1
			if $renwu1 == 0
				if $guai1 == 3
					DropMonsterItems(-1,90177)
				endif
			endif
		endif
		
		if $star == 1
			if $renwu2 == 0
				if $guai1 == 3
					DropMonsterItems(-1,90177)
				endif
			endif
		endif
		
		$daoju = GetPlayerInfo(-1,"item",12183)
		if $daoju > 0
			return
		endif
		
		$task = IsTaskAccept(-1,1017)
		if $task == 0
			$n = RandomNumber(0,100)
			if $n > 70
				$m = RandomNumber(1,3)
//				if $m == 1
					$a1 = GetPlayerInfo(-1,"item",12180)
					if $a1 > 0
//						return
					else
						$m = RandomNumber(1,3)
						if $m == 1
							DropMonsterItems(-1,90277)
						endif
					endif
//				endif
//				if $m == 2
					$a2 = GetPlayerInfo(-1,"item",12181)
					if $a2 > 0
//						return
					else
						$m = RandomNumber(1,3)
						if $m == 1
							DropMonsterItems(-1,90278)
						endif
					endif
//				endif
//				if $m == 3
					$a3 = GetPlayerInfo(-1,"item",12182)
					if $a3 > 0
//						return
					else
						$m = RandomNumber(1,3)
						if $m == 1
							DropMonsterItems(-1,90279)
						endif
					endif
//				endif
			endif
		endif
				
	
	}
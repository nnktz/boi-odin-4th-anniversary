   	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/05/19
	//		Author�������
	//		TaskName��AV-Monster32157.s
	//		TaskID������ʳ�˻�5
	//****************************************
	
	function OnDead(){
		PlayEffect( -1, "script\special_shirenhua_5.ini" )
		$PlayerVar1 = GetPlayerVar( -1, 3793 )
		$PlayerVar2 = GetPlayerVar( -1, 3792 )
		if $PlayerVar1 == 54
			SetPlayerVar( -1, 3793, 4 )
			return
		else
			if $PlayerVar1 == 5
				SetPlayerVar( -1, 3793, 0 )
				$Item = GetPlayerInfo( -1, "item", 12479 )
				if $Item < 1
					AddPlayerInfo( -1, "item", 12479, 1 )
					return
				endif
				return
			else
				if $PlayerVar1 == 54321
					SetPlayerVar( -1, 3793, 4321 )
					return
				else
					if $PlayerVar1 == 576
						SetPlayerVar( -1, 3793, 76 )
						return
					else
						if $PlayerVar2 == 1
							SetPlayerVar( -1, 3793, 36754 )
							return
						endif
						if $PlayerVar2 == 2
							SetPlayerVar( -1, 3793, 13425 )
							return
						endif
						if $PlayerVar2 == 3
							SetPlayerVar( -1, 3793, 54321 )
							return
						endif
						if $PlayerVar2 == 4
							SetPlayerVar( -1, 3793, 13576 )
							return
						endif
					endif
				endif
			endif
		endif
		
	}
		
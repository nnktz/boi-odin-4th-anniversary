///****************************  
///  Copyright��PERFECT WORLD  
///  Modified��2013.2.25  
///  Author���ܳ��`  
///  TaskName�� 32496 ڤ������
///****************************  
	function OnDead(){

		//��ȡ���� ����
		
		$ectype_id = GetEctypeID(-1, 573)
		$var = GetEctypeVar($ectype_id,28)
		$var += 1
		SetEctypeVar($ectype_id,28,$var)

	}
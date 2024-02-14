function MoveX(amount)
{
	m_xRemainder += amount;
	var move = floor(m_xRemainder);
	if (move != 0)
	{
		m_xRemainder -= move;
		var mySign = sign(move);
		
		while(move != 0)
		{
			if (!place_meeting(x + mySign, y, obj_solid))
			{
				x += mySign;
				move -= mySign;
			}
			else
			{
				return true;
			}
		}
	}
	return false;
}
float gravity(float m1, float m2, float distance)
{
	float force = 0;
	float distSquare = 0;
	if(distance == 0)
	{
		distSquare = 0.000001f;
	}
	else distSquare = distance*distance;
	force = 10.0f*(m1*m2)/distSquare;
	return force;
}

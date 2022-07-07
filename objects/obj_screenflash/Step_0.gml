if(!rev)
{
	
	if(alpha < 1)
	{
		
		alpha += spd;
		
	}
	else
	{
		
		alpha = 1;
		rev = true;
		
	}
	
}
else
{
	
	if(alpha > 0)
	{
		
		alpha -= spd;
		
	}
	else
	{
		
		alpha = 0;
		instance_destroy();
		
	}
	
}

image_alpha = alpha;
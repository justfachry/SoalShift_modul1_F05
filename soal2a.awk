BEGIN {
	FS = ","
	MAX_1 = 0
	MAX_2 = 0
	Country_1 = none
	Country_2 = none
}

{
	if (NR>1 && /2012/)
	{	if ( MAX_1 < $10 )
		{	
			MAX_2 = MAX_1
			MAX_1 = $10
			Country_1 = $1
		}
		else 
		{
			if ( MAX_2 < $10 )
			{
				MAX_2 = $10
				Country_2 = $1
			}
		}
	}
}

END {
	print Country_1 " with " MAX_1
	print Country_2 " with " MAX_2
}

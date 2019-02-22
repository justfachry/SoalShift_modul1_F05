BEGIN {
	FS = ","
	MAX_1 = 0
	MAX_2 = 0
	MAX_3 = 0
}

{
	if (NR>1 && /2012/)
	{	if ( MAX_1 < $10 )
		{	
			MAX_2 = MAX_1
			MAX_1 = $10
			product_one = $6
		}
		else 
		{
			if ( MAX_2 < $10 )
			{
				MAX_2 = $10
				product_two = $6
			}
			else if ( MAX_3 < $10)
			{
				MAX_3 = $10 
				product_three = $6
			}
		}
	}
}

END {
	print MAX_1 " Product " product_one
	print MAX_2 " Product " product_two
	print MAX_3 " Product " product_three
}

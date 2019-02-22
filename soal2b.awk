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
			product_line_one = $4
		}
		else 
		{
			if ( MAX_2 < $10 )
			{
				MAX_2 = $10
				product_line_two = $4
			}
			else if ( MAX_3 < $10)
			{
				MAX_3 = $10 
				product_line_three = $4
			}
		}
	}
}

END {
	print MAX_1 " Product line " product_line_one
	print MAX_2 " Product line " product_line_two
	print MAX_3 " Product line " product_line_three
}

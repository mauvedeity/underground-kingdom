all:	underground-kingdom.html

underground-kingdom.html:	src/underground-kingdom.tw
	tweego -o underground-kingdom.html src images

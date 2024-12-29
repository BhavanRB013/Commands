AWK
	To create filters where to write scripts to accept data from 
	standard input and provide as std output. It can be chainned with
	other cmds.

	At defult awk sees whitespace as delimiter for fields

$1	represents the 1st column of text file. Number tells the 
	respective column

$NF	stands for number of field. Gives the last column

F':'	represents field separator we are telling to see : as delimiter

/pattern/	print the lines with matched pattern

$NR	keeps count of number of records.

END	To print only the last value it is mostly used with NR to know
	number of rows present.

---------------------------------------------------------------------

Printing range of lines

We can use NR to set the range : awk 'NR==2,NR==5 {print NR,$0}' txt

--------------------------------------------------------------------

Ex

awk '{sum=sum+$3} END {print sum}' txt

[[ we can have multiple values next to print by separating them with 
comma ]]


[[ If i just simply type NF or NR it would print the words NF means 
last word/field and NR means first. But if i put $ in front of this
cmds it would print the numbers. ]]

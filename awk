awk 'BEGIN{ print "start" } pattern {commands} END { print "end" } file

all the three blocks are optional ,, if the middle is not provided the by defualt it is { print } so as to print each line read

the pattern is also optional ,if no given it matches all the lines

when print is used without an argument ,it will print the current line.

when the argumets of the print are separated by commas ,they printed with space delimiter
double quotes are used as the concatanation opeartor in context of print in awk

the statements inside { } is exexutes as many lines are provided in input

NR  : stand for the current record number which corresspond to the current line number when it used lines as records
NF  : stands for the numbers of fields and corressponds to the no of field in the current record under execution(fields are separated by space)

$0  : a varibale that contains the text content of the current line under execution
$1  :  a varibale that holds the text of the first field
$2  :  a varibale that holds the text of the second field
NF  :  last field of the line
${NF-1} : second last field of line



awk 'END { print NR} ' file   ------- to count the total no of rows
seq 5 | awk ' BEGIN{ sum=0}{sum+=$1}END{print sum}' ------ to sum the numbers in first col

passing external varible in awk 
var1="variable1"; var2="variable2"
echo | awk -v VAR=$var1 '{ print VAR}'
or
echo | awk '{ print v1,v2}' v1=$var1 v2=var2


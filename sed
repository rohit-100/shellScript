sed 's/pattern/replace_string/' file
or
cat file | sed 's/pattern/replace_stirng/'

-i          to make infile change i.e. to save changes in the same file simultaneously

g           to make the operation global   sed 's/pattern/replace_string/g' file

ng          to replace only nth occurance of pattern  afterwards     sed 's/pattern/replace_string/ng' file


sed 's:text:replace:g'    we can use any choice of delimtiter
sed 's|text|replace|g'

when the delimiter character appears in the pattern then we use escape sequence        sed 's|te\|xt|replace|g'





Removing blank lines ---------------------
sed '/^$/d' file
/pattern/d  will remove lines matching the pattern




performing replacement directly in the file -------------------
sed 's/pattern/replacement/' -i filename


replace all three digit number to a specific number
sed -i 's/\b[0-9]\{3\}\b/NUMBER/g' data.txt
\b is word boundry breaker



sed -i .bak 's/abc/def/' file 
in this case, sed will not only perform the replacement on the file but it will also create a file called file.bak which will contain the orignal content



mathced string notation (&)
we can use & as the matched string for the substitution pattern

    echo this is an example | sed 's/\w\+/[&]/g'
    [this] [is] [an] [example]

\([a-z]\+\)      matches a single word



combining multiple expression -------------------------

sed 'expression' | sed 'expression'
sed 'expression ; expression'
sed -e 'expression' -e 'expression'



quoting ----------------------------------------
double quote expands the expression by evaluating it 

$text=hello
$echo hello world | sed "s/$text/HELLO/"
HELLO world


































for file in $(find . -type f -name "*.c")
do
prog_name=$(echo $file | cut -d'/' -f2 | cut -d'.' -f1)
gcc -o $prog_name $file 2>/dev/null
if [ -f $prog_name ]
then
if [ $(./$prog_name) -eq 20 ]
then
	ans=10
else
	ans=7
fi
else
	ans=5
fi
printf "%s	%d\n" $(echo $file | cut -d'/' -f2) $ans
done
exit 0

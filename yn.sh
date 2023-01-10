RT=''
get_input( ) {

local val
echo -n "$1"
read -r val
val=${val:-"$2"}
if [ $val = "y" ]
then
  val="$3"
else
  val="$4" 
fi
RT=$val
}

function max ()
{
    if [ $1 -gt $2 ]
    then
        echo $1
    else
        echo $2
    fi
}
BIGR=$(max 128 200)
echo $BIGR

get_input "Run TestClasses only? (Enter y/n, default: y):" "y" " --testlevel RunLocalTests" " "
echo $RT


# deltaDeploy.sh, mchinnappan, jan 2023

LN='-----------------------------------'
SX='====='
AR='<----'

echo $LN
echo "Delta Deployment"
echo $LN
echo $SX git log $SX 

git log --pretty='format:%h|%an|%ae|%s'
echo $LN
echo -n "FROM (Enter SHA1 for this commit FROM which we need to the delta deployment, defulat: HEAD^): "
read -r FROM
FROM=${FROM:-"HEAD^"}
echo -n "TO (Enter SHA1 for this commit TO which we need to the delta deployment, default: HEAD): "
read -r TO
TO=${TO:-"HEAD"}

echo $LN $FROM to $TO $LN
echo $LN Preparing delta packages $LN
sfdx sgd:source:delta -f $FROM -t $TO  -o .  > _delta_.json
cat _delta_.json

SUCCESS=`sfdx mohanc:data:jq -f '.success' -i _delta_.json`
echo "${AR} SUCCESS: $SUCCESS"
#-------------------

#-------------------TODO: Can be make as a function
echo -n "Check only? (Enter y/n, default: y): "
read -r CO
CO=${CO:-"y"}

if [ "$CO" = "y" ] 
then
  CO='-c '
else
  CO=' ' 
fi
echo "${AR} Check only: $CO"
#-------------------


echo -n "Run TestClasses only? (Enter y/n, default: y): "
read -r RT
RT=${RT:-"y"}
if [ "$RT" = "y" ]
then
  RT=' --testlevel RunLocalTests  '
else
  RT=' ' 
fi
if [ "$CO" = "y" ] 
then
  CO='-c '
else
  CO=' ' 
fi
echo "${AR} testlevel $RT"

#-------------------
echo -n "Run deletion pre or post? (Enter pre or post, default: post)): "
read -r PREPOST
PREPOST=${PREPOST:-"post"}

if [ "$PREPOST" = "pre" ]
then
  PREPOST='pre'
else
  PREPOST='post' 
fi

echo $PREPOST
echo "${AR} pre/post: $PREPOST"
#-------------------


 



echo $LN Deploying delta packages $LN
echo sfdx force:source:deploy -x package/package.xml  --${PREPOST}destructivechanges destructiveChanges/destructiveChanges.xml $RT  $CO --verbose --loglevel TRACE 
sfdx force:source:deploy -x package/package.xml  --${PREPOST}destructivechanges destructiveChanges/destructiveChanges.xml $RT  $CO --verbose --loglevel TRACE 
# echo sfdx force:mdapi:deploy -d destructiveChanges      -c --verbose --testlevel RunLocalTests --loglevel DEBUG --wait -1 

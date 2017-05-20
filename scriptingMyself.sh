admin="mauridb"
echo "FOLLOW ME ON GITHUB -- @https://github.com/mauridb --"
question="$admin, what are your computer programming skills?"
questionframework="Which frameworks do you know?"


mauridbskills=()
frameworks=()
echo $question

COUNTER=0
while :
do
  read skill
  if [ $skill = "next" ]
  then 
    break
  fi
  mauridbskills[$COUNTER]=$skill
  let COUNTER=COUNTER+1
done

echo $questionframework
INDEX=0
while :
do
    read fw
    if [ $fw = "end" ]
    then 
      break
    fi
    frameworks[$INDEX]=$fw 
    let INDEX=INDEX+1
done
echo "SKILLS: ${mauridbskills[*]}"
echo "FRAMEWORKS:${frameworks[*]}" 


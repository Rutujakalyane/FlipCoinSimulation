read -p "Enter the number of times coin flipped - " num
hh=0
ht=0
th=0
hh=0
for (( i=0; i<$num; i++ ))
do
        coin1=$(( RANDOM%2))
        coin2=$(( RANDOM%2))

        if [[ $coin1 -eq 1 && $coin2 -eq 1 ]]
        then
                ((hh++))
        elif [[ $coin1 -eq 1 && $coin2 -eq 0 ]]
        then
                ((ht++))
        elif [[ $coin1 -eq 0 && $coin2 -eq 1 ]]
        then
                ((th++))
        else    
                ((tt++))
        fi
done
declare -A coin
coin[HH]=$hh
coin[HT]=$ht
coin[TH]=$th
coin[TT]=$tt
        echo "Coin Signs-" ${!coin[@]}
        echo "Coin Values-" ${coin[@]}
hh1=$(($hh*100))
hhPercent=$(( $hh1/$num ))
ht1=$(($ht*100))
htPercent=$(( $ht1/$num ))
th1=$(($th*100))
thPercent=$(( $th1/$num ))
tt1=$(($tt*100))
ttPercent=$(( $tt1/$num ))

echo "HH Percentage- $hhPercent"
echo "HT Percentage- $htPercent"
echo "TH Percentage- $thPercent"
echo "TT Percentage- $ttPercent"


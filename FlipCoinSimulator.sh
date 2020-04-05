read -p "Enter the number of times coin flipped - " num
head=0
tail=0
for (( i=0; i<$num; i++ ))
do
        flip=$(( RANDOM%2))
        if [ $flip -eq 1 ]
        then
                ((head++))
        else
                ((tail++))
        fi
done
declare -A coin
coin[Heads]=$head
coin[Tails]=$tail
echo "Coin Signs-" ${!coin[@]} # All keys
echo "Both Values-" ${coin[@]} #All values

h=$(($head*100))
headPercent=$(( $h/$num ))
t=$(($tail*100))
tailPercent=$(( $t/$num ))

echo "Heads Percentage- $headPercent"
echo "Tails Percentage- $tailPercent"

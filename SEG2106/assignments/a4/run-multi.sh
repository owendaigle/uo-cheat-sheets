#! /bin/bash
#This is the number of queens to search for, higher is longer. 
#Does not work with values of 2 or 3
NUMBEROFQUEENS=45
#This is the number of times to run the test. Ideally larger is better, but takes longer.
NUMBEROFRUNS=60


currentdir="$PWD"
singleThreadResult=() # stores all runs
multiThreadResult=()
average=0 #stores single thread average
Multiaverage=0 # stores multi thread average

cd "$currentdir/8-Queen Problem HC Single Thread/"
# compiles
javac *.java

if [ $? -eq 0 ]
then
    echo "Compiled Successfully"
else
    echo "Failed to compile"
    exit 1
fi

echo "Running with $NUMBEROFQUEENS queens and $NUMBEROFRUNS runs"
echo




##### Multi Thread

cd "$currentdir/8-Queen Problem HC Multi Thread/"


# compiles
javac *.java

if [ $? -eq 0 ]
then
    echo "Compiled Successfully"
else
    echo "Failed to compile"
    exit 1
fi

# run many times
for ((i=0; i<= ($NUMBEROFRUNS-1); i++))
do
    multiThreadResult+=("$(java Main "$NUMBEROFQUEENS" | tail -n 1)")
    Multiaverage=$((Multiaverage + multiThreadResult[i])) #calculate average
    if [ $NUMBEROFQUEENS -gt 30 ] #show progress for lots of queens
    then
        echo "Running"
    fi

done

# actually calculate average
Multiaverage=$((Multiaverage / NUMBEROFRUNS))

##### OUTPUTS

echo
echo "------------------------------------------"
echo "For Single Threaded, average is: $average"
echo "Individual times are: ${singleThreadResult[*]}"
echo
echo "------------------------------------------"
echo
echo "For Multi Threaded, average is: $Multiaverage"
echo "Individual times are: ${multiThreadResult[*]}"
echo "------------------------------------------"

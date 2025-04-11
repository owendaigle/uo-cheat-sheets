#! /bin/bash
if [ ! -f ./parser.java -o ! -f ./inputs/input1.txt -o ! -f ./inputs/input2.txt -o ! -f ./inputs/input3.txt ]; then
  echo "One or more files not found. Please put the files in this folder for this script to work."
  echo "Tree should be:"
  echo "./parser.java"
  echo "./inputs/input1.txt"
  echo "./inputs/input2.txt"
  echo "./inputs/input3.txt"
else

  echo "Compiling source code using `javac`":
  javac parser.java > .compile-log
  if [ $? -eq 0 ]; then
    clear
    echo "**********************************************"
    echo "Owen Daigle - 300359036 - SEG2106 Assignment 3"
    echo "**********************************************"
    echo "Running parser.java with input 1."
    java parser ./inputs/input1.txt
    echo "----------------------------------------------"
    echo "Running parser.java with input 2."
    java parser ./inputs/input2.txt
    echo "----------------------------------------------"
    echo "Running parser.java with input 3."
    java parser ./inputs/input3.txt
  else 
    echo "Issue occured in compilation"
  fi
fi


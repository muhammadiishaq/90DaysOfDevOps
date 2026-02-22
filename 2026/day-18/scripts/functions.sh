#!/bin/bash

greet() {
  echo "Hello, $1!"
}

add() {
  num1=$1
  num2=$2
  sum=$(( num1 + num2 ))
  echo "Sum: $sum"
}

# Calling functions
greet "Muhammad"
add 10 8

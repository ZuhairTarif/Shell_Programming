#!/bin/bash

select variable in Prime Fibonacci Factorial Odd
do
  case $variable in
    Prime)
      is_prime() {
        local num=$1
        for (( i=2; i<num; i++ ))
        do
          if (( num % i == 0 ))
          then
            return 1
          fi
        done
        return 0
      }

      echo "Prime Numbers:"
      for number in {1..10}
      do
        if is_prime $number
        then
          echo "$number is prime"
        fi
      done
      ;;

    Fibonacci)
      n=10
      a=0
      b=1
      echo "Fibonacci series for n = $n:"
      for (( i=0; i<n; i++ ))
      do
        echo -n "$a "
        sum=$((a + b))
        a=$b
        b=$sum
      done
      ;;

    Factorial)
      echo "Enter a number:"
      read num
      factorial=1
      for (( i=1; i<=num; i++ ))
      do
        factorial=$((factorial * i))
      done
      echo "Factorial of $num is $factorial"
      ;;

    Odd)
      echo "Odd Numbers: "
      a=1
      until [ ! $a -lt 10 ]
      do
        echo $a
        a=`expr $a + 2`
      done
      ;;

    *)
      echo "Default"
      ;;
  esac
done

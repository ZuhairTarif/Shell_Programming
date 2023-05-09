#!/bin/bash

select variable in Prime Fibonacci Factorial Odd Max
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

    Max)
     function max {
      if [ $1 -gt $2 ]
       then
         echo $1
       else
        echo $2
      fi
    }


   a=10
   b=20
   c=15

   max_ab=$(max $a $b)
   max_abc=$(max $max_ab $c)

   echo "The maximum of $a, $b, and $c is: $max_abc"
      ;;
    *)
      echo "Default"
      ;;
  esac
done

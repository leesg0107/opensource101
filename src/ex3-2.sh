#!/bin/sh
# $1: 첫 번째 숫자
# $2: 연산자 (+ 또는 -)
# $3: 두 번째 숫자
result=`expr $1 $2 $3`
echo "$result"
exit 0
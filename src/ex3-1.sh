#!/bin/sh
echo "반복할 횟수를 입력하세요:"
read count
for i in $(seq 1 $count)
do
    echo "hello world"
done
exit 0 
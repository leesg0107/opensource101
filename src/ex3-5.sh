#!/bin/sh

if [ "$1" = "-l" ]; then
    # -l 옵션이 주어진 경우
    echo "프로그램을 시작합니다."
    echo "함수 안으로 들어왔음"
    total=`ls -l ex3-*.sh | awk '{sum += $5} END {print sum}'`
    ls -l ex3-*.sh
    echo "합계 $total"
    echo "프로그램을 종료합니다."
else
    # 옵션이 없는 경우
    echo "프로그램을 시작합니다."
    echo "함수 안으로 들어왔음"
    ls ex3-*.sh
    echo "프로그램을 종료합니다."
fi
exit 0
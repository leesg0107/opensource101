#!/bin/sh

# 첫 번째 인자로 이름, 두 번째 인자로 전화번호를 받음
name=$1
phone=$2

# DB.txt 파일이 없으면 생성
if [ ! -f DB.txt ]; then
    touch DB.txt
fi

# --my friends-- 문구가 없으면 추가
if ! grep -q "^--my friends--" DB.txt; then
    echo "--my friends--" > DB.txt
fi

# 이름과 전화번호를 DB.txt에 추가
if [ "$name" != "" -a "$phone" != "" ]; then
    echo "$name $phone" >> DB.txt
fi

# DB.txt 내용 출력
cat DB.txt
exit 0

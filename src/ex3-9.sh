#!/bin/sh

# 검색할 이름을 인자로 받음
search_name=$1

# 인자가 없으면 사용법 출력
if [ "$search_name" = "" ]; then
    echo "사용법: $0 [검색할 이름]"
    exit 1
fi

# DB.txt 파일이 존재하는지 확인
if [ ! -f DB.txt ]; then
    echo "DB.txt 파일이 없습니다."
    exit 1
fi

# 이름으로 검색 (대소문자 구분 없이)
grep -i "$search_name" DB.txt

exit 0

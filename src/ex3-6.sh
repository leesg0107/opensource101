#!/bin/sh

# 폴더 이름을 인자로 받음
dirname=$1

# 폴더가 없으면 생성
if [ ! -d "$dirname" ]; then
    mkdir "$dirname"
fi

# 폴더로 이동
cd "$dirname"

# 5개의 파일 생성
for i in 0 1 2 3 4
do
    echo "This is file$i" > "file$i.txt"
done

# 파일들을 tar로 압축
tar -cf files.tar file*.txt

# 현재 폴더의 내용 확인
ls

# 상위 폴더로 이동
cd ..
exit 0

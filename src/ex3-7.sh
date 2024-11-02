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
    # 디렉토리 생성 및 권한 설정
    mkdir -m 755 "file$i"
    # 디렉토리로 이동하여 심볼릭 링크 생성
    cd "file$i"
    ln -s "../file$i.txt" "file$i.txt"
    cd ..
done

# 현재 폴더의 내용 확인
ls

# 각 폴더의 내용 확인
for i in 0 1 2 3 4
do
    cd "file$i"
    echo "총 8"  # 디렉토리 크기 표시
    ls -l       # 심볼릭 링크 정보 표시
    cd ..
done

cd ..
exit 0

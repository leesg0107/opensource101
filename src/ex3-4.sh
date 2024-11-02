#!/bin/sh

echo "리눅스가 재미있나요? (yes / no)"
read answer

case $answer in
    *[yY][eE][sS]*|[yY])
        echo "yes"
        ;;
    *[nN][oO]*|[nN])
        echo "no"
        ;;
    *)
        echo "yes or no로 입력해 주세요."
        ;;
esac
exit 0

#!/bin/bash

# read -p "Enter you branch: " branch

# if [ "$branch" == "main" ] || [ "$branch" == "master" ]; then
#     echo "This is production"
# elif [ "$branch" == "develop" ]; then
#     echo "This is develop"
# else
#     echo "Unknwon branch"
# fi

# echo "Hello ${username:-default}"

# if [ -d f1 ] && [ -f a.txt ]; then
#     echo "Yes"
# else
#     echo "No"
# fi

# mkdir -p f2/f3

# if [ $? -eq 0 ]; then
#     echo "成功"
# else
#     echo "失敗"
# fi

for i in {1..5}; do
    echo $i
done

echo "=========="

for i in a b c d e f g; do
    echo $i
done

echo "=========="

for i in `ls`; do
    echo $i
done
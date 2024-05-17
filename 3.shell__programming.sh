# script 파일 생성
touch myscript.sh


#shell 실습 내용
touch test2.sh
nano test2.sh
	echo "script start"
	cd
	mkdir my_dir4
	cd my_dir4
	touch file1.txt
	touch file2.txt
	echo file1.txt "hello file1"
	echo file2.txt "hello file2"
	cp file1.txt file1_backup.txt
	mv file2.txt file2_rename.txt
	echo "script end"
chmod 754 test2.sh
./test2.sh




# if문
if[ 1 -gt 2 ]; then
    echo "hello world1"
else
    echo "hello world2"
fi

# if문과 변수활용, 파일(-f)/디렉토리(-d) 존재여부 확인
file_name="second_file.txt"    #문법이라 띄어쓰기x
if [ -f "$file_name" ]; then
    echo "$file_name exists"
else
    echo "$file_name does not exist"
fi

# for문 기본
for a in {1..100}
do
    echo "hello world$a"
done


# if문 실습
1.echo로 start 출력
2.test_dir이 현재 폴더에 있으면 해당 폴더로 이동
3.없으면 해당 폴더 생성 후 이동
4.echo로 end 출력


if [ -d test_dir ]; then
    cd test_dir
else
    mkdir test_dir
    cd test_dir
fi

if [ -f text4.txt ];then
    echo "test4.txt exist"
else
    touch test4.txt
fi
for a in {1..100}
do
    echo "hello world$a" >> test4.txt
done

# for 문을 활용 count 세기
count=0
for a in {1..100}
do
    ((count++))
done
echo "count is $count"

# for문을 활용한 모든 파일, 디렉토리 목록 출력
for a in *
do 
    echo "a is $a"
done

# 특정 디렉터로 안의 directory의 개수와 그외 세기
dir_count=0
file_count=0
for a in *
do
    if [ -d "&a" ]; then
        ((dir_count++))
    else
        ((file_count++))
    fi
done
echo "directory count is $dir_count"
echo "file count is $file_count"




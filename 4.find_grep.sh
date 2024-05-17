# 문자열 찾기 ( -r, -i, -n 등의 옵션 있음)
grep -rni "hello"
ps -ef | grep "nginx"

# 파일이나 디렉토리 를 검색하여 위치 출력 ( -name, -type, -exec)
find . -name "*.sh"

# 파일 검색 후 해당 내역에서 원하는 문자열 찾을 때
# xargs : 넘겨온 파일목록을 하나하나 읽겠다라는 의미
find . -name "*.sh" | xargs grep -rni "hello"


# exec 옵셜을 통한 find와 grep
# {} : 담기는 대상 , \ : 종료
find . -name "*.sh" -exec echo {} \;
find . -name "*.sh" -exec grep -n "hello" {} \;

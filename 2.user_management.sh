# 사용자 추가
sudo useradd 사용자명

# 패스워드 지정
sudo passwd 사용자명

# 사용자 목록 조회
cat /etc/passwd

# 루트 사용자로 전환
su -

# 루트 사용자의 권한을 빌리는 것
# sudo useradd dlaudrb2 => 비밀번호 : 현 사용자의 비밀번호
sudo

# 사용자 전환
# 이떄의 비밀번호는 전환하고자 하는 사용자 비밀번호
su - 사용자명

# 파일 권한 관리
# 권한은 3개의 파트(User Group Others) 로 구성, 각 권한은 r(4) w(2) x(1) 으로 구성
chmod 777 test.sh
chmod u+x test.sh   #user에서 x(실행) 권한 추가
chmod g-w test.sh   #group에서 w(쓰기) 권한 삭제

# 파일 소유자/그룹 관리
# 소유자와 그룹 변경
chown 소유자:그룹 파일명



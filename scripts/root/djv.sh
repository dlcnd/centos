#!/bin/sh
if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as Root" 1>&2
	exit 1
fi
yum -y remove DJV #기존의 DJV 프로그램삭제
cd /tmp #tmp 경로로 이동해서 프로그램 설치
wget https://sourceforge.net/projects/djv/files/djv-stable/1.2.5/DJV-1.2.5-1.x86_64.rpm
yum -y install DJV-1.2.5-1.x86_64.rpm
rm DJV-1.2.5-1.x86_64.rpm* #rpm1,2,3 이런 모든것 제거 가능

os_name=$(uname -a | tr '[A-Z]' '[a-z]')
if [ -f "/etc/redhat-release" ];then
	if [[ `cat /etc/redhat-release | tr '[A-Z]' '[a-z]'` =~ "centos" ]];then
		os_name="centos"
	else
	  echo "invalid os $os_name"
    exit 1
	fi
elif [ -f "/proc/version" ];then
	if [[ `cat /proc/version | tr '[A-Z]' '[a-z]'` =~ "centos" ]];then
		os_name="centos"
	else
	  echo "invalid os $os_name"
    exit 1
	fi
else
  if [[ $os_name =~ "darwin" ]]; then
    os_name="mac"
  elif [[ $os_name =~ "centos" ]]; then
    os_name="centos"
  elif [[ $os_name =~ "ubuntu" ]]; then
    os_name="ubuntu"
  else
    echo "invalid os $os_name"
    exit 1
  fi
fi
echo $os_name
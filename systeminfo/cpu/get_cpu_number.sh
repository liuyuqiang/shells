if [ -f /proc/cpuinfo ]; then
  echo $(cat /proc/cpuinfo | grep processor | wc -l)
else
  echo 1
fi
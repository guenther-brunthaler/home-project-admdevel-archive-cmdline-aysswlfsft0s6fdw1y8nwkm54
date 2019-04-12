# Report file decriptor througput in 5 s intervals as MiB/s
#f=/proc/28894/fdinfo/1;t=0;while :;do p=`awk '/pos/{print $NF}' $f`;n=`date +%s`;if [ $t = 0 ];then t=$n;o=$p;else echo `echo "scale=2;($p-$o)/($n-$t)/2^20"|bc` MiB/s;fi;sleep 5;done

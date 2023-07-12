ipv4=`curl -s http://ip.ustc.edu.cn/myip.php | jq -r .myip`
cd /your/path/ArDNSPod-master
conf=`bash ddnspod.sh`
curl -d "Current IP is $ipv4" ntfy.sh/your-ntfy-server-name
curl -d "DDNS Status is $conf" ntfy.sh/your-ntfy-server-name

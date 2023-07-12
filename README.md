# ArDNSPod-China-CarnetIP-support

该项目源代码来自rehiy/dnspod-shell、ArDNSPod（已经找不到了），然后将获取IP的方式进行了一些修改，可以实现查询到中国高等院校的校园网IP地址。同时结合cron任务，通过ntfy项目实现将ddns的实施结果推动到客户端的功能。

# Usage

[详细介绍使用方法的博文](https://blog.wslll.cn/index.php/archives/201/)（老鸟请略过）

首先要在dnspod网页上新建解析记录，然后获得api token。  
复制`dns.conf.example`到同一目录下的`dns.conf`并根据你的配置修。  
在 `ddnspod.sh` 文件开头修改要解析的ip类型(ipv4/ipv6)    

执行时直接运行`ddnspod.sh`，支持cron任务。

配置文件格式：

```
# 安全起见，不推荐使用密码认证
# arMail="test@gmail.com"
# arPass="123"
(现在dnspod已经完全废除密码认证的方式了)

# 推荐使用Token认证
# 按`TokenID,Token`格式填写
arToken="12345,7676f344eaeaea9074c123451234512d"

# 每行一个域名
arDdnsCheck "test.org" "subdomain"
```

# ntfy推送
report.sh是将当前的IP地址和ddns的状态推动到ntfy服务器的脚本。下载ntfy或登录ntfy网站，使用ntfy的服务器设置一个自己的推送地址，随后修改report.sh中的地址即可使用，ntfy具体使用方法见Github项目Ntfy。结合cron定时实现自动DDNS和推送的功能。

# Credit

Original: rehiy
Forked form rehiy/dnspod-shell

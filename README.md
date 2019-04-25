# Full Bitcoin node wrapped with bitcore and docker
## Version
* node: 8.16.0
* bitcore: 4.1.0

## Prerequisite
- Docker
- Docker Compose

## Update Log:
### 20190425
* 优化了时区的配置：  
通过映射localtime文件的形式同步宿主机的时区，在docker-compose中volume
```
volumes:
      - /etc/localtime:/etc/localtime:ro
```
* 优化了CMD命令，可以通过CMD将log传入的文件中。  
通过exec格式执行CMD时，需要指定“sh -c”进行解析，否则不进行shell解析。或直接使用shell命令格式，但是可读性不如exec格式强。  
* 指定了bitcore的版本，版本为4.1.0

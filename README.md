# Docker cRARk

## Get image from Docker Hub 
Container is available here:
[https://hub.docker.com/r/hubertwo/crark](https://hub.docker.com/r/hubertwo/crark)
 
## Build container yourself 

### How to build the container
```shell script
# pwd ../docker-crark/
docker build -t hubertwo/crark:5.5 ./
```

### How to run container
 * ```PATH_TO_LOCAL_DIR``` - local directory with RAR files you want to crack.
 * ```RAR_FILE_NAME``` - filename of RAR file you want to crack. 
 * Please find more here http://www.crark.net/cRARk.html#423
 
```shell script
docker run --rm -v [PATH_TO_LOCAL_DIR]:/data HubertWo/crark:5.5 crark -p/tmp/english.def /data/[RAR_FILE_NAME]
```

### Test 
You can find ``crackme`` file inside ```crark.rar``` file. 
Run bellow command and crack example file to check if everything works.
```shell script
docker run --rm hubertwo/crark:5.5 crark -p/tmp/crackme.def /tmp/crark.rar
```

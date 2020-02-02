# Docker cRARk

### How to build the container
```shell script
docker build -t HubertWo/crark:5.5
```

### How to run container
 * ```PATH_TO_LOCAL_DIR``` - local directory with RAR files you want to crack.
 * ```RAR_FILE_NAME``` - filename of RAR file you want to crack. 
 * Please find more here http://www.crark.net/cRARk.html#423
 
```shell script
docker run --rm -v [PATH_TO_LOCAL_DIR]:/data HubertWo/crark:5.5 crark -b -l8 -g13 -p/tmp/english.dif /data/[RAR_FILE_NAME]
```

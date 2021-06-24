# debian-env  

It binds the parent directory in a debian environment with valgrind.  
Check Makefile for additional informations.  

```
git clone https://github.com/Tripouille/debian-env.git && cd debian-env && make
```

# Setup docker in goinfre for 42 mac  
rm -rf ~/Library/Containers/com.docker.docker  
rm -rf ~/.docker  
rm -rf /goinfre/${USER}/docker /goinfre/${USER}/agent  
mkdir -p /goinfre/${USER}/docker /goinfre/${USER}/agent  
ln -s /goinfre/${USER}/agent ~/Library/Containers/com.docker.docker  
ln -s /goinfre/${USER}/docker ~/.docker 

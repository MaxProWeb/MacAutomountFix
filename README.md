
#Mac Automount permission issue fix. #

#### 1) Create a directory where you are goint to mount network file system####
#### 2) Edit config with: ####
```bash 
	sudo nano /etc/fstab
```
#### 3) Add a line in the file ####
```bash 
YOUR_NAS:/YOUR_SHARE /Users/simon/Shares/Movies url auto,user,umask=775,url==afp://YOUR_LOGON:YOUR_PASS@YOUR_NAS/YOUR_SHARE 0 0
```
My Example:
```bash 
10.0.2.1:/example /Users/max/example url auto,user,umask=775,url==afp://user:password@10.0.2.1/example 0 0
```
#### 4) reload config ####
```bash 
sudo automount -vc
```

#### 5. You will get a message like this ####
```bash 
automount: /net updated
automount: /home updated
automount: /Users/max/example mounted
automount: no unmounts
```

## The permission issue.##
You may get some times an issue with permission with message: 
"The folder “Test” can’t be opened because you don’t have permission to see its contents."
You can fix the issue with run the script fix.sh 

###The script will do:###
1. disable wifi 
2. try to access mounted directory 
3. enable wifi 
4. try to access mounted directory 
5. deleted folder index cache .DS_Store

The mounted directory permission will be fixed.

####Please, change "AFP_DIR=~/root/" to your mouting point ! ####

Sources links:

https://forums.plex.tv/index.php/topic/14201-howto-automount-afpsmb-shares-using-autofs/

http://grokin.gs/blog/2013/03/11/lion-and-automounter/


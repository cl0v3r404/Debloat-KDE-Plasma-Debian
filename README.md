# Debloat-KDE-Plasma-Debian
Script for easy removal of bloatware from debian kde plasma

If you have installed a fresh Debian installation with KDE plasma this script helps to remove all that software that is installed that you probably won't use, such as konqueror.
> [!CAUTION]
> This script is only tested for Debian, it has not been tested on Debian based distributions. Use it at your own risk.

## Prerequisites
Before executing the script I recommend doing a system update and it is necessary to have `wget` or `curl` installed.

## Instructions for use
Download the script, I recommend that it is in /home or in any other folder inside this one. 
```
wget https://github.com/cl0v3r404/Debloat-KDE-Plasma-Debian/blob/main/kdedebloat.sh
```
or
```
curl -O https://github.com/cl0v3r404/Debloat-KDE-Plasma-Debian/blob/main/kdedebloat.sh
```

Grant execution permissions
```
chmod +x kdedebloat.sh
```

Run the script and let it work its magic
```
sudo ./kdedebloat.sh
```


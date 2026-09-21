#!/bin/bash

if [ ! $(/usr/bin/whoami) = 'root' ]; then
   echo "Por favor execute com SuperUsuário root"
   echo "sudo  bash  $0"
   exit 1
fi

LOCK='/var/run/instalandocertificadofiltro.lock'
PID=$(cat $LOCK 2>/dev/null)
if [ ! -z "$PID" ] && kill -0 $PID 2>/dev/null
then
   echo already running
   exit 1
fi
trap "rm -f $LOCK ; exit" INT TERM EXIT
echo $$ > $LOCK

cd /tmp/
if [ -e "/tmp/caf.deb.b64" ]; then
   rm /tmp/caf.deb.b64
fi
if [ -e "/tmp/caf.deb" ]; then
   rm /tmp/caf.deb
fi
cat > "/tmp/caf.deb.b64" << EndOfThisFileIsExactHereNowReally
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
EndOfThisFileIsExactHereNowReally
base64 -d /tmp/caf.deb.b64 > /tmp/caf.deb
mv /tmp/caf.deb /tmp/ca-filtrowebescolas2026.deb

apt list --installed 2>/dev/null | grep filtroweb

sudo apt-get remove --purge -y $(apt list --installed 2>/dev/null | grep filtroweb | cut -d/ -f1)
    
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
if [ ! $? = 0 ]; then
   wget -q -O - https://jonilso.web178.kinghost.net/linux_signing_key.pub | sudo apt-key add -
fi

apt-get update 
apt-get -y install libnss3-tools
if [ -e "/etc/linuxmint/info" ]; then
   versaoMint=$(cat /etc/linuxmint/info | grep 'RELEASE=' | cut -d'=' -f2 | head -1)
   if [ "$versaoMint" = "18.3" ]; then
      apt-get install -y dpkg
   fi
fi
if [ "$(hostnamectl | grep 'Operating System' | grep 'Ubuntu 16.04' | wc -l)" = 1 ]; then
   apt-get install -y dpkg
fi

dpkg -i ca-filtrowebescolas2026.deb
rm -f $LOCK
exit 0

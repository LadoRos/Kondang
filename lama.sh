#!/bin/sh


echo 'masukan password : ';
read password
if [$password = 'admin']; then

  echo "password benar"
 else
   echo 'password salah '
   echo 'silahkan masuk ulang'
  
fi

clear

#perulangan
ulang='y'
while [ $ulang = 'y' ];
do
  
  echo "\033[32m
  ================================================================
  ==                                                            ==
  ==              __  __ ____        _____ _  _                 ==
  ==             |  \/  |  _ \      |_   _| || |__  __          ==
  ==             | |\/| | |_) |       | | | || |\ \/ /          ==
  ==             | |  | |  _ <   _    | | |__   _>  <           ==
  ==             |_|  |_|_| \_\ (_)   |_|    |_|/_/\_\          ==
  ==                                                            ==
  ==                                                            ==
  ================================================================\n";
  
  #menu utama
  echo '1) install kkktp gratis'
  echo '2) cracking akun bergame'
  echo '3) install hack cctv'
  echo '4) install bom sms'
  echo '5) install skull_project(phising ig)'
  echo '0) exit '
  #masukan atau input
  read -p 'Masukkan Pilhan anda : ' pil; 
  #kondi jika input = 1 maka akan menginstall kkktp gratis
  if [ $pil = '1' ]
  then
      echo 'installing kkktp'
      cd $HOME
	pkg install php -y
	pkg install git-y
	git clone https://github.com/IndonesianSecurity/kkktp
	cd kkktp
	php kkktp.php
      echo 'installing succes....! '
      sleep 1
  #kondisi jika input = 2 maka akan menginstall cracking akun ber game
  elif [ $pil = '2' ];
  then
      echo 'installing Cmbah cracking akun ber game'
      cd $HOME
      apt update  && apt upgrade -y
      pkg install python2
      
      pip2 install requests-y
      
      pip2 install bs4-y
      
      pkg install git-y
      
      git clone https://github.com/BOOTLOP/CrackRADEN.git
      cd CrackRADEN
      
      python2 Crackgm.py
      echo 'installing succes...! '
      sleep 1
  #kondisi jika input = 3 maka akan menginstall LazyGo
  elif [ $pil = '3' ];
  then
      echo 'installing hack cctv'
      cd $HOME
      apt update && apt upgrade -y
      apt install git-y
      git clone https://github.com/zlucifer/all_seeing
      cd all_seeing
      sh cctv.sh
      echo 'installing succes.. '
      sleep 1
  #kondisi jika input = 4 maka akan menginstall bom sms
  elif	 [ $pil = '4' ];
  then
      echo 'installing bom sms'
      cd $HOME
      apt update && apt upgrade-y
      apt install git-y
      git clone https://github.com/zlucifer/sms_bomb
      cd sms_bomb
      sh bom.sh
      echo 'installing succes..'
      sleep 1

      #kondisi jika input = 5 maka akan install skul_project
      elif  [ $pil = '5' ];
      then
      echo 'installing phising untuk instagram'
      cd $HOME
      apt update && apt upgrade-y
      apt intall git-y
      git clone https://github.com/zlucifer/skull_project
      cd skull_project
      sh skull.sh
      echo 'succes instaling..'
      sleep 1
      #kondisi jika input = 0 maka akan keluar dari tools
      elif [ $pil = '0' ];
      then
      echo 'bye bye.....! '
      sleep 2
      exit
      #kodisi else
      else
      echo 'ERROR : Wrong Input....! '
      sleep 1
      echo $ulang
   fi
   done
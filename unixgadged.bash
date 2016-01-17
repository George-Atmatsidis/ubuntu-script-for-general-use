#!/usr/bin/env bash
# unixgadged.bash 
# Author       : Atmatsidis Giwrgos                                            
# Released On  : Friday 04 September 2015                                      
# Version      : 1.0.1  run on terminal only NO GRAPHICS INTERFACE are exist.But on next version 1.0.5 i put                                                       
# Desription   : First of all you must make it executable and run it from Terminal  { /.yourscript.* } (be sure you are on the correct path, that is where your script is saved)
#                This program was created for use and it covers almost all your need's. It has the most importand commands for all.
#                And friendly menu where lead all your action's
#                You must create a folder and put the script inside, all logfille's from command's will be saved separately.
#                BEWARE the logfilles of script are refreshed every time you run it,and appear ONLY if you select the correct selection.
#                If you run the same command up to one time the logfiles will keep the out-message that what you run at the first time.(so if you want to compare the logfile with your old one you must create a new folder and put old loffiles inside)
#                Also for your good navicat make a full screen your terminal!! You can use the F11 hotkey
#		 For any issues contact me on E-mail:: GiwrgosAtmatsidis@live.com 
# Dependencies : This script was created and tested on Ubuntu operating system, though I can not guaranty for sure if that runs correctly on other operating's system's like Debian.                             
#                                                                               
# COPYRIGHT    : This program is free software: you can redistribute it and/or 
#                modify it under the terms of the GNU General Public License as
#                published by the Free Software Foundation, either version 3 of
#                the License, or (at your option) any later version. This      
#                program is distributed in the hope that it will be useful, but
#                WITHOUT ANY WARRANTY; without even the implied warranty of    
#                MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
#                GNU General Public License for more details. 
 

#var
selection="0"
boolean=""
#end var
 echo "-----MENU-----"
 echo "" 
 echo " Hello $USER what would you like to do ;
   [press the button of your choice]"
 echo ""
 echo "    1. Updating - Upgrading"
 echo ""
 echo "    2. I want to  clean the system and also clean the old cores"
 echo ""
 echo "    3. I have a problem then i run those commands on Terminal 'apt-get update' && 'apt-get upgrade'"
 echo ""
 echo "    4. I want to see the details of my system"
 echo ""
 echo "    5. I want to see what is the model of the video card and which driver (driver) uses"
 echo ""
 echo "    6. I want to see information about the network card and driver (driver) that is used"
 echo ""
 echo "    7. I want to see how much GB has written the disc (Useful for hard disks (eg SSD)"
 echo ""
 echo "    8. I want to see the number of packets as well as libraries - dependencies of system installed"
 echo ""
 echo "    9. I want to see the processor CPU information"     
 echo ""
 echo "   10. I want to see the information of RAM and view the size of memory in gigabyte and viewing Swap in use"      
 echo ""
 echo "   11. I want to see the partitions on my disk for Ubuntu 'swap, home, boot etc; and the space used"  
 echo ""
 echo "   12. I want to see the information of pci / usb / audio / system drivers devices " 
 echo ""
 echo "   13. View of TCP / UDP ports" 
 echo ""
 echo "   14. Show services (services) Computer" 
 echo ""
 echo "   15. I want to find a file/s and the folder where is are"  
 echo "" 
 echo "   16. I want to see what programs are running at the moment and their dependencies"  
 echo "" 
 echo "   0.Exit" 
 echo " Click on your choice below"
  read selection
 #check for correct entry 
 
while (("$selection" <= 0 )) || (("$selection" > 16 ))
 do
  
  if [ "$selection" = "0" ] ; then
    clear
      exit
  fi 
      clear
      echo " <!>You have given the wrong command. Please type the right choice"
      echo ""
 echo "    1. Updating - Upgrading"
 echo ""
 echo "    2. I want to  clean the system and also clean the old cores"
 echo ""
 echo "    3. I have a problem then i run those commands on Terminal 'apt-get update' && 'apt-get upgrade'"
 echo ""
 echo "    4. I want to see the details of my system"
 echo ""
 echo "    5. I want to see what is the model of the video card and which driver (driver) uses"
 echo ""
 echo "    6. I want to see information about the network card and driver (driver) that is used"
 echo ""
 echo "    7. I want to see how much GB has written the disc (Useful for hard disks (eg SSD)"
 echo ""
 echo "    8. I want to see the number of packets as well as libraries - dependencies of system installed"
 echo ""
 echo "    9. I want to see the processor CPU information"     
 echo ""
 echo "   10. I want to see the information of RAM and view the size of memory in gigabyte and viewing Swap in use"      
 echo ""
 echo "   11. I want to see the partitions on my disk for Ubuntu 'swap, home, boot etc; and the space used"  
 echo ""
 echo "   12. I want to see the information of pci / usb / audio / system drivers devices " 
 echo ""
 echo "   13. View of TCP / UDP ports" 
 echo ""
 echo "   14. Show services (services) Computer" 
 echo ""
 echo "   15. I want to find a file/s and the folder where is are"  
 echo "" 
 echo "   16. I want to see what programs are running at the moment and their dependencies"  
 echo "" 
 echo "   0.Exit" 
 echo " Click on your choice below"
       read selection   
done #end of check correct entry
#create logfile for file-'s path
 if [ "$selection" = "15" ] ; then
    echo "">file-path-information
 fi 
boolean=true #accessory variable 
###########################
##start main loop
while [ "$boolean" = "true" ] 
do #start loop

 if [ "$selection" = "1" ] || [ "$answer" = "1" ] ; then
#start update
	  echo "You perform an update and system upgrade">update-upgrate-information # Write on logfile
    sudo apt-get update #run command
    echo "Please expected as the process record in the file"
    echo "" >>update-upgrate-information
    echo "### apt update output message ###" >>update-upgrate-information
    echo "" >>update-upgrate-information
    echo "" >>update-upgrate-information
    sudo apt-get update >>update-upgrate-information #write on logfile the command output
 #end update 
 ##############  
#start upgrade
    sudo apt-get upgrade  #run command
    echo "Please expected as the process record in the file"
    echo "" >>update-upgrate-information
    echo "### apt upgrade output message ###" >>update-upgrate-information
    echo "" >>update-upgrate-information
    sudo apt-get upgrade >>update-upgrate-information
    echo "" >>update-upgrate-information
    echo "" >>update-upgrate-information
    sudo apt-get autoremove  #run command
    echo "Please expected as the process record in the file"
    echo "" >>update-upgrate-information
    echo "### apt-get autoremove output message ###" >>update-upgrate-information
    echo "" >>update-upgrate-information
    sudo apt-get autoremove >>update-upgrate-information
    sel1="1" 
    clear   
   else
    if [ "$selection" = "2" ] || [ "$answer" = "2" ] ; then
#start clean Ubuntu
	  echo "You make clean the system and the old cores">clean-information # Write on logfile
    sudo apt-get --purge autoremove #run command
    sudo apt-get autoremove  #run command
    sudo apt-get autoclean  #run command
    sudo apt-get clean  #run command
    sudo apt-get purge $(dpkg -l | awk '/^rc/ { print $2 }') #run command
    echo "The youngest core in use is the following:" && uname -rm #run command
    echo "Please expected as the process record in the file"
    echo "" >>clean-information
    echo "### apt-get --purge autoremove output message ###" >>clean-information
    echo "" >>clean-information
    sudo apt-get --purge autoremove >>clean-information #write on logfile the command output
    echo "">>clean-information
    echo "### apt-get autoremove output message ###" >>clean-information
    echo "" >>clean-information
    sudo apt-get autoremove >>clean-information #write on logfile the command output
    echo "">>clean-information
    echo "### apt-get autoclean  output message ###" >>clean-information
    echo "" >>clean-information
    sudo apt-get autoclean >>clean-information #write on logfile the command output
    echo "">>clean-information
    echo "" >>clean-information
    echo "">>clean-information
    echo "### apt-get purge output message ###" >>clean-information
    echo "" >>clean-information
    sudo apt-get purge $(dpkg -l | awk '/^rc/ { print $2 }')>>clean-information #write on logfile the command output
    echo "" >>clean-information
    echo "" >>clean-information
    echo "### The youngest core in use is the following:">>clean-information
    echo "">>clean-information
    uname -rm >>clean-information
    sel2="2"
    clear
   else
     if [ "$selection" = "3" ] || [ "$answer" = "3" ] ; then 
#start clean terminal Ubuntu
	echo "You make clean the terminal (~ Terminal ~) Repositories">terminal-fix-information #write on logfile
      sudo rm -rf /var/lib/apt/lists/* #run command
      sudo apt update #run command 
      sudo dpkg --configure -a #run command 
      sudo apt update #run command
      sudo apt-get install -f #run command       
    echo "">>terminal-fix-information
    echo "" >>terminal-fix-information
    sel3="3"
    clear 
#end clean terminal Ubuntu
else 
 if [ "$selection" = "4" ] || [ "$answer" = "4" ] ; then 
#start system information
	  echo "### The system information listed below ###">system-hardware-information #write on logfile
    echo "Please expected as the process record in the file[open the log]"
    echo "">>system-hardware-information
    echo "" >>system-hardware-information
    sudo dmidecode >>system-hardware-information
    sel4="4"
    clear
#end system information
 else
   if [ "$selection" = "5" ] || [ "$answer" = "5" ] ; then 
#start GPU card+driver information
	  echo "### Card information graphics and the driver (driver) listed below ###">graphics-information #write on logfile
    echo "">>graphics-information
    echo "">>graphics-information
    lspci -nnk | grep -iA2 vga >>graphics-information
    sel5="5"
    clear
 #GPU card+driver information 
 else
  if [ "$selection" = "6" ] || [ "$answer" = "6" ] ; then 
#start Network card+driver information
	  echo "### Card information graphics and the driver (driver) listed below ###">network-card-information #write on logfile
    echo ""
    echo ""
    lspci -nnk | grep -iA2 net >>network-card-information
    sel6="6"
    clear 
 #Network card+driver information 
 else
     if [ "$selection" = "7" ] || [ "$answer" = "7" ] ; then 
#start GB writes on disk information
	  echo "### Information on the number of GB that wrote the album listed below ###">write-gb-disk #write on logfile
    echo ""
    echo ""
    devices=$(df | grep "^/" | awk '{print $1}') && echo $devices  &&  for i in $devices ; do sudo tune2fs -l $i | awk '/^Lifetime\ writes/' ; done >>write-gb-disk
    sel7="7"
    clear 
 #end GB writes on disk information
 else
   if [ "$selection" = "8" ] || [ "$answer" = "8" ] ; then 
#start how much packages system have
    dpkg --get-selections >packages-installed-information
    wc -l packages-installed-information >>packages-installed-information
    sel8="8"
    clear 
 #end of how much packages system have;
 else
 if [ "$selection" = "9" ] || [ "$answer" = "9" ] ; then 
#cpu information
    cat /proc/cpuinfo >cpu-information
    sel9="9"
    clear
 #cpu information
 else
 if [ "$selection" = "10" ] || [ "$answer" = "10" ] ; then 
    #ram-swap information
    cat /proc/meminfo >ram-swap-information
    echo "">>ram-swap-information
    echo "">>ram-swap-information
    echo "How much Ram is currently being used">>ram-swap-information
    echo "">>ram-swap-information
    echo "">>ram-swap-information
    free -g >>ram-swap-information
    sel10="10"
    clear  
#ram-swap information
else
 if [ "$selection" = "11" ] || [ "$answer" = "11" ] ; then  
#partition information
    sudo df -HT>partitions-information
    sel11="11"
    clear  
#partition information   
 else
  if [ "$selection" = "12" ] || [ "$answer" = "12" ] ; then  
#pci information
    echo"PCI device">pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    lspci>>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"USB device">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    lsusb >>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"Audio device">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audion-system_drivers-information
    echo"">>pci-usb-audion-system_drivers-information
    lspci | grep -i audio >>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"System drivers">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    echo"">>pci-usb-audio-system_drivers-information
    sudo lsmod >>pci-usb-audio-system_drivers-information    
    sel12="12"
    clear  
#pci-usb-audio-system_drivers information
 else
   if [ "$selection" = "13" ] || [ "$answer" = "13" ] ; then  
#tcp/udp information
    echo "#####TCP#####">Tcp-udp-information
    echo"">>Tcp-udp-information
    echo"">>Tcp-udp-information
    echo"">>Tcp-udp-information
    sudo ss -t -a>>Tcp-udp-information
    echo"">>Tcp-udp-information
    echo"">>Tcp-udp-information
    echo"#####UDP#####">>Tcp-udp-information
    echo"">>Tcp-udp-information
    echo"">>Tcp-udp-information
    echo"">>Tcp-udp-information
    sudo ss -u -a>>Tcp-udp-information
    sel13="13"
    clear  
#tcp/udp information
else
  if [ "$selection" = "14" ] || [ "$answer" = "14" ] ; then  
#services information
    sudo service --status-all>services-information
    sel14="14"
    clear  
#services information
else 
   if [ "$selection" = "15" ] || [ "$answer" = "15" ] ; then  
#file road information
echo "  Here you can use the special characters <wildcard> for file search"
echo "  The *, signifying that it matches any character eg my.f*.* =my.file.doc (all files with first char F and extension)"
echo "  The ? which suggests that it matches any single character eg m?.f???.d?? =my.file.doc"
echo "  Below enter a file name to search"
read fipath
    echo"">>file-path-information
    echo"">>file-path-information
    locate -b '\$fipath' $fipath>>file-path-information
    echo"">>file-path-information
    echo"">>file-path-information
    sel15="15"
  echo ""
  echo "  If you want to look for some other file, press the 1 below or any other key to exit"
   read check
   clear
while [ "$check" = "1" ] 
do
  echo "  Below enter a file name to search"
    read fipath
    echo"">>file-path-information
    echo"">>file-path-information
    locate -b '\$fipath'>>file-path-information
    echo"">>file-path-information
    echo"">>file-path-information
    echo ""
    echo "  If you want to look for some other file, press the 1 below or any other key to exit"
       read check
done ##
#file road information
else
   if [ "$selection" = "16" ] || [ "$answer" = "16" ] ; then  
#realtime programm running information
    sudo pstree>programm-running-information
    sel16="16"
    clear  
#realtime programm running information

  

##########     
 fi #1
 fi #2
 fi #3
 fi #4
 fi #5
 fi #6
 fi #7
 fi #8
 fi #9
 fi #10
 fi #11
 fi #12
 fi #13
 fi #14
 fi #15
 fi #16
 #########
 
 selection="" #kill that var for not issues exist
 #check what done;
 if [ "$sel1" = "1" ] ; then 
    hxo1="    1. Updating - Upgrading [EXECUTED open the logfile]" 
  else
    hxo1="    1. Updating - Upgrading"
  fi
  
  if [ "$sel2" = "2" ] ; then 
     hxo2="   2. I want to  clean the system and also clean the old cores [EXECUTED open the logfile]"
  else
     hxo2="   2. I want to  clean the system and also clean the old cores" 
  fi
   if [ "$sel3" = "3" ] ; then 
     hxo3="   3. I have a problem then i run those commands on Terminal 'apt-get update' && 'apt-get upgrade' [EXECUTED open the logfile]"
  else
     hxo3="   3, I have a problem then i run those commands on Terminal 'apt-get update' && 'apt-get upgrade'" 
  fi  
  
  if [ "$sel4" = "4" ] ; then 
     hxo4="   4. I want to see the details of my system [EXECUTED open the logfile]"
  else
     hxo4="   4. I want to see the details of my system" 
  fi  
  
  if [ "$sel5" = "5" ] ; then 
     hxo5="   5. I want to see what is the model of the video card and which driver (driver) uses [EXECUTED open the logfile]"
  else
     hxo5="   5. I want to see what is the model of the video card and which driver (driver) uses" 
  fi  
  
  if [ "$sel6" = "6" ] ; then 
     hxo6="   6. I want to see information about the network card and driver (driver) that is used [EXECUTED open the logfile]"
  else
     hxo6="   6. I want to see information about the network card and driver (driver) that is used" 
  fi 
  
  if [ "$sel7" = "7" ] ; then 
     hxo7="   7. I want to see how much GB has written the disc (Useful for hard disks (eg SSD) [EXECUTED open the logfile]"
  else
     hxo7="   7. I want to see how much GB has written the disc (Useful for hard disks (eg SSD)" 
  fi   
  
  if [ "$sel8" = "8" ] ; then 
     hxo8="   8. I want to see the number of packets as well as libraries - dependencies of system installed [EXECUTED open the logfile]"
  else
     hxo8="   8. I want to see the number of packets as well as libraries - dependencies of system installed" 
  fi 
  
  if [ "$sel9" = "9" ] ; then 
     hxo9="   9. I want to see the processor CPU information [EXECUTED open the logfile]"
  else
     hxo9="   9. I want to see the processor CPU information" 
  fi  
  
  if [ "$sel10" = "10" ] ; then 
     hxo10="   10. I want to see the information of RAM and view the size of memory in gigabyte and viewing Swap in use [EXECUTED open the logfile]"
  else
     hxo10="   10. I want to see the information of RAM and view the size of memory in gigabyte and viewing Swap in use" 
  fi  
  
  if [ "$sel11" = "11" ] ; then 
     hxo11="   11. I want to see the partitions on my disk for Ubuntu 'swap, home, boot etc; and the space used [EXECUTED open the logfile]"
  else
     hxo11="   11. I want to see the partitions on my disk for Ubuntu 'swap, home, boot etc; and the space used" 
  fi   
  
    if [ "$sel12" = "12" ] ; then 
     hxo12="   12. I want to see the information of pci / usb / audio / system drivers devices [EXECUTED open the logfile]"
  else
     hxo12="   12. I want to see the information of pci / usb / audio / system drivers devices" 
  fi  
  
    if [ "$sel13" = "13" ] ; then 
     hxo13="   13. View of TCP / UDP ports [EXECUTED open the logfile]"
  else
     hxo13="   13. View of TCP / UDP ports" 
  fi  
 
    if [ "$sel14" = "14" ] ; then 
     hxo14="   14. Show services (services) Computer [EXECUTED open the logfile]"
  else
     hxo14="   14. Show services (services) Computer" 
  fi   
  
    if [ "$sel15" = "15" ] ; then 
     hxo15="   15. I want to find a file/s and the folder where is are [EXECUTED open the logfile]"
  else
     hxo15="   15. I want to find a file/s and the folder where is are" 
  fi  

    if [ "$sel16" = "16" ] ; then 
     hxo16="   16. I want to see what programs are running at the moment and their dependencies [EXECUTED open the logfile]"
  else
     hxo16="   16. I want to see what programs are running at the moment and their dependencies"  
 
  fi    
    clear 
    
 #end of check what done;   
 echo "" 
 echo "" 
 echo "Select whether you want to do something else[press the button of your choice]"
 echo ""
 echo "$hxo1"
 echo ""
 echo "$hxo2"
 echo ""
 echo "$hxo3"
 echo ""
 echo "$hxo4"
 echo ""
 echo "$hxo5"
 echo ""
 echo "$hxo6"
 echo ""
 echo "$hxo7"
 echo ""
 echo "$hxo8"
 echo ""
 echo "$hxo9"
 echo ""
 echo "$hxo10"
 echo ""
 echo "$hxo11"
 echo ""
 echo "$hxo12"
 echo ""
 echo "$hxo13"
 echo ""
 echo "$hxo14"
 echo ""
 echo "$hxo15"
 echo ""
 echo "$hxo16"
 echo "" 
 echo "0.Exit"
 echo ""
 echo "Click on your choice below if you want to continue or 0 to exit"
  read answer
  #check for correct entry 
 
while (("$answer" <= 0 )) || (("$answer" > 16 ))
 do
  
  if [ "$answer" = "0" ] ; then
     exit
  fi 
      clear
       echo "You have given the wrong command. Please type the right choice"
       echo ""
       echo "$hxo1"
       echo ""
       echo "$hxo2"
       echo ""
       echo "$hxo3"
       echo ""
       echo "$hxo4"
       echo ""
       echo "$hxo5"
       echo ""
       echo "$hxo6"
       echo ""
       echo "$hxo7"
       echo ""
       echo "$hxo8"
       echo ""
       echo "$hxo9"
       echo ""
       echo "$hxo10"
       echo ""
       echo "$hxo11"
       echo ""
       echo "$hxo12"
       echo ""
       echo "$hxo13"
       echo ""
       echo "$hxo14"
       echo ""
       echo "$hxo15"
       echo ""
       echo "$hxo16"
       echo "" 
       echo "0.Exit"
       echo ""
       echo "Click on your choice below if you want to continue or 0 to exit"
        read answer
done #end of check correct entry          

done #end loop




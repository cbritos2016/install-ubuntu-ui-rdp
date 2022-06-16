# ========= SCRIPT STARTS ON THE LINE IMMEDIATELY BELOW WHICH READS: #!/bin/bash ============
#!/bin/bash

function run-cmd ()
{
 echo ""
 echo ""
 echo "-----------------------------------------------------------------"
 echo " About to run : $1"
 echo "-----------------------------------------------------------------"
 read -t 10 -p ""
 $1
 echo ""
 echo "-----------------------------------------------------------------"
 echo " Just finished running : $1"
 echo "-----------------------------------------------------------------"
}

# sample script


# sample script
run-cmd "sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target"
run-cmd "sudo systemctl status sleep.target suspend.target hibernate.target hybrid-sleep.target"
run-cmd "sudo apt-get update"
run-cmd "sudo apt-get upgrade -y"
run-cmd "sudo apt-get install xfce4 -y"
run-cmd "sudo apt-get install xfce4-goodies -y"

run-cmd "sudo apt-get install xrdp -y"

run-cmd "sudo echo xfce4-session | sudo tee /root/.xsession"
run-cmd "sudo echo xfce4-session | sudo tee /home/ubuntu/.xsession"
run-cmd "sudo apt-get install firefox -y"
run-cmd "sudo apt-get install gzip -y"
run-cmd "sudo apt-get install gedit -y"
run-cmd "sudo apt-get install virtualbox -y"
run-cmd "sudo apt install virtualbox-ext-pack -y"
run-cmd "sudo apt-get install stacer -y"
run-cmd "sudo passwd ubuntu" 
run-cmd "sudo passwd root"
run-cmd "sudo ufw status"
run-cmd "sudo ufw allow ssh"
run-cmd "sudo ufw enable"
run-cmd "sudo ufw status"

#---------------------------------------------------------------------------------
# The following packages are optional, I use them to help backing up the server #---------------------------------------------------------------------------------
run-cmd "sudo apt-get install timeshift -y"
run-cmd "sudo apt-get install gnome-disk-utility -y"
run-cmd "sudo apt-get install filezilla -y"
run-cmd "sudo apt-get install rdesktop -y"
run-cmd "sudo apt-get install qdirstat -y"
#---------------------------------------------------------------------------------

run-cmd "sudo reboot"

# ========= SCRIPT END ============

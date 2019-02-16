

allow docker access

    ubuntu@car-browsers:~$ sudo groupadd docker
    ubuntu@car-browsers:~$ sudo gpasswd -a $USER docker

    ubuntu@car-browsers:~$ sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
    ubuntu@car-browsers:~$ sudo chmod g+rwx "/home/$USER/.docker" -R

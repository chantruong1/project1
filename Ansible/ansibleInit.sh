#to connect to jump box front Gitbash on my pc ip of jumpbox listed
ssh azureuser@13.66.173.135 	

#to update
apt-get update

#to install docker
sudo apt install docker.io		

#to check status of docker
sudo systemctl status docker		

#to start docker
sudo systemctl start docker		

#to pull a container
sudo docker pull cyberxsecurity/ubuntu:bionic bash		

#to list containers
sudo docker container list -a		

#to start Xcontainer
sudo docker start Xcontainer		

#to attach to Xcontainer
sudo docker attach Xcontainer	

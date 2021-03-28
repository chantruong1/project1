# project1
New Repository Project1
# project1
New Repository Project1
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

project1/Diagrams/network.png

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the file may be used to install only certain pieces of it, such as Filebeat.

  - filebeat playbook.yml

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly efficienct, in addition to restricting access to the network.
-  What aspect of security do load balancers protect? They protect the servers. What is the advantage of a jump box? Advantage being able to access VM remotely and able to run Ansible/Docker.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the traffic and system logs.
- What does Filebeat watch for? monitors log files which has been changed.
- What does Metricbeat record? Records the metric and statistics and monitors performance

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function  | IP Address | Operating System |
|----------|---------- |------------|------------------|
| Jump Box | Gateway   | 10.0.0.4   | Linux            |
| Elk VM   | Serverless| 10.1.1.5   | Windows          |
| Web VM 1 | Server    | 10.0.0.5   | Windows          |
| Web VM 2 | Server    | 10.0.0.6   | Windows          |


### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the allowed machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 73.37.140.144

Machines within the network can only be accessed by JumpBox.
- Which machine did you allow to access your ELK VM? JumpBox. What was its IP address? 10.0.0.4

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box |     No              | 73.37.140.144        |
|          |                     |                      |
|          |                     |                      |


### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- What is the main advantage of automating configuration with Ansible? Allows productivity to be gained.

The playbook implements the following tasks:
- Explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...root@0e199a5656a7:/etc/ansible# cp pentest.yml elk.yml	- to get proper format
- ...root@0e199a5656a7:/etc/ansible# nano elk.yml		- edit to install
- ...root@0e199a5656a7:/etc/ansible# ansible-playbook elk.yml	- run the playbook
	

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)
	10.1.15	= elk vm
root@0e199a5656a7: ssh azureuser@10.1.1.5
azureuser@ELK-VM:~$ sudo docker ps


### Target Machines & Beats

This ELK server is configured to monitor the following machines:
- webVM1 webVM2
We have installed the following Beats on these machines:
- Specify which Beats you successfully installed. Filebeat and Metricbeat

These Beats allow us to collect the following information from each machine:
- In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._
	filebeat- log data and monitors throughput
	metricbeat- statistics, able to display in a scale with more detail
  
  
### Using the Playbook

In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the pentest.yml file to elk.yml.
- Update the elk.yml file to include what to download,install,run-/etc/ansible# ansible-playbook elk.yml	
- Run the playbook, and navigate to http://52.184.155.123:5601/app/kibana to check that the installation worked as expected.

 Answer the following questions to fill in the blanks:
- _Which file is the playbook? yaml files. Where do you copy it? in nano
- _Which file do you update to make Ansible run the playbook on a specific machine? to the container thats attached to, then run /etc/ansible# ansible-playbook elk.yml
- _How do I specify which machine to install the ELK server on versus which to install Filebeat on?_ hosts
- _Which URL do you navigate to in order to check that the ELK server is running? http://52.184.155.123:5601/app/kibana

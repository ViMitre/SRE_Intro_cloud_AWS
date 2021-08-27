# SRE intro
## Cloud computing with AWS
### SDLC stages
#### Risk factors with SDLC stages
##### Monitoring

- Ease of use
- Flexibility
- Robustness
- Cost

**SRE introduction**
- What is the role of SRE?<br/>
Making the software development process and the end product more reliable, scalable. SRE-s can improve every stage of development and operations.


**Cloud computing with AWS** <br/> - What is Cloud Computing and the benefits of using it?<br/> Simply put, cloud computing is the delivery of computing services – including servers, storage, databases, 
networking, software, analytics and intelligence – over the Internet (“the cloud”) to offer faster innovation, flexible resources and economies of scale. <br/>Top benefits:
- Reduces cost
- Increases speed 
- Global scale
- Productivity
- Performance
- Reliability
- Security

**What is Amazon Web Services (AWS)**
- What is AWS and benefits of using it? <br/>
Amazon web service is a platform that offers flexible, reliable, scalable, easy-to-use and cost-effective cloud computing solutions. <br/>
Top benefits: <br/>
- Easy to use
- Flexible
- Cost-effective
- Reliable
- Scalable
- High performance
- Secure


**What is SDLC and stages of SDLC**
- What is SDLC and what are the stages of it? <br/>
SDLC is a systematic process for building software that ensures the quality and correctness of the software built.
![SDLC diagram](https://miro.medium.com/max/2500/0*qZ1JOnVpPokvnr69.jpg)
- Phase 1: Requirement collection and analysis
- Phase 2: Feasibility study
- Phase 3: Design
- Phase 4: Coding
- Phase 5: Testing
- Phase 6: Installation/Deployment
- Phase 7: Maintenance

**What are the Risk levels at each stage of SDLC?**
- Phase 1:  **Low**
- Phase 2:  **Low**
- Phase 3:  **Medium**
- Phase 4:  **High**
- Phase 5:  **High**
- Phase 6:  **High**
- Phase 7:  **High**


**What is on-prem cloud, hybrid cloud, multi-cloud?** <br/>
![Cloud vs On-prem](https://cdn2.hubspot.net/hubfs/2295024/blog-images/Cloud%20Vs%20On%20Premises.jpg)
![3 Clouds](https://miro.medium.com/max/1066/1*LRFaWc35HsUyKikmrzD9qw.png)
On-prem: the server is local, the owner is responsible for everything. This is the most private solution, it can also be the most expensive and the most difficult to maintain and secure.<br/>
Hybrid: part of data/service is local and part of it is on the cloud. It is a mixture of public and private solutions. <br/>
Multi-cloud: the server is running on multiple clouds at the same time, to minimize risks. In case one of the cloud services is compromised, it is still running on the other. This is the most secure solution. Multi-cloud can use both public or private clouds.

## Vagrant

Within the VagrantFile, add the following line:
config.vm.provision "shell", path: "provision.sh" <br/>
Create a file named "provision.sh" within the same directory as the "VagrantFile". The script should be:<br/>
<code>!#/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install nginx -y</code>

### Installing dependencies for the 'app'

- install npm: <code>sudo apt-get install npm -y</code>
- install python-software-properties: <code>sudo apt-get install python-software-properties -y</code>
- new source for nodejs: <code>curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -</code>
- install nodejs <code>sudo apt-get install nodejs -y</code>
- Change to the app directory
-  <code>sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_6.x | 
sudo -E bash - </code>
- Inside the app directory, install pm2 <code>sudo npm install pm2 -y</code>
- Install some relevant npm package files (app will throw an error if this is not done) <code>npm install</code>
- Run npm: <code>npm start</code>

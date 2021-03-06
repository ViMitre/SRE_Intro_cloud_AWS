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
![Tasks](img/vagrant_tasks.png)

Within the VagrantFile, add the following line:
config.vm.provision "shell", path: "provision.sh" <br/>
Create a file named "provision.sh" within the same directory as the "VagrantFile". The script should be:<br/>
`!#/bin/bash`

`sudo apt-get update -y`<br/>
`sudo apt-get upgrade -y`<br/>
`sudo apt-get install nginx -y`

### Installing dependencies for the 'app'

- install npm: `sudo apt-get install npm -y`
- install python-software-properties: `sudo apt-get install python-software-properties -y`
- new source for nodejs: `curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -`
- install nodejs `sudo apt-get install nodejs -y`
- Change to the app directory <br/>
`sudo apt-get install python-software-properties `<br/>
`curl -sL https://deb.nodesource.com/setup_6.x | `<br/>
`sudo -E bash - `
- Inside the app directory, install pm2 `sudo npm install pm2 -y`
- Install some relevant npm package files (app will throw an error if this is not done) `npm install`
- Run npm: `npm start`

### Adding environment variable
`export NAME=VALUE <br/>`
#### Making it permanent: adding it to the .bashrc file:
`echo "export NAME=VALUE" >> ~./bashrc `

### Configuring reverse proxy for nginx

`sudo nano /etc/nginx/sites-available/default`<br/>

```
location / {
    proxy_pass http://localhost:3000;
    proxy_http_version 1.1;
    proxy_set_header Upgrade $http_upgrade;
    proxy_set_header Connection 'upgrade';
    proxy_set_header Host $host;
    proxy_cache_bypass $http_upgrade;
    }
```

Restart nginx:

`sudo nginx -t <br/>
sudo systemctl restart nginx`

### On db machine:

`sudo nano /etc/mongod.conf`
<br/>
Change IP to 0.0.0.0 <br/>

Restart mongo:<br/>
`sudo systemctl restart mongod`<br/>
`sudo systemctl enable mongod`<br/>

Please see files <b>Vagrantfile</b> and <b>provision_app.sh/provision_db.sh</b> to see how all these steps have been automated.
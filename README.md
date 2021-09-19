# aws-ami-builder-packer

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This project is built to create an AMI that is pre-configured to host a PHP application in AWS EC2 instance.


### Built With

The project is built using,
* AWS resources
* Packer
* Ansible


<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

* Create a free tier AWS account.
* Create an IAM user with programmable access and make a note of the access and secret keys.

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/listentolearn/aws-ami-builder-packer
   ```
2. [Install Packer](https://www.packer.io/docs/install)
3. [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)



<!-- USAGE EXAMPLES -->
## Usage

### Creating AMI

The AMI is created using packer.

1. Set the environment vaiables: AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY
2. Update the default values of base_ami (amazon linux), subnet_id (with internet access) and security_group_id (allow port 22 from local ip) in the  variables.pkr.hcl to match the ones in your AWS account.
3. cd into the packer folder in the cloned repository.
4. Run the following commands in order
    - packer init .
    - packer fmt .
    - packer validate .
    - packer build .

This will provision the AMI in you AWS account.

Now, you can use the AMI to launch an EC2 instance which will have the web application pre configured and ready to use.

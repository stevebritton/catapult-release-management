# Catapult #
<img src="https://cdn.rawgit.com/devopsgroup-io/catapult/master/repositories/apache/_default_/svg/catapult.svg" alt="Catapult" width="200">

:boom: **Catapult** is a complete website and workflow management platform built from leading and affordable technologies.

:earth_americas: **Our mission** is to create a lean platform which orchestrates DevOps for website lifecycles with familiar technologies.

:rocket: **Our vision** is to afford organizations reduced risk and improved performance while lowering barriers to entry.

<br>

**Do you need a website and workflow management platform?** Here are a few triggers.

* Production is down.
* We need a test site.
* Why is this costing so much?
* Are my environments safe? 
* Is my website backed up?
* How quickly can I recover my website after a disaster?
* Can I easily scale my website for more traffic?
* What is my uptime?

**What makes Catapult different?**

* Catapult is an open source, complete, and distributed architecture
* Catapult only orchestrates - it is not required to run your infrastructure
* Catapult uses platform native shell scripting rather than configuration management tools such as Chef, Puppet, Salt
* Catapult overlays seamlessly with Scrum methodology
* Catapult features Gitflow workflow while enforcing exactly matching, branch-driven environments
* Catapult features a unique workflow model - upstream or downstream
* Catapult is highly cost effective

*Go ahead, give* **Catapult** *a* **shot**.



## Security Disclosure ##

Security is very important to us. If you have any issue regarding security, 
please disclose the information responsibly by sending an email to 
security@devopsgroup.io and not by creating a GitHub issue.



## Platform Overview ##

Catapult leverages the following technologies and technology services to implement key components of DevOps.

* **Configuration Management**
    * Catapult
    * Encryption - GnuPG
* **Source Code Management**
    * Catapult - Git (via GitHub)
    * Websites - Git (via GitHub or Bitbucket)
* **Environment Management**
    * Vagrant
* **Development Virtualization**
    * VirtualBox
* **Cloud Hosting**
    * DigitalOcean
* **DNS Management**
    * CloudFlare
* **Continuous Integration**
    * Automated Deployments - Bamboo
    * Build Server - Amazon Web Services (AWS)
* **Monitoring**
    * Server Resources and Uptime - New Relic Servers
    * Application - New Relic APM
    * Browser - New Relic Browsers
    * Website Uptime - New Relic Synthetics



## Supported Software ##

Catapult supports and intelligently manages the following software chosen from trending usage statistics from [BuiltWith](https://trends.builtwith.com/cms) and align with the [CentOS 7 trunk](http://mirror.centos.org/centos/7/os/x86_64/Packages/):

Software | Catapult Key | Released | End-of-Life
---------|--------------|----------|------------
CodeIgniter 2                     | `codeigniter2`         | January 28, 2011   | [October 31, 2015](http://forum.codeigniter.com/thread-61357.html)
CodeIgniter 3                     | `codeigniter3`         | March 30, 2015     | 
Drupal 6                          | `drupal6`              | February 13, 2008  | [February 24, 2016](https://www.drupal.org/drupal-6-eol)
Drupal 7                          | `drupal7`              | January 5, 2011    |
ExpressionEngine 3                | `expressionengine3`    | October 13, 2015   |
Joomla 3                          | `joomla3`              | September 27, 2012 |
Laravel 5.0.x                     | `laravel5`             | February 4, 2015   |
MediaWiki 1                       | `mediawiki1`           | December 8, 2003   |
Moodle 3                          | `moodle3`              | November 16, 2015  |
SilverStripe 3                    | `silverstripe3`        | June 29, 2012      |
SuiteCRM 7                        | `suitecrm7`            | October 21, 2013   |
WordPress >=3.5.2                 | `wordpress`            | June 17, 2010      |
WordPress 4                       | `wordpress`            | September 4, 2014  |
XenForo 1                         | `xenforo`              | March 8, 2011      |
Zend Framework 2.0.x <=2.4.x      | `zendframework2`       | September 5, 2012  |

Catapult additionally supports basic PHP projects that do not have a database requirement:

* PHP 5.4 compatible project


## Competition ##

The free market and competition is great - it pushes the envelope of innovation. Here, we compare similar platforms to shed light on where we are and we're headed. Catapult's approach is holistic, meaning, there are no optional features - the platform includes everything in its default state and its default state is the only state of the platform. Some platforms offer and support optional third-party features that need configured - these are excluded.

Platform Feature | Catapult | Pantheon | Acquia
-----------------|----------|----------|--------
Source                                        | Open                           | Closed                        | Closed
Subscription Feature Set                      | Bundled                        | Separated                     | Separated
Supported Software                            | Numerous                       | 2                             | 1
Minimum Bundled<br>Monthly Cost               | $40                            | $400                          | $134
Websites per Instance/Subscription            | Unlimited                      | 1                             | 1
Managed Workflow                              | Git Flow                       | :x:                           | :x:
Managed Workflow Model                        | Upstream or Downstream         | :x:                           | :x:
Agile Methodology Focus                       | Scrum                          | :x:                           | :x:
Managed Continuous Integration                | :white_check_mark:             | :x:                           | :x:
Environments                                  | LocalDev, Test, QC, Production | Multidev, Dev, Test, Live     | Dev Desktop, Dev, Stage, Prod
Exacting Configuration                        | :white_check_mark:             | :x:<sup>[2](#references)</sup>| :x:<sup>[3](#references)</sup>
Approach                                      | Virtual Machine                | Container                     | Virtual Machine
Data Center                                   | DigitalOcean and AWS           | Rackspace                     | AWS
Scaling                                       | Vertical                       | Horizontal                    | Vertical
Scaling Management                            | Manual                         | Automatic                     | Manual
Development Environment                       | Unlimited Local                | 5 Cloud                       | Unlimited Local
Development Environment Approach              | Exact                          | Exact                         | Similar
Dashboard - Control                           | CLI                            | CLI & Web                     | CLI & Web
Dashboard - Monitor                           | Web                            | Web                           | Web
Managed Public Git Website Repository Support | GitHub & Bitbucket             | :x:                           | :x:
Managed DNS                                   | CloudFlare                     | :x:                           | :x:
Managed Free HTTPS/SSL                        | CloudFlare                     | :x:                           | :x:
Managed Server Monitoring                     | New Relic                      | :x:                           | Proprietary
Managed Application Error Logs                | New Relic                      | Proprietary                   | Proprietary
Managed Application Performance Monitoring    | New Relic                      | :x:                           | :x:
Managed Browser Performance Monitoring        | New Relic                      | :x:                           | :x:
Managed Synthetic Monitoring                  | New Relic                      | :x:                           | :x:

See an error or have a suggestion? Email competition@devopsgroup.io - we appreciate all feedback.



## Table of Contents ##

- [Catapult](#catapult)
    - [Platform Overview](#platform-overview)
    - [Security Disclosure](#security-disclosure)
    - [Supported Software](#supported-software)
    - [Competition](#competition)
    - [Table of Contents](#table-of-contents)
- [Setup Catapult](#setup-catapult)
    - [Developer Setup](#developer-setup)
    - [Instance Setup](#instance-setup)
    - [Services Setup](#services-setup)
- [Setup Environments](#setup-environments)
    - [Provision Environments](#provision-environments)
    - [Configure Automated Deployments](#configure-automated-deployments)
- [Release Management](#release-management)
    - [Catapult Configuration](#catapult-configuration)
        - [Company](#company)
        - [Environments](#environments)
        - [Websites](#websites)
    - [Website Development](#website-development)
        - [Website Repositories](#website-repositories)
        - [Fresh Software Installs](#fresh-software-installs)
        - [Forcing www](#forcing-www)
        - [Database Migrations](#database-migrations)
        - [Refreshing Databases](#refreshing-databases)
        - [Connecting to Databases](#connecting-to-databases)
        - [Hotfixes](#hotfixes)
    - [Performance Testing](#performance-testing)
        - [Website Concurrency Maxiumum](#website-concurrency-maximum)
        - [Interpreting Apache AB Results](#interpreting-apache-ab-results)
    - [Disaster Recovery](#disaster-recovery)
        - [Server Rebuilding](#server-rebuilding) 
        - [Website Rollbacks](#website-rollbacks)
- [Compliance and Security](#compliance-and-security)
    - [Cloud Compliance](#cloud-compliance)
    - [Self Compliance](#self-compliance)
    - [HTTPS and SSL Certificates](#https-and-ssl-certificates)
    - [Security Breach Notification Laws](#security-breach-notification-laws)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
    - [Releases](#releases)
- [Community](#community)



# Setup Catapult #

Catapult requires a [Developer Setup](#developer-setup), [Instance Setup](#instance-setup), and [Services Setup](#services-setup) as described in the following sections.

**Please Note:**
* It is advised to turn off any antivirus software that you may have installed during setup and usage of Catapult - tasks such as forwarding ports and writing hosts files may be blocked.
* Virtualizaion must be enabled in the BIOS of the Developer's computer - follow [this how-to](https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/5/html/Virtualization/sect-Virtualization-Troubleshooting-Enabling_Intel_VT_and_AMD_V_virtualization_hardware_extensions_in_BIOS.html) to get started.

## Developer Setup ##

Catapult is controlled via Vagrant and the command line of a Developer's workstation - below is a list of required software that will need to be installed.

* OS X workstations: 100% compatabile and tested
* Linux workstations: 100% compatabile and tested
* Windows workstations: Currently limited support

1. **Vagrant**
    * **Using OS X?**
        1. Ensure Xcode Command Line Tools are installed by running `xcode-select --install` from Terminal
        2. Download and install the latest verson of Vagrant from https://www.vagrantup.com/downloads.html
    * **Using Windows?**
        1. Download and install the latest verson of Vagrant from https://www.vagrantup.com/downloads.html
    * **Using Linux (Debian, Ubuntu)?**
        1. Download the latest version of Vagrant respective to your architecture from https://releases.hashicorp.com/vagrant/ by running e.g. `wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb`
        2. Install Vagrant using dpkg e.g. `sudo dpkg --install vagrant_1.8.1_x86_64.deb`
        3. Install Network File System (NFS) `sudo apt-get install nfs-kernel-server`
    * **Using Linux (Fedora, Red Hat, Suse)?**
        1. Download the latest version of Vagrant respective to your architecture from https://releases.hashicorp.com/vagrant/ by running e.g. `wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.rpm`
        2. Install Vagrant using yum e.g. `sudo yum install vagrant_1.8.1_x86_64.rpm`
2. **VirtualBox**
    * **Using OS X?**
        1. Download and install the latest version of VirtualBox from https://www.virtualbox.org/wiki/Downloads
    * **Using Windows?**
        1. Download and install the latest version of VirtualBox from https://www.virtualbox.org/wiki/Downloads
    * **Using Linux (Debian, Ubuntu)?**
        1. Download and install the latest version of VirtualBox using Advanced Packaging Tool (APT) `sudo apt-get install virtualbox`
    * **Using Linux (Fedora, Red Hat, Suse)?**
        1. Download and install the latest version of VirtualBox using Yellowdog Updater, Modifed (yum) `sudo yum install virtualbox`
3. **GPG2**
    * **Using OS X?**
        1. Download and install GPG Suite from https://gpgtools.org
    * **Using Windows?**
        1. Download and install Gpg4win from http://gpg4win.org/download.html
    * **Using Linux?**
        1. GPG is included in the base distribution in most cases.
        1. If being prompted by the Passphrase GUI Agent, comment out 'use-agent' in ~/.gnupg/gpg.conf
4. **Git**
    * **Using OS X?**
        1. Git commandline is included in the base distribution in most cases.
        1. For a streamlined Git GUI, download and install SourceTree from https://www.sourcetreeapp.com/
    * **Using Windows?**
        1. Download and install SourceTree from https://www.sourcetreeapp.com/
    * **Using Linux?**
        1. Git commandline is included in the base distribution in most cases.
        1. For a streamlined Git GUI, download and install SmartGit from http://www.syntevo.com/smartgit/
5. **Terminal**
    * **Using OS X?**
        1. The terminal in the base distrubitions are 100% compatible.
    * **Using Windows?**
        1. Download and install Cygwin from https://cygwin.com/install.html
            * Make sure to install the openssh package
        1. Run all Vagrant commands from within the Cygwin terminal.
            * Make sure to open Cygwin terminal as Administrator by right-clicking and selecting "Open as Administrator"
    * **Using Linux?**
        1. The terminal in the base distrubitions are 100% compatible.


Having your team use the same tools is beneficial to streamlining your workflow - below is a list of recommended software tools.

1. **Sublime Text 3**
    1. Please download and install from http://www.sublimetext.com/3


## Instance Setup ##

Catapult is quick to setup. Fork the Github repository and start adding your configuration.

1. **Fork Catapult**
    1. Fork https://github.com/devopsgroup-io/catapult and clone via SourceTree or the git utility of your choice.
2. **Vagrant Plugins**
    1. Open your command line and cd into the newly cloned repository and install the following Vagrant plugins.
        1. `vagrant plugin install vagrant-aws`
            * [![Gem](https://img.shields.io/gem/dt/vagrant-aws.svg)](https://rubygems.org/gems/vagrant-aws)
        2. `vagrant plugin install vagrant-digitalocean`
            * [![Gem](https://img.shields.io/gem/dt/vagrant-digitalocean.svg)](https://rubygems.org/gems/vagrant-digitalocean) We maintain this project! [GitHub](https://github.com/smdahlen/vagrant-digitalocean)
        3. `vagrant plugin install vagrant-hostmanager`
            * [![Gem](https://img.shields.io/gem/dt/vagrant-hostmanager.svg)](https://rubygems.org/gems/vagrant-hostmanager) We maintain this project! [GitHub](https://github.com/smdahlen/vagrant-hostmanager)
        4. `vagrant plugin install vagrant-vbguest`
            * [![Gem](https://img.shields.io/gem/dt/vagrant-vbguest.svg)](https://rubygems.org/gems/vagrant-vbguest)
3. **SSH Key Pair**
    1. Create a *passwordless* SSH key pair - this will drive authentication for Catapult.
        1. For instructions please see https://help.github.com/articles/generating-ssh-keys/
        2. Place the newly created *passwordless* SSH key pair id_rsa and id_rsa.pub in the ~/secrets/ folder.
4. **GPG Key**
    1. Generate a GPG key - this will drive encryption for Catapult.
        1. NEVER SHARE THE KEY WITH ANYONE OTHER THAN YOUR TEAM.
        3. Spaces are not permitted and must be at least 20 characters.
        4. To create a strong key, please visit https://xkpasswd.net/
        5. Place your newly generated GPG key at `~/secrets/configuration-user.yml["settings"]["gpg_key"]`
        6. It is recommended to print a QR code of the key to distribute to your team, please visit http://educastellano.github.io/qr-code/demo/
        7. Remember! Security is 99% process and 1% technology.
5. **GPG Edit Mode**
    1. When **GPG Edit Mode** is enabled (disabled by default) the following files are encrypted using your **GPG Key**:
        1. ~/secrets/id_rsa as ~/secrets/id_rsa.gpg
        2. ~/secrets/id_rsa.pub as ~/secrets/id_rsa.pub.gpg
        3. ~/secrets/configuration.yml as ~/secrets/configuration.yml.gpg
    2. To enable **GPG Edit Mode**, set `~/secrets/configuration-user.yml["settings"]["gpg_edit"]` to true.
    3. Once gpg_edit is set to true and while on your fork's develop branch, run `vagrant status`, this will encrypt your configuration that you will then be able to commit and push safely to your public Catapult fork.



## Services Setup ##

Catapult uses several third-party services to pull everything off - below is a list of the required services and sign-up and configuration steps.

Service | Description | Monthly Cost
--------|-------------|-------------
**Cloud Hosting:** | |
DigitalOcean | Test Web Server | \*$5+
DigitalOcean | Test Database Server | \*$5+
DigitalOcean | QC Web Server | \*$5+
DigitalOcean | QC Database Server | \*$5+
DigitalOcean | Production Web Server | \*$5+
DigitalOcean | Production Database Server | \*$5+
**Repositories:** | |
Bitbucket | Private Repositories | Free
GitHub | Public Repositories | Free
**Continuous Integration:** | |
Amazon Web Services | Build Server | \*$0+
Bamboo | Continuous Integration | $10
**DNS:** | |
CloudFlare | Cloud DNS | Free
**Monitoring:** | |
New Relic | Application, Browser, Server, and *Synthetics Monitoring | Free [*No free tier beyond trial](#partnerships)
**Total** | | $40+
\* Depending on load, resources may need to be increased. However, a few websites with builds running irregularly will not incur over a couple dollars more per month.

1. **Cloud Hosting:**    
    1. **DigitalOcean** sign-up and configuration
        1. Create an account at http://digitalocean.com
           * [Free Stuff] Get a $10 credit and give us $25 once you spend $25 https://www.digitalocean.com/?refcode=6127912f3462
        2. Go to your DigitalOcean Applications & API Dashboard https://cloud.digitalocean.com/settings/api
            1. Create a Personal Access Token named "Vagrant" and place the token value at `~/secrets/configuration.yml["company"]["digitalocean_personal_access_token"]`
        3. Go to your DigitalOcean Security Dashboard https://cloud.digitalocean.com/settings/security
            1. Add a new SSH Key named "Vagrant" with your newly created id_rsa.pub from ~/secrets/id_rsa.pub key 
    2. **Amazon Web Services** (AWS) sign-up and configuration
        1. Create an account https://portal.aws.amazon.com/gp/aws/developer/registration
            * [Free Stuff] Receive Free Tier benefits for the first 12 months after signing up https://aws.amazon.com/ec2/pricing/
        2. Sign in to your new AWS console https://console.aws.amazon.com
        3. Go to your AWS Identity and Access Management (IAM) Users Dashboard https://console.aws.amazon.com/iam/home#users
            1. Create a "Catapult" user.
            2. Place the Access Key ID at `~/secrets/configuration.yml["company"]["aws_access_key"]`
            3. Place the Secret Access Key at `~/secrets/configuration.yml["company"]["aws_secret_key"]`
        4. Go to your AWS Identity and Access Management (IAM) Groups Dashboard https://console.aws.amazon.com/iam/home#groups
            1. Create a "Catapult" group.
            2. Attach the "AmazonEC2FullAccess" policy to the "Catapult" group.
        5. Go back to your AWS Identity and Access Management (IAM) Groups Dashboard https://console.aws.amazon.com/iam/home#groups
            1. Select your newly created "Catapult" group.
            2. Select Add Users to Group and add your newly created "Catapult" user.
        6. Go to your AWS EC2 Key Pairs Dashboard https://console.aws.amazon.com/ec2/home#KeyPairs
            1. Click Import Key Pair
            2. Add your newly created id_rsa.pub from ~/secrets/id_rsa.pub key
            3. Set the Key pair name to "Catapult"
        7. Go to your AWS EC2 Security Groups Dashboard https://console.aws.amazon.com/ec2/home#SecurityGroups
            1. Select the "default" Group Name
            2. Select the Inbound tab and click Edit
            3. Change Source to "Anywhere"
            4. Click Save
2. **Repositories:**    
    Bitbucket provides free private repositories and GitHub provides free public repositories, you will need to sign up for both. If you already have Bitbucket and GitHub accounts you may use them, however, it's best to setup a [machine user](https://developer.github.com/guides/managing-deploy-keys/#machine-users) if you're using Catapult with your team.
    1. **Bitbucket** sign-up and configuration
        1. Create an account at https://bitbucket.org
            1. Place the username (not the email address) that you used to sign up for Bitbucket at `~/secrets/configuration.yml["company"]["bitbucket_username"]`
            2. Place the password of the account for Bitbucket at `~/secrets/configuration.yml["company"]["bitbucket_password"]`
        2. Add your newly created id_rsa.pub from ~/secrets/id_rsa.pub key in https://bitbucket.org/account/user/`your-user-here`/ssh-keys/ named "Catapult"
    2. **GitHub** sign-up and configuration
        1. Create an account at https://github.com
            1. Place the username (not the email address) that you used to sign up for GitHub at `~/secrets/configuration.yml["company"]["github_username"]`
            2. Place the password of the account for GitHub at `~/secrets/configuration.yml["company"]["github_password"]`
        2. Add your newly created id_rsa.pub from ~/secrets/id_rsa.pub key in https://github.com/settings/ssh named "Catapult"
3. **Automated Deployments:**
    2. **Bamboo** sign-up and configuration
        1. Create a Bamboo Cloud account at https://www.atlassian.com/software/bamboo
        2. Sign in to your new custom Bamboo instance https://[your-name-here].atlassian.net
        3. Place your Bamboo base URL at `~/secrets/configuration.yml["company"]["bamboo_base_url"]`, the format should be https://[your-name-here].atlassian.net/builds/
        4. Place your Bamboo username (usually admin) at `~/secrets/configuration.yml["company"]["bamboo_username"]`
        5. Place your Bamboo password (usually admin) at `~/secrets/configuration.yml["company"]["bamboo_password"]`
        6. Click the settings gear from the top right in the header and select Elastic instances:
            1. Click Configuration from the left
            2. Click Edit configuration
                1. **Amazon Web Services configuration**
                    1. Set your AWS EC2 "Bamboo" Access Key ID and Secret Access Key from `~/secrets/configuration.yml["company"]["aws_access_key"]` and `~/secrets/configuration.yml["company"]["aws_secret_key"]`
                    2. Region: `US East (Northern Virginia)`
                2. **Automatic elastic instance management**
                    1. Elastic instance management: `Custom`
                    2. Idle agent shutdown delay: `10`
                    3. Allowed non-Bamboo instances: `1`
                    4. Maximum number of instances to start at once: `2`
                    5. Number of builds in queue threshold: `1`
                    6. Number of elastic builds in queue threshold: `1`
                    7. Average queue time threshold: `2`
                3. Click Save
        7. Click the settings gear from the top right in the header and select Elastic instances:
            1. Click Image configurations from the left
                1. Disable all of the elastic images
                2. Create elastic image configuration:
                    1. Name: `Catapult`
                    2. AMI ID: `ami-eb5b8080`
                    3. Instance type: `T2 Burstable Performance Micro`
                    4. Availability Zone: `Chosen by EC2`
                    5. Product: `Linux/UNIX`
                    6. Click Save
        8. Click Create > Create a new plan from the header:
            1. **Create Catapult Project and create TEST Plan**
                * *Project and build plan name*
                    1. Project > New Project
                    2. Project name: Catapult
                    3. Project key: CAT
                    4. Plan name: TEST
                    5. Plan key: TEST
                    6. Plan description:
                * *Link repository to new build plan*
                    1. Repository host: Other > None
            2. **Create QC Plan**
                * *Project and build plan name*
                    1. Project: Catapult
                    4. Plan name: QC
                    5. Plan key: QC
                    6. Plan description:
                * *Link repository to new build plan*
                    1. Repository host: Other > None
            2. **Create PROD Plan**
                * *Project and build plan name*
                    1. Project: Catapult
                    4. Plan name: PRODUCTION
                    5. Plan key: PROD
                    6. Plan description:
                * *Link repository to new build plan*
                    1. Repository host: Other > None
4. **DNS:**    
    1. **CloudFlare** sign-up and configuration
        1. Create a CloudFlare account at https://www.cloudflare.com
        2. Sign in to your new CloudFlare account
        3. Visit your My Account section at https://www.cloudflare.com/a/account/my-account and scroll down to your API Key and place the token value at `~/secrets/configuration.yml["company"]["cloudflare_api_key"]`
        4. Place the email address of the email address that you used to sign up for CloudFlare at `~/secrets/configuration.yml["company"]["cloudflare_email"]`
5. **Monitoring:**
    1. **New Relic** sign-up and configuration
        1. Create a New Relic account at http://newrelic.com/
            * [Free Stuff] Sign-up up for New Relic and get a Data Nerd shirt! http://newrelic.com/lp/datanerd
            * [Free Stuff] Refer Catapult and get a New Relic hoodie! http://newrelic.com/referral
        2. Sign in to your New Relic account
        3. Go to your Account Settings > Integrations > API keys.
        4. Generate and place your REST API key at `~/secrets/configuration.yml["company"]["newrelic_api_key"]`
        5. Generate and place your Admin API key at `~/secrets/configuration.yml["company"]["newrelic_admin_api_key"]`
        3. Go to your Account Settings > Account > Summary.
        5. Place your License key at `~/secrets/configuration.yml["company"]["newrelic_license_key"]`
6. **Verify Configuration:**    
    1. To verify all of the configuration that you just set, open your command line and cd into your fork of Catapult, then run `vagrant status`. Catapult will confirm connection to all of the Services and inform you of any problems.



# Setup Environments #

To start using Catapult you will need to [Provision Environments](#provision-environments) and [Configure Automated Deployments](#configure-automated-deployments).



## Provision Environments ##

Environment | LocalDev | Test | QC | Production
------------|----------|------|----|-----------
**Server Provider** | Locally via VirtualBox | Hosted via DigitalOcean | Hosted via DigitalOcean | Hosted via DigitalOcean
**Server Provisioning** | Manually via Vagrant | Manually via Vagrant | Manually via Vagrant | Manually via Vagrant

For each **Environment** you will need to:

* **Web Servers**
    * `vagrant up ~/secrets/configuration.yml["company"]["name"]-dev-redhat`
    * `vagrant up ~/secrets/configuration.yml["company"]["name"]-test-redhat`
    * `vagrant up ~/secrets/configuration.yml["company"]["name"]-qc-redhat`
    * `vagrant up ~/secrets/configuration.yml["company"]["name"]-production-redhat`
* **Database Servers**
    * `vagrant up ~/secrets/configuration.yml["company"]["name"]-dev-redhat-mysql`
    * `vagrant up ~/secrets/configuration.yml["company"]["name"]-test-redhat-mysql`
    * `vagrant up ~/secrets/configuration.yml["company"]["name"]-qc-redhat-mysql`
    * `vagrant up ~/secrets/configuration.yml["company"]["name"]-production-redhat-mysql`



## Configure Automated Deployments ##

Once the Web and Database Servers are up and running, it's then time to configure your Bamboo Catapult project's TEST, QC, and PROD plans.

1. Sign in to your new custom Bamboo instance https://[your-name-here].atlassian.net
2. Click Build > All build plans from the header:
3. From the Build Dashboard and under the Catapult project:
    * **Configure Catapult Project TEST Plan**
        1. Click the edit icon for the TEST plan
        2. From the Stages tab, select Default Job
        3. Remove all tasks that may have been added by default during initial setup
        4. Click Add task
            1. Search for SSH Task and select it
            2. Host: `~/secrets/configuration.yml["environments"]["test"]["servers"]["redhat"]["ip"]`
            3. Username: `root`
            4. Authentication Type: `Key without passphrase`
            5. SSH Key: `~/secrets/id_rsa`
            6. SSH command: `bash /catapult/provisioners/redhat/provision.sh "test" "https://github.com/[your-name-here]/catapult" "~/secrets/configuration-user.yml["settings"]["gpg_key"]" "apache"`
            7. Click Save
        5. Click Add task
            1. Search for SSH Task and select it
            2. Host: `~/secrets/configuration.yml["environments"]["test"]["servers"]["redhat_mysql"]["ip"]`
            3. Username: `root`
            4. Authentication Type: `Key without passphrase`
            5. SSH Key: `~/secrets/id_rsa`
            6. SSH command: `bash /catapult/provisioners/redhat/provision.sh "test" "https://github.com/[your-name-here]/catapult" "~/secrets/configuration-user.yml["settings"]["gpg_key"]" "mysql"`
            7. Click Save
    * **Configure Catapult Project QC Plan**
        1. Click the edit icon for the QC plan
        2. From the Stages tab, select Default Job
        3. Remove all tasks that may have been added by default during initial setup
        4. Click Add task
            1. Search for SSH Task and select it
            2. Host: `~/secrets/configuration.yml["environments"]["qc"]["servers"]["redhat"]["ip"]`
            3. Username: `root`
            4. Authentication Type: `Key without passphrase`
            5. SSH Key: `~/secrets/id_rsa`
            6. SSH command: `bash /catapult/provisioners/redhat/provision.sh "qc" "https://github.com/[your-name-here]/catapult" "~/secrets/configuration-user.yml["settings"]["gpg_key"]" "apache"`
            7. Click Save
        5. Click Add task
            1. Search for SSH Task and select it
            2. Host: `~/secrets/configuration.yml["environments"]["qc"]["servers"]["redhat_mysql"]["ip"]`
            3. Username: `root`
            4. Authentication Type: `Key without passphrase`
            5. SSH Key: `~/secrets/id_rsa`
            6. SSH command: `bash /catapult/provisioners/redhat/provision.sh "qc" "https://github.com/[your-name-here]/catapult" "~/secrets/configuration-user.yml["settings"]["gpg_key"]" "mysql"`
            7. Click Save
    * **Configure Catapult Project PRODUCTION Plan**
        1. Click the edit icon for the PRODUCTION plan
        2. From the Stages tab, select Default Job
        3. Remove all tasks that may have been added by default during initial setup
        4. Click Add task
            1. Search for SSH Task and select it
            2. Host: `~/secrets/configuration.yml["environments"]["production"]["servers"]["redhat"]["ip"]`
            3. Username: `root`
            4. Authentication Type: `Key without passphrase`
            5. SSH Key: `~/secrets/id_rsa`
            6. SSH command: `bash /catapult/provisioners/redhat/provision.sh "production" "https://github.com/[your-name-here]/catapult" "~/secrets/configuration-user.yml["settings"]["gpg_key"]" "apache"`
            7. Click Save
        5. Click Add task
            1. Search for SSH Task and select it
            2. Host: `~/secrets/configuration.yml["environments"]["production"]["servers"]["redhat_mysql"]["ip"]`
            3. Username: `root`
            4. Authentication Type: `Key without passphrase`
            5. SSH Key: `~/secrets/id_rsa`
            6. SSH command: `bash /catapult/provisioners/redhat/provision.sh "production" "https://github.com/your-name-here/catapult" "~/secrets/configuration-user.yml["settings"]["gpg_key"]" "mysql"`
            7. Click Save



# Release Management #

Catapult follows Gitflow for its configuration and development model - each environment runs a specific branch and changesets are introduced into each environment by pull requests from one branch to the next.

<img src="https://www.atlassian.com/git/images/tutorials/collaborating/comparing-workflows/gitflow-workflow/05.svg" alt="Gitflow" width="600">
<sup>[1](#references)</sup>


Environment | LocalDev | Test | QC | Production
------------|----------|------|----|-----------
**Running Branch**                                       | *develop*                                                   | *develop*                                                                                                    | *release*                                                      | *master*
**Deployments**                                          | Manually via `vagrant provision`                            | Automatically via Bamboo (new commits to **develop**)                                                        | Automatically via Bamboo (new commits to **release**)          | Manually via Bamboo
**Testing Activities**                                   | Component Test                                              | Integration Test, System Test                                                                                | Acceptance Test, Release Test                                  | Operational Qualification
**Scrum Activity**                                       | Sprint Start: Development of User Stories                   | Daily Scrum                                                                                                  | Sprint Review                                                  | Sprint End: Accepted Product Release
**Scrum Roles**                                          | Development Team                                            | Scrum Master, Development Team, Product Owner (optional)                                                     | Scrum Master, Development Team, Product Owner                  | Product Owner
**Downstream Software Workflow - Database**              | Restore from **develop** ~/_sql folder of website repo      | Restore from **develop** ~/_sql folder of website repo                                                       | Restore from **release** ~/_sql folder of website repo         | Auto-commit one backup per day (up to 500MB or 1) to **master** ~/_sql folder of website repo during deploy
**Downstream Software Workflow - Untracked File Stores** | rsync file stores from **Production**                       | rsync file stores from **Production**                                                                        | rsync file stores from **Production**                          | Pull file stores from **master**
**Downstream Software Workflow - Tracked File Stores**   | Pull file stores from **develop**                           | Pull file stores from **develop**                                                                            | Pull file stores from **release**                              | Auto-commit file stores (up to 750MB each) to **master** of website repo during deploy
**Upstream Software Workflow - Database**                | Restore from **develop** ~/_sql folder of website repo      | Auto-commit one backup per day (up to 500MB or 1) to **develop** ~/_sql folder of website repo during deploy | Restore from **release** ~/_sql folder of website repo         | Restore from **master** ~/_sql folder of website repo
**Upstream Software Workflow - Untracked File Stores**   | rsync file stores from **Test**                             | Pull file stores from **develop**                                                                            | rsync file stores from **Test**                                | rsync file stores from **Test**
**Upstream Software Workflow - Tracked File Stores**     | Pull file stores from **develop**                           | Auto-commit file stores (up to 750MB each) to **develop** of website repo during deploy                      | Pull file stores from **release**                              | Pull file stores from **master**

**NOTE:** Catapult will automatically pull **master** into **develop** when in the **Downstream Software Workflow** direction.

## Catapult Configuration ##

All instance specific configuration is stored in ~/secrets/configuration.yml and encrypted as ~/secrets/configuration.yml.gpg. There are three main sections - [Company](#company), [Environments](#environments), and [Websites](#websites).

### Company ###

The exclusive Company entry contains top-level global credentials and company information - all of which will be configured during [Setup Catapult](#setup-catapult).

* `name:`
    * required: yes
        * Your company's name or your name
* `email:`
    * required: yes
        * The primary contact email
* `timezone_redhat:`
    * required: yes
        * Your company's timezone in tz database format
        * See [this list](https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Virtualization/3.1/html/Developer_Guide/appe-REST_API_Guide-Timezones.html) for a list of valid timezones
* `timezone_windows:`
    * required: yes
        * Your company's timezone in Windows Standard Format
        * See [this list](https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Virtualization/3.1/html/Developer_Guide/appe-REST_API_Guide-Timezones.html) for a list of valid timezones

### Environments ###

The setup- and maintenance-free Environments entries contain environment configurations such as IP addresses and system credentials - all of which are automatically set during [Setup Catapult](#setup-catapult) and [Setup Environments](#setup-environments).

### Websites ###

Adding websites to Catapult is driven by simple configuration. After establishing a repository at GitHub or Bitbucket, simply add entries to configuration.yml. The entries must be ordered alphabetically by domain name and all entries exist under the single `websites:` key as reflected in this example:
```
websites:
  apache:
  - domain: devopsgroup.io
    repo: git@github.com:devopsgroup-io/devopsgroup-io.git
  - domain: example.com
    repo: git@github.com:example-company/example.com.git
```

The following options are available:

* `domain:`
    * required: yes
    * example: `domain: example.com`
        * the Production canonical domain name without `www.`
            * one subdomain level is supported (subdomain.example.com)
        * this drives the domains of LocalDev (via hosts file) and Test, QC, Production (via CloudFlare)
            * dev.example.com, test.example.com, qc.example.com, example.com
* `domain_tld_override:`
    * required: no
    * example: `domain_tld_override: mycompany.com`
        * a domain name under your [name server authority](https://en.wikipedia.org/wiki/Domain_Name_System#Authoritative_name_server) to append to the top-level-domain (e.g. `.com`)
            * useful when you cannot or do not wish to host the Test/QC website at the `domain`
        * appends the `domain_tld_override` for Environments
            * dev.example.com.mycompany.com, test.example.com.mycompany.com, qc.example.com.mycompany.com, example.com.mycompany.com
        * PLEASE NOTE: When removing this option from a website with `software:`, you need to manually replace URLs in the database respective to the `software_workflow:` option.
            * ie `vagrant ssh mycompany.com-test-redhat-mysql`
            * `php /catapult/provisioners/redhat/installers/wp-cli.phar --allow-root --path="/var/www/repositories/apache/example.com/(webroot if applicable)" search-replace ":\/\/(www\.)?(dev\.|test\.)?(example\.com\.mycompany\.com)" "://example.com" --regex`
* `force_auth:`
    * required: no
    * example: `force_auth: letmein`
        * forces [HTTP basic authentication](https://en.wikipedia.org/wiki/Basic_access_authentication) in Test, QC, and Production (see `force_auth_exclude`)
        * `letmein` is both the username and password
* `force_auth_exclude:`
    * required: no
    * dependency: `force_auth:`
    * example: `force_auth_exclude: ["production"]`
        * array of select environments ["test","qc","production"] to exclude from the `force_auth` option
* `force_https:`
    * required: no
    * `force_https: true`
        * rewrites all http traffic to https
        * subdomains are not supported as limited by CloudFlare
        * causes an unsigned cert error in LocalDev
* `repo:`
    * required: yes
    * example: `repo: git@github.com:devopsgroup-io/devopsgroup-io.git`
        * GitHub and Bitbucket over SSH are supported, HTTPS is not supported
* `software:`
    * required: no
    * description: manages many aspects of software respective to each environment for websites with supported software types
        * maintains softare database config file
        * manages tracked and untracked software file stores intelligently via git and rsync
        * manages permissions of software file store containers
        * manages software database backups and restores intelligently via git
        * manages software url references in database
        * manages software admin account integrity
        * manages software database operations
    * `software: codeigniter2`
    * `software: codeigniter3`
    * `software: drupal6`
    * `software: drupal7`
    * `software: expressionengine3`
    * `software: joomla3`
    * `software: laravel5`
    * `software: mediawiki1`
    * `software: moodle3`
    * `software: silverstripe3`
    * `software: suitecrm7`
    * `software: wordpress`
    * `software: xenforo`
    * `software: zendframework2`
* `software_dbprefix:`
    * required: no
    * dependency: `software:`
    * example: `software_dbprefix: wp_`
        * the value that prefixes table names within the database
            * PLEASE NOTE: table prefixes included in software distributions, such as WordPress' `wp_`, must be specified if desired
* `software_workflow:`
    * required: yes
    * dependency: `software:`
    * `software_workflow: downstream`
        * specifies Production as the source for the database and software file stores
        * this option is useful for maintaining a website
    * `software_workflow: upstream`
        * specifies Test as the source for the database and software file stores
        * this option is useful for launching a new website
        * PLEASE NOTE: affects the Production website instance - see [Release Management](#release-management)
* `webroot:`
    * required: no
    * example: `webroot: www/`
        * if the webroot differs from the repo root, specify it here
        * must include the trailing slash



## Website Development ##

Performing development in a local environment is critical to reducing risk by exacting the environments that exist upstream, accomplished with Vagrant and VirtualBox.

### Website Repositories ###

Repositories for websites are cloned into the Catapult instance at ~/repositories and in the respective apache or iis folder, listed by domain name.

* Repositories are linked between the host and guest for realtime development.

### Fresh Software Installs ###

Catapult enforces software configuration best practices for both fresh installs and existing software repositories, the typical workflow would be to fork the software project on GitHub and add to your `configuration.yml` file. Given the broad spectrum of software requirements there are minor configurations and caveats for specific software types outlined here:

Software | Approach | Notes
---------|----------|------
`codeigniter2`      |          |
`codeigniter3`      |          |
`drupal6`           |          |
`drupal7`           |          |
`expressionengine3` | Download |
`joomla3`           | Fork     |
`laravel5`          | Composer | Follow the [Composer Create-Project](https://laravel.com/docs/5.0/installation) documentation.
`mediawiki1`        | Fork     |
`moodle3`           | Fork     | Catapult requires the `moodledata` directory to be within the webroot, it's pertinant to create a `.gitignore` and `.htaccess` file for this directory.
`silverstripe3`     | Fork     | First fork the silver-stripe-installer repository then add a git submodule of silver-framework at a `framework` directory in the root. During a fresh install, the database config file `mysite/_config.php` will need to be given 0777 permissions.
`suitecrm7`         | Fork     |
`wordpress`         | Fork     |
`xenforo`           | Download |
`zendframework2`    | Fork     | Your best bet is to start from the [zendframework/ZendSkeletonApplication](https://github.com/zendframework/ZendSkeletonApplication) GitHub project. Catapult assumes Zend Framwork is at the root of your repo and writes a database config file at `config/autoload/global.php`, you will also need to set `webroot: public/` in your Catapult configuration.

### Forcing www ###

Forcing www is generally software specific, unlike forcing the https protocol, which is environment specific and driven by the `force_https` option. To force www ([why force www?](http://www.yes-www.org/)), please follow the respective guides per `software` below.

For `software` that does not have specific documentation, please follow this generic `.htaccess` approach http://stackoverflow.com/a/4958847/4838803

Software | Approach | Documentation
---------|----------|--------------
`codeigniter2`      |                      |
`codeigniter3`      |                      |
`drupal6`           | `.htaccess`          | https://www.drupal.org/node/150215
`drupal7`           | `.htaccess`          | https://www.drupal.org/node/150215
`expressionengine3` |                      |
`joomla3`           |                      |
`laravel5`          |                      |
`mediawiki1`        |                      |
`moodle3`           |                      |
`silverstripe3`     | `mysite/_config.php` | http://api.silverstripe.org/3.1/class-Director.html -> http://stackoverflow.com/a/26865882
`suitecrm7`         |                      | 
`wordpress`         | Database             | http://codex.wordpress.org/Changing_The_Site_URL
`xenforo`           |                      |
`zendframework2`    |                      |

### Database Migrations ###

The best way to handle changes to the software's database schema is through a migrations system. Database migrations are software specific and are invoked via Catapult for you, here we outline the specifics:

Software | Tool | Command | Documentation
---------|------|---------|--------------
`codeigniter2`      | Migrations      | `php index.php migrate`                                | https://ellislab.com/codeigniter/user-guide/libraries/migration.html
`codeigniter3`      | Migrations      | `php index.php migrate`                                | https://www.codeigniter.com/user_guide/libraries/migration.html
`drupal6`           | Drush           | `drush updatedb -y`                                    | https://www.drupal.org/node/150215
`drupal7`           | Drush           | `drush updatedb -y`                                    | https://www.drupal.org/node/150215
`expressionengine3` |                 |                                                        |
`joomla3`           |                 |                                                        |
`laravel5`          | Migrations      | `php artisan migrate`                                  | https://laravel.com/docs/5.0/migrations
`mediawiki1`        | UpdateMediaWiki | `php maintenance/update.php`                           | https://www.mediawiki.org/wiki/Manual:Update.php
`moodle3`           |                 |                                                        |
`silverstripe3`     | MigrationTask   | `php framework/cli-script.php dev/tasks/MigrationTask` | http://api.silverstripe.org/3.3/class-MigrationTask.html
`suitecrm7`         |                 |                                                        |
`wordpress`         | WP-CLI          | `wp-cli core update-db`                                | http://codex.wordpress.org/Creating_Tables_with_Plugins#Adding_an_Upgrade_Function
`xenforo`           |                 |                                                        |
`zendframework2`    |                 |                                                        |

### Refreshing Databases ###

* Databases are dumped once per day to the ~/_sql folder and restored, dependent on the environment and `software_workflow` setting per website - see [Release Management](#release-management) for details.
* Leverage Catapult's workflow model (configured by `software_workflow`) to trigger a database refresh. From the develop branch, commit a deletion of today's database backup from the ~/_sql folder.

### Connecting to Databases ###

Oracle SQL Developer is the recommended tool, to connect to and work with, databases. It is free, commercially supported, cross-platform, and supports multiple database types.

* **Download and install** [Oracle SQL Developer](http://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/index.html), some platforms require the [Java SE Development Kit](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
* **Install third party JDBC drivers**: Oracle SQL Developer uses JDBC, via a .jar file, to connect to different database types. To install a new JDBC connector, download the respective .jar file then from Oracle SQL Developer > Preferences > Third Party JDBC Drivers, click Add Entry.<sup>[4](#references)</sup>
    * **MySQL** http://dev.mysql.com/downloads/connector/j/5.0.html
        * For convenience, you may also use `~/catapult/installers/mysql-connector-java-5.0.8-bin.jar`
    * **MSSQL** https://sourceforge.net/projects/jtds/files/jtds/
        * For convenience, you may also use `~/catapult/installers/jtds-1.3.1.jar`
* **Connecting to:** LocalDev
    * The firewall allows direct connection to the database server. 
        * Use the mysql values in `~/secrets/configuration.yml` to connect.
* **Connecting to:** Test, QC, Production
    * The firewall does not allow direct connect to the database servers.
        * Add a New SSH Host in Oracle SQL Developer with the respective environment's web server host public ip address, root username with key file at `~/secrets/id_rsa`.
            * Create a New Local Port Forward with the respective environment's database server host private ip address and port 3306.
        * Then add a New Connection with the respective environment's mysql user values in `~/secrets/configuration.yml`.
            * The hostname will be localhost since we are forwarding the port through our local SSH tunnel.

### Hotfixes ###

Always weigh the risk of *not performing* a hotfix versus *performing* it, as hotfixes require going outside of the normal development and testing workflow. Performing a hotfix varies depending on the website's `software` type, `software_workflow` direction, and type of change (code or database).

* `software_workflow: downstream`
    * **Code**
        1. In `~/configuration.yml`, temporarily set the environments -> dev -> branch key to `branch: master`, and do not commit the change
        2. Provision any related LocalDev servers
        3. Develop, test, then commit any changes directly to the `master` branch
        4. Run the Production Bamboo build and verify the release
        5. Create a pull request and merge the `master` branch into the `develop` branch
        6. Set the environments -> dev -> branch key back to `branch: develop`
        7. Provision any related LocalDev servers
    * **Database**
        * Login to the Production website and make the change
            * (any database change that is beyond the direct capability of the `software` should not be taken out as a hotfix)
* `software_workflow: upstream`
    * **Code**
        1. In `~/configuration.yml`, temporarily set the environments -> dev -> branch key to `branch: master`, and do not commit the change
        2. Provision any related LocalDev servers
        3. Develop, test, then commit any changes directly to the `master` branch
        4. Run the Production build and verify the release
        5. Create a pull request and merge the `master` branch into the `develop` branch
        6. Set the environments -> dev -> branch key back to `branch: develop`
        7. Provision any related LocalDev servers
    * **Database**
        1. Login to the Production *and* Test website and make the change
            * (any database change that is beyond the direct capability of logging into the `software` and safely making the change, should not be taken out as a hotfix)
        2. From LocalDev and the `develop` branch of the website's repository, commit a deletion of today's (if exists) SQL dump file from within the `~/sql` folder
            * (this ensures there is a known committed SQL dump of your change to the `develop` branch for when this branch is merged upstream)
        3. From LocalDev, temporarily checkout the `master` branch of the website's repository, make your change in the most recent SQL dump file from within the `~/sql` folder
            * (this ensures that during the next Production build your change is not overwritten)



## Performance Testing ##

Often disregarded, performance testing is a crucial component of quality assurance. The risks of neglecting performance testing include downtime, SEO impacts, gaps in analytics, poor user experience, and unknown ability to scale.

With Catapult's exactly duplicated configuration, even the Test environment can accurately represent the performance potential of the Production environment. [ApacheBench](https://httpd.apache.org/docs/2.4/programs/ab.html) is a powerful tool to test request performance and concurrency - OSX includes ApacheBench out of the box, while [this StackOverflow post](http://stackoverflow.com/a/7407602/4838803) details how to get up and running on Windows.

ApacheBench enables us to profile request performance (`-n` represents the number of requests to perform) and concurrency (`-c` represents the number of multiple requests to make at a time) to test for performance, including common limits such as [C10k and C10M](http://highscalability.com/blog/2013/5/13/the-secret-to-10-million-concurrent-connections-the-kernel-i.html).

### Website Concurrency Maxiumum ###

Using a website with historical Google Analytics data, access the Audience Overview and find the busiest Pageview day from the past 30-days and then drill into that date. Find the hour with the most Pageviews, then the accompanying Avg. Session Duration. Using the following formula, we are able to find the Concurrency Maxiumum.

*(Pageviews x Avg. Session Duration in seconds) / 3,600 seconds* = **Concurrency Maxiumum**

**365,000 pageviews per month**

Take a website with an average of 500 pageviews per hour, or 365,000 pageviews per month, which has a busiest hour of 1,000 pageviews.

Pageviews | Avg. Session Duration | Total Session Seconds | Concurrency Maxiumum
----------|-----------------------|-----------------------|---------------------
1,000 | 60 minutes (3,600 seconds) | 3,600,000 | **1,000**
1,000 | 10 minutes (600 seconds) | 600,000 | **166**
1,000 | 5 minutes (300 seconds) | 300,000 | **88**
1,000 | 1 minute (60 seconds) | 60,000 | **16**

*100 concurrent requests performed 10 times*
````
ab -l -r -n 1000 -c 100 -H "Accept-Encoding: gzip, deflate" http://test.drupal7.devopsgroup.io/
````

**14,600 pageviews per month**

Take a website with an average of 20 pageviews per hour, or 14,600 pageviews per month, which has a busiest hour of 100 pageviews.

Pageviews | Avg. Session Duration | Total Session Seconds | Concurrency Maxiumum
----------|-----------------------|-----------------------|---------------------
100 | 60 minutes (3,600 seconds) | 36,000 | **1,000**
100 | 10 minutes (600 seconds) | 60,000 | **16**
100 | 5 minutes (300 seconds) | 30,000 | **8**
100 | 1 minute (60 seconds) | 6,000 | **1.6**

*10 concurrent requests performed 10 times*
````
ab -l -r -n 100 -c 10 -H "Accept-Encoding: gzip, deflate" http://test.drupal7.devopsgroup.io/
````

### Interpreting Apache AB Results ###

Using a satisifed [Apdex](https://en.wikipedia.org/wiki/Apdex) of 7 seconds, we can see that 98% of users would be satisfied.

````
Percentage of the requests served within a certain time (ms)
  50%     19
  66%     21
  75%     24
  80%     27
  90%     34
  95%   3968
  98%   6127
  99%   7227
 100%   7325 (longest request)
````



## Disaster Recovery ##

Being able to react to disasters immediately and consistently is crucial - Catapult affords you fast rebuilding and rollbacks.

### Server Rebuilding ###

* LocalDev is rebuildable by running `vagrant destroy` then `vagrant up` for the respective virtual machine.
* Test, QC, and Production are rebuildable by running `vagrant rebuild` for the respective virtual machine - this is necessary (rather than a destroy and up) to retain the IP addresses of the machine.

### Website Rollbacks ###

**Production Website Rollbacks:**

* `software_workflow: upstream`
    * Files
        * Reverse the offending merge commit from the master branch and run the Production deployment.
    * Database
        * Reverse the offending merge commit from the master branch and run the Production deployment.
        * Note: The Production database is overwritten and restored from the latest sql dump file from Test in the ~/_sql folder.
* `software_workflow: downstream`
    * Files
        * Reverse the offending merge commit from the master branch and run the Production deployment.
    * Database
        * Reverse the offending database dump auto-commit from the develop branch and manually restore the Production database from the desired sql dump file in the ~/_sql folder.
        * Note: The Production database is dumped once per day when the production build is run.



# Compliance and Security #

There are many complex compliance and audit standards that are your responsibility to understand and execute. Each Catapult instance is independant to you - including the required services that you signed up for during [Services Setup](#services-setup).

## Cloud Compliance ##

Security **of** the cloud. This is the responsibility of the cloud service.

Service           | Catapult Context                         | SOC 1                                                              | SOC 2                                                              | SOC 3
------------------|------------------------------------------|--------------------------------------------------------------------|--------------------------------------------------------------------|--------------------------------------------------------------------
AWS EC2 US EAST   | Temporary build servers                  | [:white_check_mark:](https://aws.amazon.com/compliance/soc-faqs/)  | [:white_check_mark:](https://aws.amazon.com/compliance/soc-faqs/)  | [:white_check_mark:](https://aws.amazon.com/compliance/soc-faqs/)
Bamboo            | Server communication, log files, secrets | [:white_check_mark:](https://www.atlassian.com/cloud/security/)    |                                                                    |
BitBucket         | Repository hosting                       | [:white_check_mark:](https://www.atlassian.com/cloud/security/)    |                                                                    |
DigitalOcean NYC3 | Red Hat server hosting                   |                                                                    | [:white_check_mark:](https://www.digitalocean.com/help/policy/)    | [:white_check_mark:](https://www.digitalocean.com/help/policy/)
GitHub            | Repository hosting                       |                                                                    |                                                                    |
New Relic         | Server communication, log files          |                                                                    | [:white_check_mark:](http://newrelic.com/why-new-relic/security)   |

## Self Compliance ##

Security **in** the cloud. This is your responsibility, however, the underlying service must have basic support for the compliance scenario.

Service           | Catapult Context                         | HIPAA BAA                                                                 | PCI DSS Level 1
------------------|------------------------------------------|---------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------
AWS EC2           | Windows server hosting                   | [:white_check_mark:](https://aws.amazon.com/compliance/hipaa-compliance/) | [:white_check_mark:](https://aws.amazon.com/compliance/pci-dss-level-1-faqs/)
CloudFlare (Pro)  | Web application firewall                 |                                                                           | [:white_check_mark:](https://support.cloudflare.com/hc/en-us/articles/202249734-CloudFlare-and-PCI-Compliance)
Bamboo            | Server communication, log files, secrets | [:x:](https://www.atlassian.com/security/security-faq/)                   |
BitBucket         | Repository hosting                       | [:x:](https://www.atlassian.com/security/security-faq/)                   |
DigitalOcean NYC3 | Red Hat server hosting                   | [:question:](https://www.digitalocean.com/help/policy/)                   | [:question:](https://www.digitalocean.com/help/policy/)
GitHub            | Repository hosting                       | [:question:](https://help.github.com/articles/github-security/)           |

## HTTPS and SSL Certificates ##

Catapult manages free HTTPS compliments of Cloudflare, however, depending on your compliance needs you may need to purchase SSL certificates unique to your orginazation. Once you're aware of your compliance responsiblity, you can then make a decision for purchasing and implementing SSL certificates. Catapult will soon incorporate the ability to add custom SSL certificates.

Feature                                        | Domain Validation (DV certificates)                                                          | Organization Validation (OV certificates)                                                   | Extended Validation (EV certificates)
-----------------------------------------------|----------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------
Single Domain Certificate                      | :white_check_mark:                                                                           | :white_check_mark:                                                                          | :white_check_mark:
Wildcard Certificate                           | :white_check_mark:                                                                           | :white_check_mark:                                                                          | :x:
Multiple Domain Certificate                    | :white_check_mark:                                                                           | :white_check_mark:                                                                          | :white_check_mark:
Cost                                           | $                                                                                            | $$                                                                                          | $$$
Issuing Process                                | Automatic                                                                                    | Application vetted by Certificate Authority                                                 | Application vetted by Certificate Authority
Issuing Criteria: Domain Name(s) Ownership     | :white_check_mark:                                                                           | :white_check_mark:                                                                          | :white_check_mark:
Issuing Criteria: Organization Existence       | :x:                                                                                          | :white_check_mark:                                                                          | :white_check_mark:
Issuing Criteria: Organization Legal Existence | :x:                                                                                          | :x:                                                                                         | :white_check_mark:
Industry Accepted Issuing Standard             | :x:                                                                                          | :x:                                                                                         | [CAB EV SSL Certificate Guidelines](https://cabforum.org/extended-validation/)
Standard Browser Padlock                       | :white_check_mark:                                                                           | :white_check_mark:                                                                          | :x:
Greenbar Browser Padlock                       | :x:                                                                                          | :x:                                                                                         | :white_check_mark:
Browser Compatibility                          | Google Chrome 1+, Mozilla Firefox 1+, Internet Explorer 5+                                   | Google Chrome 1+, Mozilla Firefox 1+, Internet Explorer 5+                                  | Google Chrome 1+, Mozilla Firefox 3+, Internet Explorer 7+

## Security Breach Notification Laws ##

Catapult introduces many best practice security measures, however, security of customer data is ultimately your responsibility. Generally speaking, if personal information is compromised, you are required by law to notify the party. Personal information, in the United States, is generally classified as **an individual's first and last name in combination with a Social Security number, driver's license number, or financial account number**. Laws vary country-by-country and state-by-state - for more information please see [this list](http://www.itgovernanceusa.com/data-breach-notification-laws.aspx) of data breach laws by U.S. state compiled by IT Governence.

See an error or have a suggestion? Email security@devopsgroup.io if confidential or submit a pull request - we appreciate all feedback.



# Troubleshooting #

Below is a log of service related troubleshooting. If you're having issues related to Catapult, [submit a GitHub Issue](https://github.com/devopsgroup-io/catapult/issues/new).

* **DigitalOcean**
    * [09-01-2015] vagrant rebuild was failing with a `The configured shell (config.ssh.shell) is invalid and unable to properly execute commands.` it is due to DigitalOcean's API not re-inserting the SSH key that was originally used during the first vagrant up (creation of the droplet). To rebuild, you must use the DigitalOcean console, run through the first root password reset workflow that was emailed to you, then vi /etc/sudoers and remove the `Defaults requiretty` line and save and exit. You can then run vagrant provision successfully.
* **GitHub**
    * [09-08-2015] Some database dumps exceed 100MB, so it's recommened to use Bitbucket in those instances as Catapult auto-commits database dumps to your website's repository, up to 500MB worth of database dumps or the one, newest database dump. [Bitbucket](https://help.github.com/articles/what-is-my-disk-quota/) has a 2GB hard repo push limit with no documented file limit and [GitHub](https://help.github.com/articles/what-is-my-disk-quota/) has a 1GB soft repo limit with a 100MB file size limit.
* **Vagrant**
   * [02-04-2015] When upgrading Vagrant you may run into errors - the most common issue are mismatched plugins, running this command has a good chance of success `sudo rm -Rf ~/.vagrant.d/gems/ && sudo rm ~/.vagrant.d/plugins.json`



# Contributing #

Here are some ways which we welcome you to contribute to Catapult:

  * Submit a pull request
  * Report an issue
  * Provide feedback on open issues
  * Improve documentation in the README
  * Share your experiences with Catapult

When you first setup Catapult, a `develop-catapult` branch is created for you under your forked repository with the git remote upstream set to `https://github.com/devopsgroup-io/catapult.git` so that you can easily create a pull request. Also keep in mind when closing issues to submit a pull request that includes [GitHub's: Closing issues via commit messages](https://help.github.com/articles/closing-issues-via-commit-messages/).



## Releases ##

Releases are driven by the devopsgroup.io team and occur when accepting new pull requests from contributors like you. Releases follow [Semantic Versioning 2.0.0](http://semver.org/spec/v2.0.0.html). Given a version number MAJOR.MINOR.PATCH, increment the:

* MAJOR version when you make incompatible API changes,
* MINOR version when you add functionality in a backwards-compatible manner, and
* PATCH version when you make backwards-compatible bug fixes.

In addition, the release version number will be prefaced with a `v` (v1.0.0) to conform to standard practice.

As part of a new release, the version number in VERSION.yml will be incremented and git tagged with the same version number along with a [GitHub Release](https://help.github.com/articles/about-releases/).



# Community #



## Partnerships ##

The Catapult team values partnerships and continuous improvement.

* [06-03-2016] New Relic creates request on Catapult's behalf for a free entry point for the New Relic Synthetics API
* [01-28-2016] Pantheon provides feedback
* [01-22-2016] New Relic provides private beta access to their Synthetics API along side Breather, Carfax, Ring Central, Rackspace, and IBM.



## Conferences ##

Catapult is making the conference tour! We plan to attend the following conferences, with more to come. Get a chance to see Catapult in action, presented by it's core developers.

* Spring 2016 [04-08-2016] [Drupaldelphia](http://drupaldelphia.com/): DevOps Discipline: Detailed and Complete
* Summer 2016 [Wharton Web Conference](http://www.sas.upenn.edu/wwc/)
* Winter 2016 [WordCamp US](http://us.wordcamp.org/)



## Local Events ##

Catapult will also be seen throughout local meetups in the Philadelphia and Greater Philadelphia area! Get a chance to meet the team and engage at a personal level.

* [Philly Tech Meetup](http://www.meetup.com/philly-tech/) 4k+ technologists
* [Princeton Tech ](http://www.meetup.com/Princeton-Tech/) 3.5k+ technologists
* [Technical.ly Philly](http://www.meetup.com/Technically-Philly/) 3k+ technologists
* [Philadelphia WordPress Meetup Group](http://www.meetup.com/philadelphia-wordpress-meetup-group/) 1.5k+ technologists
* [Philly DevOps](http://www.meetup.com/PhillyDevOps/) 700+ technologists
* [Greater Philadelphia Drupal Meetup Group](http://www.meetup.com/drupaldelphia/) 500+ technologists



# References #
1. Atlassian. Comparing Workflows. https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow. Accessed February 15, 2016.
2. Pantheon. Load and Performance Testing: Before You Begin. https://pantheon.io/docs/articles/load-and-performance-testing/. Accessed February 20, 2016.
3. Acquia. Acquia Dev Desktop. https://www.acquia.com/products-services/dev-desktop. Accessed February 20, 2016.
4. Oracle Technology Network. Oracle SQL Developer Migrations: Getting Started. http://www.oracle.com/technetwork/database/migration/omwb-getstarted-093461.html#conf. Accessed March 14, 2016.

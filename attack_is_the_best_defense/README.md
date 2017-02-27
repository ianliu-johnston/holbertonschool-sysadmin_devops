#Holberton School - attack_is_the_best_defense
Intro to offensive security

## New commands / functions used:
``tcpdump``, ``hydra``, ``telnet``

## Helpful Links
* [Network sniffing](https://www.lifewire.com/definition-of-sniffer-817996)
* [ARP Spoofing](https://www.veracode.com/security/arp-spoofing)
* [Connect to SendGrid's SMTP relay using telnet](https://sendgrid.com/docs/Classroom/Troubleshooting/Delivery_Issues/testing_your_connectivity_to_sendgrids_smtp_relay_using_telnet.html)
* [What is Docker and why is it popular?](http://www.zdnet.com/article/what-is-docker-and-why-is-it-so-darn-popular/)
* [Dictionary Attack](https://en.wikipedia.org/wiki/Dictionary_attack)


## Description of Files
<h6>0-sniffing</h6>
Password from authentication sniffing

<h6>user_authenticating_into_server</h6>
Script to authenticate, goes with 0-sniffing

<h6>1-dictionary_attack</h6>
Password based authentication can easily be broken by using a dictionary attack.
1. Install docker
2. Pull and run the docker image ``docker run -p 2222:22 -d -ti sylvainkalache/264-1``
3. Install hydra to bruteforce the account sylvain via ssh
4. Share the password in the answer file

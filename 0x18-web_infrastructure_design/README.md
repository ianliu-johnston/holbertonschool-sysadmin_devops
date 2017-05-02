# Holberton School - 0x18-web_infrastructure_design
Whiteboarding tests for design of web application infrastructures

## Helpful Links
### DNS
* [How does DNS work Webcomic](https://howdns.works/ep1/)
* [DNS record types](https://pressable.com/blog/2014/12/23/dns-record-types-explained/)
* [About /etc/hosts](http://www.linfo.org/etc_hosts.html)
* [Gandi.net Glue Records](https://wiki.gandi.net/en/glossary/glue-record)

### Errors
* [Single point of failure](https://en.wikipedia.org/wiki/Single_point_of_failure)
* [How to avoid downtime when deploying new code](https://softwareengineering.stackexchange.com/questions/35063/how-do-you-update-your-production-codebase-database-schema-without-causing-downt#answers-header)

### Networks
* [Wikipedia: Autonomous System](https://en.wikipedia.org/wiki/Autonomous_system_(Internet))
* [Subdomains, Stackoverflow](https://serverfault.com/questions/275982/what-type-of-dns-record-is-needed-to-make-a-subdomain)

### Server network configuration
* [High availability cluster (active-active/active-passive)](https://docs.oracle.com/cd/E17904_01/core.1111/e10106/intro.htm#ASHIA712)
* [Load-balancing algorithms](https://devcentral.f5.com/articles/intro-to-load-balancing-for-developers-ndash-the-algorithms)
* [Round Robin DNS](https://www.dnsknowledge.com/whatis/round-robin-dns/)


### Servers
* [Application Server vs Web Server](https://www.nginx.com/resources/glossary/application-server-vs-web-server/)
* [WSGI Servers Wikipedia](https://en.wikipedia.org/wiki/Web_Server_Gateway_Interface)
* [Wikipedia LAMP stack](https://en.wikipedia.org/wiki/LAMP_(software_bundle))

## Description of Files
<h6>0-simple_web_stack</h6>

* What is the role of the domain name?
  - Human readable form of a location of a server

* What type of DNS entry www.foobar.com is, assuming it points to an IP?
  - A record

* What is the role of a database? 
  - Standardized lookup methods / query languages. 
  - Organization of large amounts of data
  - Handles multiple types of data.

* How are these pieces connected? (See Diagram)

![Simple Web Stack](WhatHappensGoogle_whiteboard.png "Simple Web Stack") Simple Web Stack


<h6>1-distributed_web_infrastructure</h6>
![Distributed Web Infrastructure]()

<h6>2-secured_and_monitored_web_infrastructure</h6>
![Secured and Monitored Web Infrastructure]()

<h6>3-scale_up</h6>
![Scale up]()

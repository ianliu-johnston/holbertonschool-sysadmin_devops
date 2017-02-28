#Holberton School - 0x09-web_server
Intro to webserver automation

## New commands / functions used:
``scp``, ``curl``,``if [[ "$#" -ne 4 ]]; then`` - if number of arguments does not equal 4 then do whatever, enter ``<enter>, ~, .`` separately to exit out of a timed out ssh session.

## Helpful Links
* [Getting started with how the web works](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works)
* [Wikipeida: Nginx](https://en.wikipedia.org/wiki/Nginx)
* [Difference between Root and Sub domains](http://support.landingi.com/article/147-the-root-domain-and-sub-domain-differences)
* [Redirection](https://moz.com/learn/seo/redirection)
* [Wikipeida: the 404 Page](https://en.wikipedia.org/wiki/HTTP_404)
* [SRE](https://www.atlassian.com/it-unplugged/devops/site-reliability-engineering-sre)
* [Why the best programmers are lazy and act dumb](https://www.techwell.com/techwell-insights/2013/12/why-best-programmers-are-lazy-and-act-dumb)
* [What is apt-get -y?](http://askubuntu.com/questions/672892/what-does-y-mean-in-apt-get-y-install-command)
* [Replace multiple lines with sed](http://stackoverflow.com/questions/26041088/sed-replace-line-with-multiline-variable)
* [Gandi.net for domain names](https://www.gandi.net/)
* [My domain name: concati.tech](https://concati.tech)
* [How to configure nginx](https://www.linode.com/docs/websites/nginx/how-to-configure-nginx)
* [Digital Ocean: Nginx redirects](https://www.digitalocean.com/community/tutorials/how-to-create-temporary-and-permanent-redirects-with-nginx)

## Description of Files
<h6>0-transfer_file</h6>
Transfer a file with ``scp``

<h6>1-install_nginx_web_server</h6>
Script that configures a new Ubuntu machine with ``nginx``

<h6>2-setup_a_domain_name</h6>
Script that gets a domain name and point it at your ip address

<h6>3-redirection</h6>
Script that redirects ``/redirect_me`` to another page.

<h6>4-not_found_page_404</h6>
Script that redirects unfound resource get requests to a 404 page. ``Ceci n'est pas une page``

<h6>5-design_a_beautiful_404_page</h6>
Design a 404 page. Make sure it contains the string: ``Ceci n'est pas une page``

# Holberton School - 0x17-api
How sysadmins use API's

## Helpful Links
* [Friends Don't Let Friends Program Shell Script](https://www.turnkeylinux.org/blog/friends-dont-let-friends-program-shell-script)
* [What is an API?](http://www.webopedia.com/TERM/A/API.html)
* [What is a REST API?](https://www.sitepoint.com/developers-rest-api/)
* [What are Microservices?](https://smartbear.com/learn/api-design/what-are-microservices/)
* [Sylvain Explaining API's](https://youtu.be/qn08N7Zx0Lw)
* [Fake Data for API's](https://jsonplaceholder.typicode.com/)

## Description of Files
<h6>0-gather_data_from_an_API.py</h6>
Python script that uses the JSON returned from the "Fake Data For API's" link above to return information about a todo list.

<h6>1-export_to_CSV.py</h6>
Exports the data returned from ``0-gather_data_from_an_API.py`` into CSV

<h6>2-export_to_JSON.py</h6>
Exports the data returned from ``0-gather_data_from_an_API.py`` into JSON 

<h6>3-dictionary_of_list_of_dictionaries.py</h6>
Reformats the data returned from ``0-gather_data_from_an_API.py`` into JSON:
```
{ "USER_ID": [ {"username": "USERNAME", "task": "TASK_TITTLE", "completed": TASK_COMPLETED_STATUS}, {"username": "USERNAME", "task": "TASK_TITTLE", "completed": TASK_COMPLETED_STATUS}, ... ], "USER_ID": [ {"username": "USERNAME", "task": "TASK_TITTLE", "completed": TASK_COMPLETED_STATUS}, {"username": "USERNAME", "task": "TASK_TITTLE", "completed": TASK_COMPLETED_STATUS}, ... ]}
```

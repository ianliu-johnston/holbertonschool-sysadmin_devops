#!/usr/bin/python3
import sys
import requests
import json
"""
Module to interface with the reddit api
"""


def page_one(subreddit):
    """
    Uses the reddit api to get the numbers of hot posts in a given subreddit
    """
    url = 'https://reddit.com/r/' + subreddit + '/hot/.json'
    headers = {'User-Agent': "lala"}
    r = requests.get(url, headers=headers)
    for data in r['data'].get('children'):
        print(data['data'].get('title'))
    """
    with open('sample.json', 'w') as f:
        json.dump(r.json(), f)
    """
    return(0)

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Please pass an argument for the subreddit to search.")
    else:
        print("{:d}".format(page_one(sys.argv[1])))
    """
    with open('sample.json', 'r') as f:
        r = json.load(f)
    for data in r['data'].get('children'):
        print(data['data'].get('title'))
    """

#!/usr/bin/python3
import requests
"""
Module to interface with the reddit api
"""


def top_ten(subreddit):
    """
    Uses the reddit api to get the numbers of hot posts in a given subreddit
    """
    url = 'https://reddit.com/r/' + subreddit + '/hot/.json'
    headers = {'User-Agent': "lala"}
    r = requests.get(url, headers=headers)
    try:
        for data in r['data'].get('children'):
            print(data['data'].get('title'))
    except:
        print("None")

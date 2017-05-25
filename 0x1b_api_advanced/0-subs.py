#!/usr/bin/python3
import requests
"""
Module to interface with the reddit api
"""


def number_of_subscribers(subreddit):
    """
    Uses the reddit api to get the numbers of subscribers to a subreddit
    """
    url = 'https://reddit.com/r/' + subreddit + '/about/.json'
    headers = {'User-Agent': "lala"}
    r = requests.get(url, headers=headers)
    if r.json().get('data').get('subscribers'):
        return(r.json().get('data').get('subscribers'))
    else:
        return(0)

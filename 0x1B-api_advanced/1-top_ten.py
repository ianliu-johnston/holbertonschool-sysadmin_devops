#!/usr/bin/python3
import requests
"""
Module to interface with the reddit api
"""


def top_ten(subreddit):
    """
    Uses the reddit api to get the numbers of hot posts in a given subreddit
    """
    new_lst = []
    count = 0
    url = 'https://reddit.com/r/' + subreddit + '/hot/.json'
    headers = {'User-Agent': "lala"}
    r = requests.get(url, headers=headers)
    try:
        for data in r.json()['data'].get('children'):
            new_lst.append(data['data'].get('title'))
            count += 1
            if count > 9:
                break
        print("\n".join(x for x in new_lst))
    except Exception as err:
        print("None")

"""
in-file tests
if __name__ == "__main__":
    # Should return correctly and print to stdout
    top_ten("pokemon")

    # Should print None to stdout
    top_ten("alkjaeoifjaofjalskdjfoasijeflaksjf")

    # Should print None to stdout -- queries a different url
    top_ten("pokemon/la")
"""

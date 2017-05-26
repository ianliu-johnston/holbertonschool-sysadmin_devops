#!/usr/bin/python3
import requests
import sys
"""
Module to interface with the reddit api
"""


def count_words(subreddit, word_list=[], after=None, all_results=[]):
    """
    Uses the reddit api to get a count of search terms from subreddit hot posts
    """
    param = {}
    new_after = None
    if after is not None:
        param = {'after': after}
    url = 'https://reddit.com/r/' + subreddit + '/hot/.json'
    headers = {'User-Agent': "lala"}
    try:
        r = requests.get(url, headers=headers, params=param)
        new_after = r.json()['data'].get('after')
        for data in r.json()['data'].get('children'):
            all_results.append(data['data'].get('title'))
    except:
        return(None)
    if new_after is not None:
        return(count_words(subreddit, word_list, new_after, all_results))
    else:
        word_dict = dict.fromkeys((word_list.lower()), 0)
        line = ""
        for item in all_results:
            line = item.lower()
            for word in word_list:
                if word in line:
                    word_dict[word] += 1
        for key in word_dict:
            print("{:s}: {:d}".format(key, word_dict[key]))
        return(all_results)

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Please pass an argument for the subreddit to search.")
    else:
        print(len(count_words(sys.argv[1], [x for x in sys.argv[2].split()])))

from bs4 import BeautifulSoup as BS
from time import sleep
import requests
from json import dumps, loads
import sys
import os
from typing import Dict
import atexit

def clean_villager(villager: Dict) -> None:
    # Join all the Game data
    unify: Dict = {}
    all_games = list(villager.values())
    for k,v in list(villager.items()):
        unify = v | unify
        del villager[k]
    for k,v in unify.items():
        villager[k] = v
    # Find a clean personality
    for game in all_games:
        personality: str = game['personality']
        if personality and personality.lower().find("subtype") == -1:
            villager["personality"] = personality
            break

def fix_bday(villager: Dict) -> None:
    # Star sign
    bday = villager['birthday']
    s = bday.split(' (')
    sign = s[-1].replace(")",'')
    bday = s[0]
    villager['birthday'] = s[0]
    villager['zodiac'] = sign
            
    
villager_url_format = "https://villagerdb.com%s"
url = "https://villagerdb.com/villagers/ajax/page/%d/?game=nh"
URL_FILE = "url.list"

urls = []
HEADERS = {
    "Host": "villagerdb.com",
    "User-Agent": "Mozilla/5.0 (X11; Linux x86_64; rv:128.0) Gecko/20100101 Firefox/128.0",
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/png,image/svg+xml,*/*;q=0.8",
    "Accept-Language": "en-US,en;q=0.5",
    # "Accept-Encoding": "gzip, deflate, br, zstd",
    "Connection": "keep-alive",
    "Upgrade-Insecure-Requests": "1",
    "Sec-Fetch-Dest": "document",
    "Sec-Fetch-Mode": "navigate",
    "Sec-Fetch-Site": "none",
    "Sec-Fetch-User": "?1",
    "Priority": "u=0, i",
    "TE": "trailers"
}

if not os.path.exists(URL_FILE):
    for x in range(1,10):
        print("Stealing: page %d" % x)
        r = requests.get(url % x)
        data = loads(r.text)
        for x in data['results']:
            urls.append(x['url'])

    with open(URL_FILE, 'w') as file:
        for x in urls:
            file.write(f"{x}\n")

data = {}

def save(d: Dict) -> None:
    with open("db.json", 'w') as file:
        file.write(dumps(d))

atexit.register(save, data)
with open(URL_FILE, 'r') as file:
    while True:
        # Give the web server a break
        sleep(1)
        # /villager/XXXXX
        half_url = file.readline().replace("\n",'')
        if url == None:
            break # Done
        # https://...com/villager/XXXXXX
        url = villager_url_format % half_url
        print(f"Copying {url}")
        # Fetch the page
        r = None
        while True:
            try:
                r = requests.get(url,headers=HEADERS,timeout=3)
                break
            except e:
                print(f"Timedout - sleeping {str(e)}")
                sleep(10)
        
        # Init the parser
        soup = BS(r.text, features="html.parser")
        # Grab all the per game tables
        data_tables = soup.find_all('table', attrs={'class':'item-game-data'})
        villager = {}
        # villager is a reference so we can go ahead an store it ahead of time
        data[half_url] = villager
        # Parse per game tables

        for table in data_tables:
            GAME = table.find_previous("h3").text
            tabledata = {}
            for row in table.find_all("tr"):
                temp = row.find_all("td")
                if not temp:
                    continue
                key, val = temp
                key = key.text.replace("\n",'').lower()
                val = val.text.replace("\n",'')
                tabledata[key] = val
            villager[GAME] = tabledata
        clean_villager(villager)
        villager["Name"] = soup.find("h1").text

        for table in soup.find_all("table", attrs={'class':'table'}):
            if table.find_next('th').text != "Overview":
                continue
            for row in table.find_all("tr"):
                temp = row.find_all("td")
                if not temp:
                    continue
                key, val = temp
                key = key.text.replace("\n",'').lower()
                val = val.text.replace("\n",'')
                villager[key] = val
        fix_bday(villager)
                    
        

        
        

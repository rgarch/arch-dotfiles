#!/usr/bin/python2
import requests
import os
import json
from sys import argv

url = "http://pomf.se/upload.php"
upload = argv[1]
files={"files[]":open(upload, "rb")}
post = requests.post(url, files=files)
json = json.loads(post.text)

if json["success"] == "false":
	print "ERROR"
else:
	remote = "http://a.pomf.se/" + json["files"][0]["url"]
	print(remote)

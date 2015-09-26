#!/usr/bin/python

import urllib
import simplejson

url_api = "http://bluepages.ibm.com/BpHttpApisv3/apilocator?format=json"

response = urllib.urlopen(url_api);
data = simplejson.loads(response.read())
print data

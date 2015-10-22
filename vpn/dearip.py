#!/usr/bin/env python
# -*- coding: UTF-8 -*-


import requests
from prettytable import PrettyTable
import re

LOGIN_URL = 'http://www.houzl.com/client/dologin.php'
LIST_SERVERS_URL = 'http://www.houzl.com/client/serverstatus.php'
form_data = {
             'token':'65a58cc6b446ce474f267eaeeab05b38b853e0c1',
            'username':'账号',
            'password':'密码',
            'rememberme':'on'
             }
if __name__ == '__main__':
    res = None
    try:
        s = requests.session()
        s.post(LOGIN_URL, data = form_data)
        res = s.get(LIST_SERVERS_URL)
    except Exception, e:
        print e
        
    
    pattern = re.compile(r'''<tr>.*?<td>(.*?)</td>.*?<td>(.*?)</td>.*?<td>(.*?)</td>.*?<td>(.*?)</td>.*?<td><strong><font color='.*?'>(.*?)</font></strong></td>.*?</tr>''', re.S)
    items = re.findall(pattern,res.text)

    table = PrettyTable([u'服务器', u'IP地址', u'服务类型', u'运行时间/状态', u'在线人数'])
    table.padding_width = 2 
    for item in items:
        if len(item[3]) > 20 or item[4] != u'\u4f4e': 
            pass
        else: 
            table.add_row(item)
    print table 








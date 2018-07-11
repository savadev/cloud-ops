#!/usr/bin/python
# -*- coding: utf-8 -*-

import psycopg2
import sys


con = None

try:
     
    con = psycopg2.connect("dbname='xxxx' user='xxxx' password='xxxxx'") 
    
    cur = con.cursor()    
    cur.execute("SELECT * FROM serverhall1")

    rows = cur.fetchall()

    for row in rows:
        print row
    

except psycopg2.DatabaseError, e:
    print 'Error %s' % e    
    sys.exit(1)
    
    
finally:
    
    if con:
        con.close()

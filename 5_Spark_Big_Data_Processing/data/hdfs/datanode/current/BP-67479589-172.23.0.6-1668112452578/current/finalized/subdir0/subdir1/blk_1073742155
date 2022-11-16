#!/usr/bin/env python
 
from operator import itemgetter
import sys
 
last_word = None
last_count = 0
cur_word = None
 
for line in sys.stdin:
    line = line.strip()
 
    cur_word, count = line.split('\t', 1)
 
    count = int(count)
 
    if last_word == cur_word:
        last_count += count
    else:
        if last_word:
           print '%s\t%s' % (last_word, last_count)
           last_count = count
        last_word = cur_word
 
if last_word == cur_word:
    print '%s\t%s' % (last_word, last_count)

#!/bin/bash
# example: 
#curl -s http://www.bing.com/search?q=imdb+%22wir+kaufen+einen+zoo%22 | grep -Eo 'imdb.de/title/tt\d*'

SEARCH_TITLE=$1
echo Search for $SEARCH_TITLE
RESULT=$(curl -s http://www.bing.com/search?q=imdb+%22$SEARCH_TITLE%22 | grep -Eo 'imdb.de/title/tt\d*')

echo Found $RESULT

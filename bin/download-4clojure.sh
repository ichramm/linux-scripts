#!/bin/bash

test -z "$1" && \
  echo "Usage: $0 <problem_number>" && \
  exit 1

test -z "$_4CLOJURE_COOKIE" && \
  echo "Environment variable '_4CLOJURE_COOKIE' is not set" && \
  echo "Should be something like 'ring-session=<some-uuid>' (check with dev tools)" && \
  exit 1

CONTENT=$(curl -s "http://www.4clojure.com/problem/$1" -H "Cookie: $_4CLOJURE_COOKIE")
TITLE=$(echo "$CONTENT" | hxselect -c 'title')
CODE=$(echo "$CONTENT" | hxselect -c '#code-box')

if [ -n "$CODE" ]; then
  echo "; $TITLE"
  echo "$CODE" | sed 's/\&amp;/\&/g; s/\&lt;/</g; s/\&gt;/>/g; s/\&quot;/"/g; s/\&#39;/'"'"'/g'
else
  echo "Problem '$TITLE'"
  echo "You didn't solve this one"
fi


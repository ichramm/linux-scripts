#!/bin/bash

sed -i '1s/^/\xef\xbb\xbf/' $@

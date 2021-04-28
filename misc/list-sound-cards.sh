#!/bin/bash

pacmd list-cards | egrep 'index:|\sname:|\.card_name|description|vendor|product.(id|name)'


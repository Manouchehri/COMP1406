#!/bin/bash

PWD="$(pwd)"
source "${PWD}/auth.txt"
user_agent="Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0"
url="http://people.scs.carleton.ca/~ldnel/1406fall2015/"
output_folder="website"

wget -e robots=off --convert-links --adjust-extension --page-requisites --continue --timeout=60 --wait=1 --random-wait --user="${username}" --password="${password}" --ignore-length --max-redirect=3 --user-agent="${user_agent}" --no-check-certificate --recursive --backup-converted --follow-ftp "${url}" --directory-prefix="${output_folder}/"
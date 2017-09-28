#!/usr/bin/env bash

id=1
case "$1" in
  "exim") id=1199
  ;;
  "social") id=1176
  ;;
  "note") id=1058
  ;;
  "onboard") id=1123
  ;;
  "graphin") id=1028
  ;;
  "eck") id=1202
  ;;
  "portal") id=966
  ;;
  "me") id=371
  ;;

esac

assignee_id=16
if [ $5 == "duy" ]; then
  assignee_id=19
fi

if [ $id == 1 ]; then
  echo "Invalid project: $1"
else
  http POST https://code.go1.com.au/api/v4/projects/$id/merge_requests private-token:YOUR_TOKEN remove_source_branch=true source_branch=$2 target_branch=$3 title="$4" assignee_id=$assignee_id | jq ".web_url"
fi

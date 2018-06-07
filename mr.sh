#!/usr/bin/env bash

assignee_id=16
if [[ $4 == duy ]]; then
  assignee_id=19
fi

if [[ $2 ]]; then
  branch=$2
  service="microservices%2F$1"
  title=$3
elif [ -d .git ]; then
  branch="$(git symbolic-ref -q HEAD)"
  branch="${branch##refs/heads/}"

  service="$(git config --get remote.origin.url)"
  service="${service##git@code.go1.com.au:}"
  service="${service%.git}"
  service="${service/\//%2F}"

  title=$1
fi;

remove=true
target=master
if [ $branch == master ]; then
  remove=false
  target=staging
fi
if [ $branch == staging ]; then
  remove=false
  target=production
fi

http POST https://code.go1.com.au/api/v4/projects/$service/merge_requests private-token: remove_source_branch=$remove source_branch=$branch target_branch=$target title="$title" assignee_id=$assignee_id | jq -r ".web_url, .message"

#!/usr/bin/env sh
# Create the folder structure given the first param a: file with company names on each line, and a second param with
# year. fx. "./.scripts/structure_generator.sh companies.txt 2019"

while read company_name; do
  quarters='Q1 Q2 Q3 Annual'
  for quarter in $quarters; do
    if [[ ! -d "companies/${company_name}/$2/$quarter" ]]; then
      mkdir -p "companies/${company_name}/$2/$quarter"
      cp template/* "companies/${company_name}/$2/$quarter"
    fi
  done
done <$1

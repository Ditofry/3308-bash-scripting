#!/bin/bash
# Brandon Barrett

# How many lines end with a number?
grep -c -E '[0-9]$' $1
# How many lines do not start with a vowel?
grep -c -E '^[^aAeEiIoOuU]' $1
# How many 12 letter (alphabet only) lines?
grep -c -E '[a-zA-Z]{12}' $1
# How many phone numbers are in the dataset? format: _ _ _-_ _ _-_ _ _ _
grep -c -E '[0-9]{3}-[0-9]{3}-[0-9]{4}' $1
# How many city of Boulder phone numbers? format: 303-_ _ _-_ _ _ _
grep -c -E '303-441-[0-9]{4}' $1
# How many begin with a vowel and end with a number?
grep -c -E '^(A|a|e|E|i|I|o|O|u|U).*[0-9]$' $1
# How many email addresses are from geocities? (e.g. end with geocities.com)?
grep -c -E 'geocities.com$' $1
# How many incorrect email address are there (lines with an @ in it but formatted incorrectly)? An email address has a user id and domain names can consist of letters, numbers, periods, and dashes. An email address has to have a top-level domain (e.g. something.com).
grep -c -E '([^a-zA-Z0-9\-\.]+@|@[^\.]*$|@[^a-zA-Z0-9\-\.]+\.)' $1

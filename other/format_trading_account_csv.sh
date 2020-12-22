#!/bin/bash

grep " " -rl ~/bak/at_20201206.csv | xargs sed -i "s/ /,/g"
grep "}" -rl ~/bak/at_20201206.csv | xargs sed -i "s/}/,,,/g"
grep "&{" -rl ~/bak/at_20201206.csv | xargs sed -i "s/&{//g"
grep "1606" -rl ~/bak/at_20201206.csv | xargs sed -i "s/1607/160,7/g"
#!/bin/bash

./bin/phpcs --standard=./vendor/drupal/coder/coder_sniffer/Drupal --ignore=vendor/ --ignore=bin/  --extensions=php,module,inc,install,test,profile,theme,js,css,info,txt -s .

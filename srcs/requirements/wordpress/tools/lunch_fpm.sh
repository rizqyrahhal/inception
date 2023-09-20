#!/bin/bash

mkdir -p /run/php

/usr/sbin/php-fpm7.3 -F -R

#!/bin/bash

useradd -m -p $(openssl passwd -1 $FTP_PASS) $FTP_USER

exec "$@"
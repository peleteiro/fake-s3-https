#!/bin/bash
openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -keyout fakes3.key -out fakes3.crt -config openssl.cnf -extensions 'v3_req'

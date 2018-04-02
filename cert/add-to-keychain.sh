#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
sudo security add-trusted-cert -d -r trustRoot -k "/Library/Keychains/System.keychain" ${DIR}/fakes3.crt

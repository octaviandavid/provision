#!/usr/bin/bash

cert_view() {
    CERT=${1}
    openssl x509 -in ${CERT} -text -noout
}

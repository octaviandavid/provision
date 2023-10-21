#!/usr/bin/bash

### Useful to find packages that provide a specific binary
# $   pac_deep_finder pg_dump
# extra/postgresql-libs 15.3-2
#     usr/bin/pg_dump
# extra/postgresql-old-upgrade 14.7-3
#     opt/pgsql-14/bin/pg_dump

function pac_deep_finder () {
  pacman -Fx $1$
}
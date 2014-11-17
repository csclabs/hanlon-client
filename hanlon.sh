#!/bin/bash
docker run --rm -it -v `pwd`/config/:/home/hanlon/cli/config/ jcpowermac/hanlon-client $@

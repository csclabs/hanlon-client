#!/bin/bash
docker run --rm -it -v ~/Development/hanlon-client/config/:/home/hanlon/cli/config/ jcpowermac/hanlon-client $@

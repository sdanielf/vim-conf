#!/usr/bin/env python
# -*- coding: utf-8 -*-

import apt
import re

required_version = [7, 3, 584]
supported_version = False

cache = apt.Cache()
pkg = cache['vim']

for candidate in pkg.versions:
    version = map(int, re.findall('(\d+)\.(\d+)\.(\d+)',
                                  candidate.version)[0])
    if version[0] > required_version[0]:
        supported_version = True
    elif version[0] == required_version[0]:
        if version[1] > required_version[1]:
            supported_version = True
        elif version[1] == required_version[1]:
            if version[2] >= required_version[2]:
                supported_version = True

print int(supported_version)

#!/usr/bin/env python3

import sys

from pandocfilters import toJSONFilter, RawBlock, Div

def divs(key, value, format, meta):
    if key == 'Div':
        [[ident, classes, keyvals], contents] = value
        visible_formats = []

        for attr in keyvals:
            if attr[0] == 'data-show-in':
                visible_formats = attr[1].split(',')
                break

        if format in visible_formats:
            return value[1]
        else:
            return []

if __name__ == "__main__":
    toJSONFilter(divs)

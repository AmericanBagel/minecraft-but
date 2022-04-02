
import os

import allay

import sys

import pyperclip as pc

parser = allay.Parser()

parser.add_pattern("external_pattern", "(bold, blue)")
parser.add_template("external_template1", "arg 1: %0\narg 2: %1")
parser.add_template(
    "external_template2", "outside stuff. go away {@s}(@external_pattern)"
)

# TODO fix this jank and get the proper parser.parse("tests\\sample.allay") working
with open(
    os.path.join(sys.path[0], "sample.allay"),
    "r",
) as infile:
    file_contents = infile.read()

parsed_content = parser.parse(file_contents)

command = '/tellraw @p ' + parsed_content

# TODO invidiual tests instead of one large file

# Confirmed to work manually in game version 1.18.1


pc.copy(command)
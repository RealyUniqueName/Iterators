#!/bin/bash

rm iterators.zip
zip -r iterators.zip src README.md LICENSE haxelib.json > /dev/null
haxelib submit iterators.zip
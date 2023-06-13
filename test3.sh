#!/bin/sh

watch -n1 "stack ghc -- $(pwd)/Main.hs && cat $(pwd)/test/sample-3.in | $(pwd)/Main"

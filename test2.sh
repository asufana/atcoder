#!/bin/sh

watch -n1 "stack ghc -- $(pwd)/Main.hs && cat $(pwd)/test/sample-2.in | $(pwd)/Main"

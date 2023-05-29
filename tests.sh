#!/bin/sh

stack ghc -- $(pwd)/Main.hs && oj t -c "$(pwd)/Main"

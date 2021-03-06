#!/bin/bash
## sets up the docs environment to serve mkdocs-built site

pushd $(dirname $0) > /dev/null

cd $(pwd -P)/..
DOCS_ROOT=./doc/mkdocs/docs

find doc/ -type f -path "doc/mkdocs*" -prune -o -regex ".+\.\(md\|png\|jpg\)$" -print | cpio -p -dum --quiet $DOCS_ROOT

cp $DOCS_ROOT/../index.md $DOCS_ROOT

popd > /dev/null

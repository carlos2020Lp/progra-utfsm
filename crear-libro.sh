#!/bin/bash

BOOK=_libro

#if [ -e $BOOK ]
#then
#    echo $BOOK ya existe
#    exit
#fi

find materia ejercicios c -name '*.rst' | while read page
do
    mkdir -p $BOOK/$(dirname $page)
#    rstex.py $page $BOOK/${page%.rst}.tex
    doc=$BOOK/${page%.rst}.tex
    pandoc -t latex $page > $doc
done




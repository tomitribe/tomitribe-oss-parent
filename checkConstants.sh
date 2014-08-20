#!/bin/bash

EXP="$1"
for n in foo fooBar fooBarBaz FOO FOO_BAR FOO_BAR_BAZ _fooBar f9 F9_C3 FooBar foo_bar FOO__BAR _FOO foo_ FOO_; do
    echo $n | egrep -q "$EXP"; 
    echo "$? $n"; 
done
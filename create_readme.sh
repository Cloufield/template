#!/bin/bash
for i in ./*/*/
do
touch ${i}/README.md
done

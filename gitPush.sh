#!/bin/bash

lastarg=${@:$#}
beforelast=${@:1:$(($#-1))}

git fetch && git add $beforelast && git commit -m "$last" && git push

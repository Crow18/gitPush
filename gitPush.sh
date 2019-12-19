#!/bin/bash

lastarg=${@:$#}
beforelast=${@:1:$(($#-1))}

git fetch && git add $beforelast && git commit -m "$lastarg" && git push

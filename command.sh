#!/bin/sh

next start &
lighthouse http://localhost:3000 --chrome-flags="--headless --no-sandbox" --output="json"

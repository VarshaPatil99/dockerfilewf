#!/bin/bash
docker build -t ketanvj/wf:v2.0 .
export showlayers='{{ range .RootFS.Layers }}{{ println . }}{{end}}'
docker inspect -f "$showlayers" ketanvj/wf:v2.0
export showSize='{{ .Size }}'
docker inspect -f "$showsize" ketanvj/wf:v2.0
docker run -itd --rm --name myapp1 -p 80:80 ketanvj/wf:v2.0
# Now go to browser type your EC2 instance IP and see if you can get the website.


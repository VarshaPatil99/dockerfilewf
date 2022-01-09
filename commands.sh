#!/bin/bash
docker build -t ketanvj/wf:v1.0 .
export showlayers='{{ range .RootFS.Layers }}{{ println . }}{{end}}'
docker inspect -f "$showlayers" ketanvj/wf:v1.0
export showSize='{{ .Size }}'
docker inspect -f "$showsize" ketanvj/wf:v1.0

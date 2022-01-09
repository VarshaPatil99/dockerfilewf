#!/bin/bash
export showlayers='{{ range .RootFS.Layers }}{{ println . }}{{end}}'
docker inspect -f "$showlayers" ketanvj/wf:v1.0

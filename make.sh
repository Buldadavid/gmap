#!/bin/bash

# vygeneruje vrstevnice
#phyghtmap --polygon=liberec/$poly -o liberec/LIB-SRTM --pbf -j 2 -s 5 -c 200,100 --hgtdir=hgt/ --source=view3 --start-node-id=20000000000 --start-way-id=10000000000 --write-timestamp --max-nodes-per-tile=0

# rozseká mapu na malé části
#java -Xmx2g -jar ./splitter-r654/splitter.jar liberec/liberecky-latest.osm.pbf --max-areas=4096 --max-nodes=1600000 --output-dir=liberec/LIB-SPLITTED

# rozseká výškovou mapu na malé části
#java -Xmx2g -jar ./splitter-r654/splitter.jar liberec/LIB2-SRTM_lon13.19_16.38lat49.72_51.15_view3.osm.pbf --max-areas=4096 --max-nodes=1600000 --output-dir=liberec/LIB2-SPLITTED-SRTM

# vytvoří garmin mapu z malých kousků mapy a vyskove mapy
#java -Xmx2g -jar ./mkgmap-r4923/mkgmap.jar -c ./garmin-style/mkgmap-settings.conf --bounds=bounds/ --precomp-sea=sea/sea/ --dem=hgt/VIEW3/ --max-jobs=4 --mapname="70800001" --overview-mapnumber="70800000" --family-id="7080" --description="LIB-Bulda" --family-name="LIB-Bulda" --series-name="LIB-Bulda" --area-name="liberecky" --country-name="CZ-LIB" --country-abbr="CZ" --region-name="liberecky" --region-abbr="CZ" --product-version=102 --output-dir=liberec/LIB2-Bulda --dem-poly=liberec/lib2.poly --license-file=temp/license.txt --code-page=1250 liberec/LIB2-SPLITTED/*.osm.pbf liberec/LIB2-SPLITTED-SRTM/*.osm.pbf ./garmin-style/tst2-k.txt

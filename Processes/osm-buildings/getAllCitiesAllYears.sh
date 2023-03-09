
mkdir data

while read year; do
  echo "$year"
  while read city; do
	echo "    $city"
	rm tmp.overpassql
	echo "" >> tmp.overpassql
	echo "[timeout:1800][date:\"$year-01-01T00:00:00Z\"];" >> tmp.overpassql
	echo "(" >> tmp.overpassql
	# ! lat/lon are transposed between poly file and overpass syntax
	poly=`cat citypolys/$city.poly | grep " " | awk -F" " '{print $1" "$2}' | tr '\n' ' ' | awk '{$1=$1};1'`
	echo "  way[building~\".\"](poly:\"$poly\");" >> tmp.overpassql
	echo "  node(poly:\"$poly\");" >> tmp.overpassql

	echo "  relation(poly:\"$poly\");" >> tmp.overpassql
	echo ");" >> tmp.overpassql
	echo "out;" >> tmp.overpassql
	echo "" >> tmp.overpassql
	#cat tmp.overpassql
	wget -O "data/buildings_"$city"_"$year".osm" --post-file=tmp.overpassql "https://overpass-api.de/api/interpreter"
	ogr2ogr -skipFailures -f GPKG "data/buildings_"$city"_"$year".gpkg" "data/buildings_"$city"_"$year".osm" multipolygons -oo USE_CUSTOM_INDEXING=NO
  done <cities
done <years




while read year; do
  echo "$year"
  while read city; do
	echo "    $city"
	rm tmp.overpassql
	echo "[timeout:1800][date:\"$year-01-01T00:00:00Z\"];" >> tmp.overpassql
	echo "(" >> tmp.overpassql
	poly=`cat citypolys/$city.poly | grep "E+" | awk -F" " '{print $1" "$2}' | awk -F"E" '{print $1" "$2}' | awk -F" " '{print $3" "$1}' | tr '\n' ' '`
	echo "  way[building~\".\"](poly:\"$poly\");" >> tmp.overpassql
	echo "  node(poly:\"$poly\");" >> tmp.overpassql

	echo "  relation(poly:\"$poly\");" >> tmp.overpassql
	echo ");" >> tmp.overpassql
	echo "out;" >> tmp.overpassql
	echo "" >> tmp.overpassql
	#cat tmp.overpassql
  done <cities
done <years


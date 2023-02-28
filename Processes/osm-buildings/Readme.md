
This process extracts OpenStreepMap buildings from the overpass API, at given dates and for given cities.


Create city polys

script from https://github.com/JusteRaimbault/ogr2poly

mkdir citypolys
python3 ogr2poly.py --prefix citypolys/ --field-name eFUA_name -v subdense-cities.gpkg

Extract coordinates for overpassql script
FIXME pb format coordinates

cat citypolys/Toulouse.poly | grep "E+" | awk -F" " '{print $1" "$2}' | awk -F"E" '{print $1" "$2}' | awk -F" " '{if(NR % 20 == 0) print $3" "$1}' | tr '\n' ' '

Overpass QL request
wget -O test/test.osm --post-file=query.overpassql "https://overpass-api.de/api/interpreter"

Conversion to gpkg
ogr2ogr -f GPKG test/test.gpkg test/test.osm multipolygons



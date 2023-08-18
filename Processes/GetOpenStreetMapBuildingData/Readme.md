

# Overview

This process extracts OpenStreepMap buildings from the overpass API, at given dates and for given cities.

# Usage

 - Create city poly files (for boundaries of the API request) -> script `ogr2poly.py` from https://github.com/JusteRaimbault/ogr2poly
For selected cities: all features in subdense-cities.gpkg (selection from GHSL-FUA layer (see data)
Any ogr compatible format should be fine.

```
   mkdir citypolys
   python3 ogr2poly.py --prefix citypolys/ --field-name eFUA_name -v subdense-cities.gpkg
```

 - Check cities and years: plain text files `cities` and `years`

 - Run collection script `./getAllCitiesAllYears.sh`
   Requires: existing `$CITY.poly` files for each city name in `citypolys` dir ; gdal installed with ogr2ogr command
   Output: from the overpass API, osm and gpkg files in a `data` folder

# Tuning

Modify the overpassql template in the script to tune the osm request.
Request is done on the standard overpass server.



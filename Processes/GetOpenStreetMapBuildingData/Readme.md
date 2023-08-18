

# Process GetOpenStreetMapBuildingData

This process extracts OpenStreepMap buildings from the overpass API, at given dates and for given cities. Data is downloaded for specified functional urban areas.

TODO: make it more flexible to take any list of polygons (or geometry file) as input -> possible coupling with delimitation of study area with isochrones e.g.

# Input data

 - list of names of FUAs (JRC GHSL-FUA layer) in a plain text file

# Output data

 - a `data` folder containing, for each FUA, an `osm` and a `gpkg` file of OpenStreetMap buildings

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



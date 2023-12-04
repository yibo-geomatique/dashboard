
# still in test

import osmnx
import geopandas

osmnx.settings.overpass_settings="[out:json][timeout:1800][date:\"2020-01-01T00:00:00Z\"]"
osmnx.settings.log_console = True

features = osmnx.features.features_from_point((43.604,1.444),{'building': True}, 200)
print(features.ways.dtypes)
features.to_file('test/Toulouse.shp', engine='pyogrio')

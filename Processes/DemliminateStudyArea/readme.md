# Process : ComputeDeliminatationStudyAreas

## Input Data :
*	A central point within the study area (e.g. the main square or town hall)
*	An administrative or statistic geography (e.g. municipalities)

## Output Data : 
*	An isochrone covering the area which can be reached by car within a given time.
*	A dataset with geographies touching the isochrone, including a variable with a percentage of the area inside of the isochrone.

## Method: 
### Step 1: Computing the isochrones
* Program: QGIS
* Install or open the [ORS Tools plugin](https://github.com/GIScience/orstools-qgis-plugin)
* Go to Batch Jobs and choose Isochrones from Point
* Choose travel mode = driving car; Dimension = time, 45 minutes; choose central point within the region as input point
* Execute and save output isochrone

### Step 2: Intersect isochrones with geographies
* Program: QGIS
* Load isochrones and geographies
* Execute model in graphical modeller (set link to model: data_prep_select_geographies_percentage.model3)
* Add geographies manually which do not intersect but are surrounded by municipalities which do

### Step 3: Filter to certain extent
* Use filter to reduce the output geographies to a certain extent (e.g. "perc_inside" >= 0.2)

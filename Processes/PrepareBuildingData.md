# Process: PrepareBuildingData 

This process consists in retrieving source data and preparing a dataset that contains all building data from the source on a given study area (usually functional urban area of a city) at a given timestamp. The main complexity consists in :
* identifying the modalities to retrieve data on the temporal scope of interest when going back in time
* identifying how to download data that correspond to the study area, how to assembly them if you download several data (and then be careful for duplicated items) and how to crop the study area.
  

# Specialisation : PrepareBuildingData on french cities with BDTopo data source

## Step 1: Download Topographic Data from Geoservice Web

Step 1 consists in downloading/retrieving building data on the scope of the map : inital and final dates as well as spatial extent (functional urban area of a given city). 
These functional urban areas can be computed with the process DeliminateStudyArea described on this git or by using the QGIS extension ORS Tool to compute a 45 mn car isochrone arod the city center of interest. 

For FR-BDTopo, data can be retrieved from geoservice.ign.fr data retrieval : whole France, region, department. Whole France is very heavy so we identify departments and region that intersect the spatial scope of the map and retrieve either the region of department   
https://geoservices.ign.fr/bdtopo#telechargementshpdept 
The download contains several files we keep the BATI. 

## Step 2: Data Cleaning and Merging

* We load the BATI layers
* * Due to version differences in the dataset, the 2011 building data required merging of various building themes. This was accomplished using QGIS and the "Merge Vector Layers" algorithm. This algorithm combines multiple vector layers of the same geometric type into a single layer.

<p float="left">
  <img src="/img/buildingFusion.png" width="48%" />
  <img src="/img/buildingIntersection.png" width="48%" /> 
</p>

*Figure 2: Isochrone area for Toulouse.*

## Step 3: Intersect Building Layers with Isochrones
* Program: QGIS
* We used spatial analysis tools in QGIS to intersect the building layers with the isochrones.
* This step helped in refining the dataset to include only buildings within our defined study area, enhancing the accuracy of our subsequent analyses.

![Description de l'image](/img/buildingIntersectWithIsochrone.png)

*Figure 3: Intersection.*

## Step 4: Final Data Layer Access
* The final data layers for each city, post-processing, are stored on the Subdense FTP server.
* These layers can be found in the `Bdtopo_Dataset` directory.
* This centralized storage allows for easy access and retrieval of the processed data for further analysis or application.

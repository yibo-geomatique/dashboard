# Process: GetBdTopoBuildingData (for Strasbourg FUA and Toulouse FUA)

## Step 1: Download Topographic Data from Geoservice Web(https://geoservices.ign.fr/)

Step 1 consists in downloading/retrieving building data on the scope of the map : inital and final dates as well as spatial extent (functional urban area of a given city). These functional urban areas are computed with the process DeliminateStudyArea described on this git.

For FR-BDTopo, data retrieval can be done either : whole France, region, department. We identify departments that intersect the scope of the maps, i.e. the functional urban area of Strasbourg and of Toulouse. 

## Step 2: Data Cleaning and Merging
* Program: QGIS
* We combined the layers from different departments that fall within the isochrones to create a comprehensive dataset.
* We specifically targeted building data, filtering out irrelevant information to focus on the structural changes over the years.
* Due to version differences in the dataset, the 2011 building data required merging of various building themes. This was accomplished using QGIS and the "Merge Vector Layers" algorithm. This algorithm combines multiple vector layers of the same geometric type into a single layer.

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

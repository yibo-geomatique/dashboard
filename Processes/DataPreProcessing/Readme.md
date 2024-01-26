# Process: GetBdTopoBuildingData (for Strasbourg and Toulouse)

## Step 1: Download Topographic Data from Geoservice Web
We downloaded the BdTopo data for 2011 and 2021, focusing on the departments within the isochrone area, which is 45 minutes by car from the centers of Strasbourg and Toulouse. This approach ensured that the data was highly relevant to our study's specific geographical focus.

## Step 2: Data Cleaning and Merging
* Program: QGIS
* We combined the layers from different departments that fall within the isochrones to create a comprehensive dataset.
* We specifically targeted building data, filtering out irrelevant information to focus on the structural changes over the years.
* Due to version differences in the dataset, the 2011 building data required merging of various building themes. This was accomplished using QGIS and the "Merge Vector Layers" algorithm. This algorithm combines multiple vector layers of the same geometric type into a single layer.

## Step 3: Intersect Building Layers with Isochrones
* Program: QGIS
* We used spatial analysis tools in QGIS to intersect the building layers with the isochrones.
* This step helped in refining the dataset to include only buildings within our defined study area, enhancing the accuracy of our subsequent analyses.

## Step 4: Final Data Layer Access
* The final data layers for each city, post-processing, are stored on the Subdense FTP server.
* These layers can be found in the `Bdtopo_Dataset` directory.
* This centralized storage allows for easy access and retrieval of the processed data for further analysis or application.

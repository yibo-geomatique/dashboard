# Process : ComputeBuildingEvolution 

## Input Data :
Building Dataset Preparation:

* Data Acquisition : For each city of interest (e.g., Strasbourg), building data is downloaded from the BdTopo database (geoservice web). This includes data for different years, such as 2011 and 2021.

* BdTopo Data Consolidation for 2011 : Due to version differences in the dataset, the 2011 building data required merging of various building themes. This was accomplished using QGIS and the "Merge Vector Layers" algorithm. This algorithm combines multiple vector layers of the same geometric type into a single layer.

* Data Naming Policy : Once merged, the layers are named following a specific naming proposed by Subdense team, like `Building_Strasbourg_2011` and `Building_Strasbourg_2021`. The naming may vary depending on the scale of the study area (city or neighborhood level, etc.).

* Select the data for a chosen study area 

    - Use QGIS to select building for both 2011 and 2021 periods.  

    - Name the layers as `Building_city_year` following the recommendations made in Subdense.  


## Output Data :
A dataset corresponding to evolutions of buildings data, with the schema depicted in this folder, with the correct file naming, and a description of this dataset, through a Subdense “Dataset” description so that others can know it exists and reuse it.

### BuildingEvolution_Strasbourg_2011_2021:

This dataset classifies the evolution of buildings in Strasbourg from 2011 to 2021, using five distinct typologies to categorize the changes.The dataset includes the following five typologies:
- Appeared: Buildings that were constructed between 2011 and 2021.
- Disappeared: Buildings that existed in 2011 but were no longer present by 2021.
- Merged: Buildings that have combined with other structures or buildings between the two years.
- Split: Buildings that have been divided into multiple structures or units over the time period.
- Stable: Buildings that have not undergone significant changes or alterations between 2011 and 2021.

### MatchingLinks_BdTopo_Strasbourg_2011_2021:

This layer illustrates the matching links between homologous features from the 2011 and 2021 datasets. These links are instrumental in tracing and understanding the evolution of each building or structure over the decade.


## Method : Automatic production of building evolution data
To process this data, we used the change detection algorithm developed by Lastig, specializing in surface matching. This method allowed us to effectively and accurately identify matching links between buildings from different years. Through these links, we have been able to produce a rich dataset that details the evolution of urban building structures in Strasbourg, highlighting various types of change.
## Refinement and Quality check 
Once building evolution features have been produced, some refinements can be applied.  

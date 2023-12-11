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

For a thorough and detailed understanding of our "BuildingEvolution" dataset's structure, we invite you to consult the data structure schema available in "ComputeBuildingEvolution." This schema provides comprehensive information on the data fields, their meanings, and their use in the context of our urban evolution analysis.The "BuildingEvolution" dataset is available in two main formats to ensure optimal compatibility and accessibility:

- Shapefile `.shp`: A widely used and recognized format in GIS, ideal for extended compatibility with various mapping tools and software.
- GeoPackage `.gpkg`: A more modern format offering better performance and greater flexibility, particularly suited for managing complex and voluminous data. 

### MatchingLinks_BdTopo_Strasbourg_2011_2021:

This layer illustrates the matching links between homologous features from the 2011 and 2021 datasets. These links are instrumental in tracing and understanding the evolution of each building or structure over the decade.


## Method : Automatic production of building evolution data
To process this data, we used the change detection algorithm developed by Lastig, specializing in surface matching. This method allowed us to effectively and accurately identify matching links between buildings from different years. Through these links, we have been able to produce a rich dataset that details the evolution of urban building structures in Strasbourg, highlighting various types of change.

## Requirements for Windows Users:

1. Install GitHub Desktop: Necessary for functionalities such as cloning and pushing source code. GitHub Desktop can be easily installed from their official website.

2. Install Visual Studio Code: Essential for implementing or running existing code. Download and install from Visual Studio Code.

3. Install Python 3: Ensure that Python 3 is installed on your system. It can be downloaded from Python's official website.

4. Clone the Matching Folder:

- Go to the `Subdense Matching` repository on GitHub.
- Use GitHub Desktop to clone the repository to a local directory of your choice.

5. Open the Local Repository in Visual Studio Code:

- Navigate to the local `matching` repository.
- Right-click and select Open with Visual Studio Code.

6. Install Required Modules:

- `jpype`: A module that allows Python programs full access to Java class libraries. Install using `pip3 install jpype`.
- `shapely`: A Python package for manipulation and analysis of planar geometric objects. Install using `pip3 install shapely`.
- `numpy`: A fundamental package for scientific computing in Python. Install using `pip3 install numpy`.
- `geopandas`: An open-source project to make working with geospatial data in Python easier. Install using `pip3 install geopandas`.

 Note: Use `pip3` if you have multiple versions of Python on your computer. Consider proxy settings if applicable.

7. Add Input Data:

- Place your input data in the folder `/data/bati`.
- Add two shapefile layers representing the building data at times T1 and T2.

8. Modify and Run the Script:

- Open `matching.py` in Visual Studio Code.
- Modify the paths for the input data according to your layer names:
  - layer1 = `./data/bati/Building_Strasbourg_2011.shp` to layer1 = `./data/bati/study_area_timeT1.shp`
  - layer2 = `./data/bati/Building_Strasbourg_2021.shp` to layer2 = `./data/bati/study_area_timeT2.shp`
  - Run `matching.py` in Visual Studio Code.

9. Output:

- Two new files (`.gpkg` or `.shp` depending your choice) `BuildingEVOLUTION_Strasbourg_2011_2021` and `MatchingLinks_Strasbourg_2011_2021` are automatically created.
- Open these files in QGIS for analysis and visualization.
- A `BuildingEvolutionStyle` file is available in the "ComputeBuildingEvolution" folder for optimal display of evolution typologies.


## Refinement and Quality check 
Once building evolution features have been produced, some refinements can be applied.  

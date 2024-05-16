# Process : ComputeBuildingEvolution 

## Input Data :
Building Dataset Preparation:

* Data Acquisition : For each city of interest (e.g., Strasbourg), building data is downloaded from the BdTopo database (geoservice web). This includes data for different years, such as 2011 and 2021.

* BdTopo Data Consolidation for 2011 : Due to version differences in the dataset, the 2011 building data required merging of various building themes. This was accomplished using QGIS and the "Merge Vector Layers" algorithm. This algorithm combines multiple vector layers of the same geometric type into a single layer.

* Data Naming Policy : Once merged, the layers are named following a specific naming proposed by Subdense team, like `Strasbourg_Building_2011` and `Strasbourg_Building_2021`. The naming may vary depending on the scale of the study area (city or neighborhood level, etc.).

* Select the data for a chosen study area 

    - Use QGIS to select building for both 2011 and 2021 periods.  

    - Name the layers as `City_Building_Year` following the recommendations made in Subdense.  


## Output Data :
A dataset corresponding to evolutions of buildings data, with the schema depicted in this folder, with the correct file naming, and a description of this dataset, through a Subdense “Dataset” description so that others can know it exists and reuse it.

### BuildingEvolution_Strasbourg_2011_2021:

This dataset classifies the evolution of buildings in Strasbourg from 2011 to 2021, using five distinct typologies to categorize the changes.The dataset includes the following five typologies:
- Appeared: Buildings that were constructed between 2011 and 2021.
- Disappeared: Buildings that existed in 2011 but were no longer present by 2021.
- Merged: Buildings that have combined with other structures or buildings between the two years.
- Split: Buildings that have been divided into multiple structures or units over the time period.
- Stable: Buildings that have not undergone significant changes or alterations between 2011 and 2021.
- Recomposed: 

For a thorough and detailed understanding of our "BuildingEvolution" dataset's structure, we invite you to consult the data structure schema available in "BuildingEvolutionComputation." This schema provides comprehensive information on the data fields, their meanings, and their use in the context of our urban evolution analysis.The "BuildingEvolution" dataset is available in three main formats to ensure optimal compatibility and accessibility:

- Shapefile `.shp`: A widely used and recognized format in GIS, ideal for extended compatibility with various mapping tools and software.
- GeoPackage `.gpkg`: A more modern format offering better performance and greater flexibility, particularly suited for managing complex and voluminous data.
- Geojson `json`:

### MatchingLinks_BdTopo_Strasbourg_2011_2021:

This layer illustrates the matching links between homologous features from the 2011 and 2021 datasets. These links are instrumental in tracing and understanding the evolution of each building or structure over the decade.


## Method : Automatic production of building evolution data
To process this data, we used the change detection algorithm developed by Lastig, specializing in surface matching. This method allowed us to effectively and accurately identify matching links between buildings from different years. Through these links, we have been able to produce a rich dataset that details the evolution of urban building structures in Strasbourg, highlighting various types of change.

## Requirements for Windows Users:

1. **Install GitHub Desktop**: Necessary for cloning and pushing source code. 
   Available at [GitHub Desktop's official website](https://desktop.github.com/).

2. **Install Visual Studio Code**: Essential for code implementation and execution. 
   Download from [Visual Studio Code's website](https://code.visualstudio.com/).

3. **Install Python 3**: Ensure Python 3 is installed on your system. 
   Download from [Python's official website](https://www.python.org/downloads/).

4. **Clone the Subdense Matching Repository**: 
   - Visit the [Subdense Matching repository on GitHub](https://github.com/subdense/matching).
   - Use GitHub Desktop to clone it to a local directory.

5. **Open Local Repository in Visual Studio Code**:
   - Navigate to the local `matching` repository.
   - Right-click and select "Open with Visual Studio Code".

6. **Install Required Modules**: 
   - Install jpype1, shapely, numpy,networkx, tqdm, pyogrio and geopandas using `pip3 install [module_name]`.
   - Use `pip3` if multiple Python versions are installed; consider proxy settings if applicable.

7. **Add Input Data**: 
   - Place input data in `/data/bati`, with two layers representing building data at times T1 and T2.

8. **Run the Script**:
   - Open `run.py` in Visual Studio Code.
   - This script automates the execution of `matching.py` and applies the necessary data processing.
   - Modify the script if needed to align with your data paths and settings.

9. **Output**:
   - After executing `run.py`, two new files are generated in the `output_data` folder: `FR-STR_EVOLUTION` and `FR_STR_Matching_Links` in chosen formats (.gpkg, .geojson, .shp).
   - Open these files in QGIS for analysis and visualization, using the `BuildingEvolutionStyle` file from the "ComputeBuildingEvolution" folder for optimal display.


## Alternative Execution Method via Terminal

For users comfortable with the command line, the script can also be executed via a terminal using the following command:

```bash
python run.py -layer1 ./data/fr/strasbourg_building_2011.gpkg -layer2 ./data/fr/strasbourg_building_2021.gpkg -attributes '["HAUTEUR","ID"]' -output_prefix FR_STR -java_memory 16G
```

This command runs `run.py` with specific parameters:

- `-layer1` and `-layer2` specify the paths to the building data for the years 2011 and 2021, respectively.
- `-attributes` allows the inclusion of specific attributes in the analysis, such as 'HAUTEUR' and 'ID'.
- `-output_prefix` sets the prefix for the output files, in this case 'FR_STR' for Strasbourg, France.
- `-java_memory` allocates Java memory for the process, set here to 16 Gigabytes.

Ensure that the paths and parameters are adjusted as per your specific data and system requirements.

## Refinement and Quality Check
- Further refinements and quality checks are applied post-production to ensure the accuracy and reliability of the building evolution features.



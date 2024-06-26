# Process : ComputeBuildingEvolution 

## Input Data 1 : BuildingDataSet_year1
BuildingDataSet at the oldest time (see Process BuildingDataPreparation)
## Input Data 2 : BuildingDataSet_year2 
BuildingDataSet at a more recent time (see Process BuildingDataPreparation)

## Output Data 1: BuildingEvolutionDataSet  (and its metadata)
Dataset corresponding to evolutions of buildings data, structured after the BuildingEvolutionSchema depicted in this folder, with the correct file naming, that is prepared as a shapefile, and as a geopackage containing the dataset plus a dedicated stylesheet (BuildingEvolution_style.qml) and ready to display. (Shapefile `.shp`: A widely used and recognized format in GIS. GeoPackage `.gpkg`: A more modern format offering better performance and greater flexibility)
A description of this dataset within Subdense “Dataset” registry.

## Output Data 2 : MatchingLinksSet (and its metadata) 
MatchingLinks between homologous features from the 2011 and 2021 datasets. 

## Method : Step 1 : Produce "raw" BuildingEvolution from Building Data

This first step is fully automatic. It uses matching libraries to produce matching links and automatically derive BuildingEvolution from these links.  

## Requirements for Windows Users:

1. **Clone the Subdense Matching Repository**:
   - If not installed yet install GitHub Desktop available at [GitHub Desktop's official website](https://desktop.github.com/).
   - Visit the [Subdense Matching repository on GitHub](https://github.com/subdense/matching).
   - Use GitHub Desktop to clone it to a local directory.
  
 2. **Add Input Data**: 
   - Place input data in `/data/bati`, with two layers representing building data at times T1 and T2.

3. **Install Python 3**:
   - Ensure Python 3 is installed on your system. Download from [Python's official website](https://www.python.org/downloads/).
   - Install jpype1, shapely, numpy,networkx, tqdm, pyogrio and geopandas using `pip3 install [module_name]`.
   - Use `pip3` if multiple Python versions are installed; consider proxy settings if applicable.
   - 
4. **Option1 : use Visual Studio** :
 - Install Visual Studio Code from [Visual Studio Code's website](https://code.visualstudio.com/).
 - Open Local Repository in Visual Studio Code:
   - Navigate to the local `matching` repository.
   - Right-click and select "Open with Visual Studio Code".
   - Open `run.py` in Visual Studio Code.
   - This script automates the execution of `matching.py` and applies the necessary data processing.
   - Modify the script if needed to align with your data paths and settings.

4bis. **Option2 : use command line** : 
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

5. **Output**:
   - After executing `run.py`, two new files are generated in the `output_data` folder: `FR-STR_EVOLUTION` and `FR_STR_Matching_Links` in chosen formats (.gpkg, .geojson, .shp).
   - Open these files in QGIS for analysis and visualization, using the `BuildingEvolutionStyle` file from the "ComputeBuildingEvolution" folder for optimal display.


## Method step 2 : Refinement and Quality Check

This step aims at refining the evolution to identify evolutions probably related by product evolution and to perform some first quality control on the result. 



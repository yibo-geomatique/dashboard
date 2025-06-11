# Process : ComputeBuildingChange  

## InputData 1 : BuildingDataSet_year1
BuildingDataSet at the oldest time (see Process BuildingDataPreparation)
## InputData 2 : BuildingDataSet_year2 
BuildingDataSet at a more recent time (see Process BuildingDataPreparation)

## OutputData 1 : BuildingChangeDataSet  (and its metadata)
Dataset corresponding to changes detected in buildings data and further refined, structured after the BuildingChangeSchema depicted in this folder, with the correct file naming, that is prepared as a shapefile, and as a geopackage containing the dataset plus a dedicated stylesheet (BuildingEvolution_style.qml) and ready to display. (Shapefile `.shp`: A widely used and recognized format in GIS. GeoPackage `.gpkg`: A more modern format offering better performance and greater flexibility)
A description of this dataset within Subdense “Dataset” registry.

## OutputData 2 : MatchingLinksSet (and its metadata) 
MatchingLinks between homologous features from the 2011 and 2021 datasets. 

## Method overview

Produce "raw" BuildingChange data based on two BuildingDataSet at time t1 and t2 (Step 1 below) 
Refine the BuildingChange items to identify changes that are related to changes in products only (i.e. data upgrades), and apply some quality control and some visual refinement  (Step 2 below).

## Step 1 : Produce "raw" BuildingChange from Building Data

This first step is fully automatic. It uses matching libraries to produce matching links and automatically derive BuildingChanges from these links.

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

   **Option2 : use command line** : 
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

At the end of step 4, after running the code, two new files are generated in the `output_data` folder: `xxx_CHANGE` and `xxx_Matching_Links` in chosen formats.

Prepare an entry in the Dataset.md registry to register these data -at least the Evolution dataset- and put the minimal info. 

5. **Apply Stylesheet**:
   - Open xxx_CHANGE in QGIS for analysis and visualization, apply the `BuildingChangeStyle` file from the "ComputeBuildingChange" folder for optimal display.

## Step 2 : Refinement and Quality Check

This step 2 aims at 1) tagging building changes that are probably caused by changes in the product and 2) performing a first quality check by viewing the building change data and displaying buildings and orthoimagery. 

### Objectives

- **Data Refinement**: Identify building changes related to changes in the BdTopo product and in the real world.
- **Quality Control**: Perform an initial quality control to ensure data accuracy.

### Process
The [RefineEvolutionBDTopo.py](RefineEvolutionBDTopo.py) script is used to achieve the following refinements:

- BuildingsChanges of type `construction` with an area less than 50 m² were identified and their type was changed to `stable`. The `changeProduct` field was updated to `Yes` and `changeEntities` to `No`.
- BuildingsChanges of type `split` were identified and their type was also changed to `stable`. The `changeProduct` field was updated to `Yes` and `changeEntities` to `No`.
- The data were verified using orthophoto images to ensure the quality of the results. The imagery is accessed to using specific services accessible from QGIS. 





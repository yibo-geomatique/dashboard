# Process: PrepareBuildingData 

This process consists in retrieving source data and preparing a dataset that contains all building data from the source on a given study area (usually functional urban area of a city) at a given timestamp. The main complexity consists in :
* identifying the modalities to retrieve data on the temporal scope of interest when going back in time
* identifying the study area, identifying how to download data that correspond to the study area, how to assembly them if you download several data (and then be careful for duplicated items) and how to crop the study area.

## Generic step : identifying the functional urban area of a city 
Functional urban areas can be computed with the process DeliminateStudyArea described on this git or by using the QGIS extension ORS Tool to compute a 45 mn car isochrone arod the city center of interest.

## Generic step: create metadata
Option 1 : Create an identifier for the dataset on the Dataset.md registry, FR-XXXX-FUA-Building-YYYY or (EN-.., DE...) and write down some description in particular to document its provenance. 
Option 2 : Directly create an identifier for the targeted BuildingEvolution dataset you want to create with the Building data and the Building data is described within the description of the BuildingEvolution provenance.

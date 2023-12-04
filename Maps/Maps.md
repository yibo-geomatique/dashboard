# Maps

List of maps and associated description. This list is very important to give shared identifiers to maps within the dashboard and ensure that statements referring in an un ambiguous manner to maps can be shared. 

A description can be enclosed in this registry or in a separate file.

*******
 
 1. [Map_GHS_POP_ALLCSR_2020](#Map_GHS_POP_ALLCSR_2020)
 2. [Map_Building_Evolution_Liverpool_2011_2021](#Map_Building_Evolution_Liverpool_2011_2021)
 3. [Map_Building_Evolution_Strasbourg_2011_2021](#Map_Building_Evolution_Strasbourg_2011_2021)
 4. [Map naming policy](#Map-naming-policy)
 5. [Map description template](#Map-description-template)
*******

## Map_GHS_POP_ALLCSR_2020
* **Title** : 
* **Provenance** : The map was produced with the process CreateGHS_POP_2020_ALLCSR_reduced
* **Usages** : The map gives an overview of the population density within all casestudy regions.

## Map_Building_Evolution_Liverpool_2011_2021
* **Title** : 
* **Styles** :The styles and colors used on the map are explained by the legend. Each color in the legend corresponds to a type of urban change: purple for "merged," blue for "split," green for "appeared," a special symbol in purpule for "aggregated," a special symbole in red for "disappeared," and gray for "stable."
* **Provenance** :This map was created using building data from the OSMASTERMAP database spanning from 2011 to 2021 for a specific area in Liverpool.The methodology included a comparative analysis of building footprints to identify changes.
* **Usages** : Quickly identify areas where there has been significant growth (by focusing on "appeared" buildings), or conversely, areas where buildings have been removed or demolished (by focusing on "disappeared"). The split, merged and aggregated types provide information on how land use or zoning may have changed. For example, in developing urban areas, you might find more buildings that have been split to make way for new construction.

## Map_Building_Evolution_Strasbourg_2012_2022
* **Title** : Evolutions of buildings features in BDTopo(r) betwwen 2012 and 2022 
* **Styles** :The styles and colors used on the map are explained by the legend. Each color in the legend corresponds to a type of urban change: purple for "merged," blue for "split," green for "appeared," a special symbol in purpule for "aggregated," a special symbole in red for "disappeared," and gray for "stable."
* **Provenance** :This map was created by portraying the result of a process ComputeBuildingEvolution applied to BDTopo building data at two timestamps, 2012 and 2022, on Strasbourg. Only a sample is displayed here and the full geopackage map can be obtained by asking the author. 
* **Usages** : Quickly identify areas where there has been significant growth (by focusing on "appeared" buildings), or conversely, areas where buildings have been removed or demolished (by focusing on "disappeared"). The split, merged and aggregated types provide information on how land use or zoning may have changed. For example, in developing urban areas, you might find more buildings that have been split to make way for new construction


## Map-naming-policy
The name of the map is a set of characterstrings attached with "_".
Characterstrings : 
* MAP : useful to distinguish the map from the dataset but can be omitted if there is no ambiguity
* Name of the dataset used to build the map (cf dataset naming policy on this git) 
* Id : specific additional characters to distinguish different datasets when necessary
* WebCrop/Full : to add whenever it is necessary to the name of the image file to specify if it is either a light version for the web site (WebCrop) or the full high resolution version (Full) to be exchanged through another file transfer system  

        
## Map-description-template
* **Title** : Title of the map, to be displayed on the webpage
* **Styles** : Caption describing the Keys/Styles (possibly name of  a jpeg file put in the same folder) if they are not integrated with the map picture
* **Provenance** : Textual description of how the map was produced, what keys were used. This description can get enriched while the dataset is revised and improved (quality check and so on).
* **Usages** : References to narratives that have been produced with this dataset
* **Feedback** : Comments related to the map, interpretation, identification of quality issues and so on
 



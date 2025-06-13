# Concepts

This registry lists concepts useful to study suburban densification, possibly to highlight dissimilarities between their meanings across countries, and to attach the concept to data (either to a formal concept definition in a vocabulary, or to data that can be used to portray the concept on a map).  

*******
[Suburb](#suburb)
[Urban Density](#urban-density)
[Urban Densification](#urban-densification)
[Building](#building)
[BuidingChange](#buildingchange)
[BuiltUp Area](#builtuparea)
[Plot](#Plot)
[Raising-RoofStacking-Surelevation](#Raising-RoofStacking-Surelevation)
[Vacant plot development](#Vacant-plot-development)
[Functional Urban Area](#functional-urban-area)
[Public Space](#public-space)
[Concept template](#concept-template)
*******

## Suburb	
* **Definition** : (after wikipedia) A suburb (more broadly suburban area) is an area within a metropolitan area which is predominantly residential and within commuting distance of a large city. (after hypergeo, see below) The word has slightly different meaning across countries.
* **UK definition**: Urban and suburban (Charmes & Keil, 2015; Bibby et al., 2020).
* **French definition** : Banlieue. "In France today the banlieue or suburb is a built-up belt that agglomerates widely diverse territories, from communes with a long history to small village units that have become extremely large with the arrival of housing estates and the tower blocks of the 1960s and 1970s" : quote from Herve Vieillard-Baron  https://hypergeo.eu/suburb/?lang=en
* **Relation with data and metadata** : the concept itself is defined as a wikidata item, https://www.wikidata.org/wiki/Q188509, yet there is no official data or systematic method to portray it on a map.
* **Relation with densification** :  some suburbs are low density area close to city centers and in that respect good candidate for creating more housing units. 

## Urban-Density
* **Definition** : Population density is defined as the number of individuals or the number of inhabitant on a given surface.  Urban density is population density in urban surfaces. The french IAURIF uses 4 measures for urban density : 1) housing units density (number of housing units per 100m2), 2) inhabitants density (number of inhabitants per 100m2) 3) buildings ground coverage coefficient for an urban block 4) buildings floors coefficient for an urban block.
* **Relation with data** :
    * Urban density is described using 5 classes in urban atlas, grid data acquired on whole Europe at several time, nomenclatura [link to doc](https://land.copernicus.eu/user-corner/technical-library/urban_atlas_2012_2018_mapping_guide_v6.3).
    * There exist lots of indicators to evaluate and portray density. Refer to: [link to doc](https://docs.google.com/spreadsheets/d/1fUMyoBsP0JiG_2uW1zanIKPdACSpc1A4_i-8C__CBfI/edit#gid=0)

## Urban-Densification
* **Definitions** : urban densification can be interpreted 1) an increase of density and more specifically a “net increase of the number of housing units” within the pre-existing built-up area (Broitmanand Koomen, 2015) 2) as the actions taken to achieve this increase, more specifically public actions. Authors distinguish Soft and hard densification (Ouati-Morel, 2015) as well as Planned and unplanned (Dunning et al., 2020). 
* **Relation with data** :
    * Can be represented as an evolution of density values
    * Building changes derived from buildings database can be used to observe the evolution of buildings entities 
* **Illustration and pedagogic material** : see [link to doc](https://www.edugeo.fr/support/teaching-book/view/46) the description of the sprawling and densification of the city of Vannes in a pedagogic material for french pupils 

## Building
* **Definitions** : (after Wikipedia) A building or edifice is an enclosed structure with a roof and walls, usually standing permanently in one place, such as a house or factory. 
* **Relation with data** : In the french topographic product, BDTopo, buildings (in french : bâtiments) are defined as : An above-ground structure that is used to house people, animals or objects, to produce economic goods or to provide services, and refers to any structure permanently built or erected on its site. (Construction au-dessus du sol qui est utilisée pour abriter des humains, des animaux, des objets, pour la production de biens économiques ou pour la prestation de services et qui se réfère à toute structure construite ou érigée de façon permanente sur son site). They are represented through a specific class called Bâtiment. See more on the description of DataSource BDTopo.

## BuildingChange
* **Definition** : what happens to Buildings through time, either to a Building entity or to a set of Buildings, in particular in connection with increasing or diminishing the number of dwellings for a given area. 
* **Broader than** : concept Raising-RoofStacking-Surelevation, Overbuilding-UrbanismeSurDalle  
* **Further characterisation of that generic concept** : This is a very rough definition and more specific and unambiguous Building Changes words are needed to discuss densification. See dedicated Portfolio in this dashboard.    
* **Relation with data** :
** A conceptual model is proposed in this dashboard to structure in data the detection and interpretation of BuildingChange data : changes observed in building data, changes in real buildings . A replicable procedure to produce such data based on topographic building data is proposed, see BuildingChangeComputation process. The derived data are associated with metadata that are necessary to interpret correctly the different changes as changes in the source building data only (and no changes in reality) or as changes in reality.
** Other Datasource can be opendata related to building permits, in France : autorisations d'urbanisme.

## BuiltUpArea
* **Definition** : an area where there already exist buildings. 

## Plot
* **Definition** : parcel of land owned or meant to be owned by some owner(s) (after Wikipedia, land lot). In French : parcelle cadastrale. 
* **Relation with data** : plot/parcels are defined with a geometry and different attributes (often not openly accessible).   

## Raising-RoofStacking-Surelevation  
* **Definition** : we use this term to refer to increasing the height of an existing buildings. This is a concept of interest to produce more housing units without changing the footprint. 
* References : https://www.sciencedirect.com/science/article/pii/S2210670717307849  

## Overbuilding-UrbanismeSurDalle
* **Definition** : Covering existing railways, roads, to create a new plot on which to develop new buildings.
* **french** : In French it is called "Urbanisme de dalle".
* **connection with densification** : It is important to consider the criteria of soil sealing when developing such projects that often have a very negative impact wrt soil sealing. 



## Vacant-plot-development



## Functional-Urban-Area
* **Definitions** : (after [EC glossary for statistics](https://ec.europa.eu/eurostat/statistics-explained/index.php?title=Glossary:Functional_urban_area)) Short definition: a functional urban area consists of a city and its commuting zone. Functional urban areas therefore consist of a densely inhabited city and a less densely populated commuting zone whose labour market is highly integrated with the city (OECD, 2012).    
* **Relation with data** : can be computed using a 45mn isochrone.

## Public-Space
* [see](https://unhabitat.org/sites/default/files/2020/07/indicator_11.7.1_training_module_public_space.pdf)

## Concept-template
* **Definitions** :
    * Universal definition if it exists. references to key papers, free text comments to explain possible distinctions across space or time that need to be considered during comparison.
    *  French definition
    *  german definition
    *  UK definition 
* **Relation with data** : existing metadata or data connected to the concept, e.g. concept in a formal model, or data that can be used to portray the concept on a map (possibly link with DataSource Dataset or Processes). 
* **Illustration, pedagogic material** : links to examples to illustrate the definition on real specific cases (not necessarily within the selected cities)

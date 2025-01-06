# Concepts

This is a registry to list concepts useful to study suburban densification and for which

1. it is relevant to go beyond commonsense knowledge and possibly to highlight elements to have in mind when comparing situations across times and cities
2. it is useful to specify how the concept can be observed through data.

This list is written mostly in english but distinguishes local concepts/words that can be different even if they are used as the translation.
  

*******
 1. [Suburb](#suburb)
 2. [Urban Density](#urban-density)
 3. [Urban Densification](#urban-densification)
 4. [Building](#building)
 5. [BuidingChange](#buildingevolution)
 6. [Functional Urban Area](#functional-urban-area)
 7. [Public Space](#public-space)
 8. [Concept template](#concept-template)
*******

## Suburb	
* **Universal definition or comparison across countries** : see hypergeo below for a comparison across countries
* **UK definition**: Urban and suburban (Charmes & Keil, 2015; Bibby et al., 2020).
* **French definition** : Banlieue. "In France today the banlieue or suburb is a built-up belt that agglomerates widely diverse territories, from communes with a long history to small village units that have become extremely large with the arrival of housing estates and the tower blocks of the 1960s and 1970s" : quote from Herve Vieillard-Baron  https://hypergeo.eu/suburb/?lang=en
* **German definition** : 
* **Illustration through maps** : 
* **Relation with data** : the concept itself does not appear in geodata 

## Urban-Density
* **Definition** : in this dashboard, density refers to urban density. Population density is defined as the number of individuals or the number of inhabitant on a given surface.  Urban density is population density in urban surfaces. The french IAURIF uses 4 measures for urban density : 1) housing units density (number of housing units per 100m2), 2) inhabitants density (number of inhabitants per 100m2) 3) buildings ground coverage coefficient for an urban block 4) buildings floors coefficient for an urban block.
* **Relation with data** :
    * Urban density is described using 5 classes in urban atlas, grid data acquired on whole Europe at several time, nomenclatura [link to doc](https://land.copernicus.eu/user-corner/technical-library/urban_atlas_2012_2018_mapping_guide_v6.3).
    * There exist lots of indicators to evaluate and rend density or densification. Refer to: [link to doc](https://docs.google.com/spreadsheets/d/1fUMyoBsP0JiG_2uW1zanIKPdACSpc1A4_i-8C__CBfI/edit#gid=0)

## Urban-Densification
* **Definitions** : urban densification should not be interpreted as a mere variation of density but rather as an action or process to increase the number of inhabitants of an urban space. A definition is “net increase of the number of housing units” within the pre-existing built-up area (Broitmanand Koomen, 2015). Authors distinguish Soft and hard densification (Ouati-Morel, 2015) as well as Planned and unplanned (Dunning et al., 2020)
* **Relevant info to represent densification** : relevant information to study densification is : the building ages
* **Illustration through maps** : see [link to doc](https://www.edugeo.fr/support/teaching-book/view/46) the description of the sprawling and densification of the city of Vannes in a pedagogic material for french pupils 
* **Relation with data** :
    * Can be represented as an evolution of density values
    * Buildings database can also be used to observe hard densification through the evolution of buildings entities as they can be observed 

## Building
* **Definitions** : (from Wikipedia, which quotes the geographer Max Egenhofer) A building or edifice is an enclosed structure with a roof and walls, usually standing permanently in one place, such as a house or factory. 
* **Relation with data** : In the french topographic product, BDTopo, buildings (in french : bâtiments) are defined as : An above-ground structure that is used to house people, animals or objects, to produce economic goods or to provide services, and refers to any structure permanently built or erected on its site. (Construction au-dessus du sol qui est utilisée pour abriter des humains, des animaux, des objets, pour la production de biens économiques ou pour la prestation de services et qui se réfère à toute structure construite ou érigée de façon permanente sur son site). They are represented through a specific class called Bâtiment. See more on the description of DataSource BDTopo.

## BuildingChange
* **Definition** : we use the term BuildingChange to refer to what can happen to Buildings through time. This can be defined more precisely along three distinct categories of things, after [DOLCE ontology](https://arxiv.org/pdf/2308.01597) : changes of state, events, processes. 
* **Relation with data** : a BuildingChange data schema is proposed in this dashboard to structure data that describe changes of states observed in data and/or changes of states in reality. A replicable procedure to produce such data based on topographic building data is proposed in this dashboard, see BuildingChangeComputation process. The derived data are associated with metadata that are necessary to interpret correctly the different changes as changes in the source building data only (and no changes in reality) or as changes in reality.     

## Functional-Urban-Area
* **Definitions** : (after [EC glossary for statistics](https://ec.europa.eu/eurostat/statistics-explained/index.php?title=Glossary:Functional_urban_area)) Short definition: a functional urban area consists of a city and its commuting zone. Functional urban areas therefore consist of a densely inhabited city and a less densely populated commuting zone whose labour market is highly integrated with the city (OECD, 2012).    
* **Relation with data** : can be computed using a 45mn isochrone.

## Public-Space
* [see](https://unhabitat.org/sites/default/files/2020/07/indicator_11.7.1_training_module_public_space.pdf)

## Concept-template
* **Labelling policy** : whenever possible use the most adopted label and use the description to express possible refinements and associated expression if required. Avoid to create new concept labels. A concept is registered on this file and can also be described here, or a dedicated file can be created for describing and disucssing the concept., in which case the file shall be put in the same git folder as this registry Concepts.md, and it should be called by the concept label, e.g. Suburb.md
* **Definitions, incl. local specificities** :
    * Universal definition if it exists. references to key papers, free text comments to explain possible distinctions across space or time that need to be considered during comparison.
    *  French definition
    *  german definition
    *  UK definition 
* **Illustration through maps** : links to examples to illustrate the definition on real specific cases (not necessarily within the selected cities)
* **Relation with data** : description of how the instances of the concept can be somehow put on a map, with what kind of data (possibly also put a link with DataSource Dataset or Processes). 

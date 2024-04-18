# Concepts

List of concepts which are useful to study suburban densification and for which 1) it is relevant to go beyond commonsense knowledge and possibly to highlight elements to have in mind when comparing situations across times and cities 2) it is useful to specify how the concept can be observed through data. 

A concept is registered on this file and can also be described here, or a dedicated file can be created for describing and disucssing the concept., in which case the file shall be put in the same git folder as this registry Concepts.md, and it should be called by the concept label, e.g. Suburb.md. 


*******
 1. [Suburb](#Suburb)
 2. [Urban Density](#Urban-Density)
 3. [Urban Densification](#Urban-Densification)
 4. [Building](#Building)
 5. [Functional Urban Area](#Functional-Urban-Area)
 6. [Concept labelling policy](#Concept-labelling-policy)
 7. [Concept description template](#Concept-description-template)
*******
## Suburb	
* **Definitions**: Urban and suburban (Charmes & Keil, 2015; Bibby et al., 2020). A definition in hypergeo, https://hypergeo.eu/suburb/?lang=en, much detailed for the french context
* **Illustration through maps** :
* **Relation with data** : the concept itself does not appear in geodata 

## Urban-Density
* **Definition** : in this dashboard, density refers to urban density. Population density is defined as the number of individuals or the number of inhabitant on a given surface.  Urban density is population density in urban surfaces. The french IAURIF uses 4 measures for urban density : 1) housing units density (number of housing units per 100m2), 2) inhabitants density (number of inhabitants per 100m2) 3) buildings ground coverage coefficient for an urban block 4) buildings floors coefficient for an urban block.
* **Relation with data** :
  * * Urban density is described using 5 classes in urban atlas, grid data acquired on whole Europe at several time, nomenclatura (https://land.copernicus.eu/user-corner/technical-library/urban_atlas_2012_2018_mapping_guide_v6.3 ).
  * * There exist lots of indicators to evaluate and rend density or densification. Refer to : https://docs.google.com/spreadsheets/d/1fUMyoBsP0JiG_2uW1zanIKPdACSpc1A4_i-8C__CBfI/edit#gid=0

## Urban-Densification
* **Definitions** : urban densification should not be interpreted as a mere variation of density but rather as an action or process to increase the number of inhabitants of an urban space. A definition is “net increase of the number of housing units” within the pre-existing built-up area (Broitmanand Koomen, 2015). Authors distinguish Soft and hard densification (Ouati-Morel, 2015) as well as Planned and unplanned (Dunning et al., 2020)
* **Relevant info to represent densification** : relevant information to study densification is : the building ages
* **Illustration through maps** : see https://www.edugeo.fr/support/teaching-book/view/46 the description of the sprawling and densification of the city of Vannes in a pedagogic material for french pupils 
* **Relation with data** :
  * * Can be represented as an evolution of density values
  * * Buildings database can also be used to observe hard densification through the evolution of buildings entities as they can be observed 

## Building
* **Definitions** : (from Wikipedia, which quotes the geographer Max Egenhofer) A building or edifice is an enclosed structure with a roof and walls, usually standing permanently in one place, such as a house or factory. 
* **Relation with data** : In the french topographic product, BDTopo, buildings (bâtiments) are defined as : An above-ground structure that is used to house people, animals or objects, to produce economic goods or to provide services, and refers to any structure permanently built or erected on its site. (Construction au-dessus du sol qui est utilisée pour abriter des humains, des animaux, des objets, pour la production de biens économiques ou pour la prestation de services et qui se réfère à toute structure construite ou érigée de façon permanente sur son site). They are represented through a specific class called Bâtiment. See more on the description of DataSource BDTopo. 

## Functional-Urban-Area
* **Definitions** : (after EC glossary for statistics, https://ec.europa.eu/eurostat/statistics-explained/index.php?title=Glossary:Functional_urban_area ) Short definition: a functional urban area consists of a city and its commuting zone. Functional urban areas therefore consist of a densely inhabited city and a less densely populated commuting zone whose labour market is highly integrated with the city (OECD, 2012).    
* **Relation with data** : can be computed using a 45mn isochrone.

## Concept-labelling-policy
* **Label** : whenever possible use the most adopted label and use the description to express possible refinements and associated expression if required. Avoid to create new concept labels.

## Concept-description-template
* **Definitions, incl. local specificities** : explicit definitions, references to key papers, free text comments to explain possible distinctions across space or time that need to be considered during comparison.
* **Illustration through maps** : links to examples to illustrate the definition on real specific cases (not necessarily within the selected cities)
* **Relation with data** : description of how the instances of the concept can be mapped, with what kind of data (don't detail the specific data sources, this is to be done in the folder Data of this git). 

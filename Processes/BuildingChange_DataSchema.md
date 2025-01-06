## BuildingChange DataSchema

This schema structures data describing evolutions in building, based on observed evolution in building data and with the purpose to represent evolution of building entities in reality. It is written in a simple text file as it is work in progress and will be published as a formal vocabulary when it a stable version is achieved. 

Fields : 

** geometry : a geometry useful to display the evolution on a map. In case of an evolution of type "disappeared" it is the geometry of the 2011 building that participates to the evolution. In case of an evolution of another type the geometry is the joint geometry of the 2021 building that participates to the evolution. 

** id: id given by the computation procedure, unique within the BuildingEvolution dataset 

** type : type of change identified (Appeared / Disappeared / Merged / Split / Stable / Recomposed )

** IdBuildings2011 : list of identifiers of Buildings that participate to the evolution at time 2011

** IdBuildings2021 : list of identifiers of Buildings that participate to the evolution at time 2021

** evolutionProduct : (YES/NO/Undefined) YES meaning that the evolution is very probably explained (possibly partly explained) by an evolution of the product

** evolutionEntities : (YES/NO/Undefined) YES meaning that the evolution is very probably explained (possibly partly explained) by an evolution of the building entities in the real world

** qualityControl : (YES/NO/Undefined) YES meaning that the evolution is explained by a quality control operation (between 2011 and 2021)

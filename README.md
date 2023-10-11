Subdense : Suburban densification dashboard  
==================================================
   
Subdense dashboard is dedicated to the study of suburban densification. It presents a comparative analysis of six different cities during the past ten years. 
- Comparing the 6 cities
- Investigating cities one by one (Dortmund, Frankfurt, Strasbourg, Toulouse, Liverpool, Bristol)  
   
Proving the concept of collaborative dashboard 
------------------------------------------------------
This is a proof of concept of a solution to collaboratively specify and produce comparable maps, document comparison biases, elaborate answers to questions. It is developed by the partners of the ORA7 Subdense 2023-25 project. 

Several collaboration are needed : 
- the identification of key questions, key concepts and the different ways to represent a concept on maps.
- the selection of data and tools
- the production of maps.
- the documentation of biases.
- the interpretation of maps

The folders Concepts, Data, Maps and Processes of the git project https://github.com/subdense/ contain the different components of the dashboard that are key to the collaborative production of answers to questions :
- Concepts (e.g. : suburb, densification, city) : definitions, discussions around definitions, comparability of concepts across the studied cities, hints to which kind of data exist to observe the concept
- Data : description of data sources (aka data products, data series) relevant to the dashboard, description of specific datasets.
- Maps : visual display (image files) of maps that will compose the patchwork and associated description
- Processes : description of the processes that lead to the maps (extracting datasets from the sources, processing them, rendering) and that can be reproduced

All these folders (Concepts, Data, Maps and Processes) follow the same structure : 
- a register file (eg: Concepts.md, Datasets.md, Datasources.md, ...) that contains as well a naming policy and description template for specific things belonging to this category (at the end of the file), and possibly the description of registered item embedded in the file.
- specific files or folders, named after the identifier of a specific item in the register and used to describe more in detail this item. 

The folder Website contains the different files of the dashboard Website, including css, html. These pages can be either produced through ad hoc methods are generated automatically based on the dashboard ressources (in folders Concepts, Data, Maps and Processes). 

More information on SUBDENSE project : https://bbv.raumplanung.tu-dortmund.de/research/projects/subdense/ 



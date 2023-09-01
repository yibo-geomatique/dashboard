
Processes are workflows aimed at being as reproducible as possible, shared among dashboard users.

The minimal elements that describe a process are **input data** and **output data**. Additional elements such as purpose or function, details to run it, implementation details, are useful to facilitate the sharing of processes.


## Adding processes to the dashboard

 - register the process on the Processes.md registry by giving it an explicit and information name (use an informative name), and add a description, preferably on a separate file as detailed below. 
 - commit to this folder, either a `.md` file with the same name as that in the registry and that contains a minimal description of the process, or a subfolder, with the same name as that in the registry, containing its description in a readme and additional files necessary to describe, reproduce, run, modify, etc. it.
 - in the description, refer to the proposed template in Processes.md 


## Automatising processes

*TBD: OpenMOLE script and embedding, or docker file*

Issue of I/O generic specification: system (types? ontology?) allowing for an automatic checking of compatibilities and coupling of processes (additional layer to the OpenMOLE workflow validation system, taking into account complex types -> use the scala compilator for this?)



## List of processes

 - [Compute built density indicators](./ComputeBuiltDensityIndicators.md)
 - [Compute delimitation of study areas](./ComputeDeliminatationStudyAreas.md)
 - [Compute building evolution](./ComputeEvolution.md)
 - [Get building data](./GetBuildingData.md)
 - [Get building data from OpenStreetMap](./GetOpenStreetMapBuildingData)

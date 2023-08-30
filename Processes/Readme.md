
Processes are workflows aimed at being as reproducible as possible, shared among dashboard users.

The minimal elements that describe a process are **input data** and **output data**. Additional elements such as purpose or function, details to run it, implementation details, are useful to facilitate the sharing of processes.


## Adding processes to the dashboard

 - commit to this folder, either a `.md` file with an explicit name designing the process and containing a minimal description of the process, or a subfolder containing its description in a readme and additional files necessary to describe, reproduce, run, modify, etc. it.
 - in the description, include a detailed specification (files, types, data models, etc.) of the input and output data
 - describe the methid, with the successive steps necessary to reproduce it; this can be a textual description in terms of a fully manual process, or commands to run if scripts or executables are provided


## Automatising processes

*TBD: OpenMOLE script and embedding, or docker file*

Issue of I/O generic specification: system (types? ontology?) allowing for an automatic checking of compatibilities and coupling of processes (additional layer to the OpenMOLE workflow validation system, taking into account complex types -> use the scala compilator for this?)



## List of processes

 - [Compute built density indicators](./ComputeBuiltDensityIndicators.md)
 - [Compute delimitation of study areas](./ComputeDeliminatationStudyAreas.md)
 - [Compute building evolution](./ComputeEvolution.md)
 - [Get building data](./GetBuildingData.md)
 - [Get building data from OpenStreetMap](./GetOpenStreetMapBuildingData)

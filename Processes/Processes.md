# Processes

List of processes that are relevant to the Subdense dashboard production. The stakes of registering and describing them are 1) to facilitate collaborative production of the dashboard 2) to adopt as much as possible similar choices for the resulting maps to be comparable 3) documenting the provenance of datasets and maps in the project.

To add a process to the dashboard, please 1)register the process on this file by giving it an informative name, add a description, either within the register, or on a separate `.md` file with the same name as that in the registry and that contains a minimal description of the process, or a subfolder, with the same name as that in the registry, containing its description in a readme and additional files necessary to describe, reproduce, run, modify, etc. it.


*******
 [Delimitation of study areas](DeliminateStudyArea.md) : procedure to compute a functional urban area in QGIS (uses a QGIS model)
 
 [PrepareBuildingData](PrepareBuildingData.md) : general procedure to prepare the BuildingData from a given source on an specific area of interest and time of interest.

 [PrepareBuildingDataBDTopo](PrepareBuildingDataBDTopo.md) : prepare BuildingData on a french city with BDTopo

 [PrepareBuildingDataOSM](PrepareBuildingDataOSM.md) : prepare BuildingData on any city with OSM

 [ComputeBuildingChange](ComputeBuildingChange.md) : derive and refine BuildingEvolution data based on BuildingData at time t1 and t2
 
 [Compute change in built-up area per parcel](ComputeChangeInBuiltup_area.md)

 [Process template](#process-template)
 
 *******

## Process-template
* naming policy : Please use an informative name. Try and avoid creating too many different processes. If there are specific versions of a process you may consider it is just one process and use the description to describe the specific subcases, for example when a generic process is applied to a specific datasource it becomes a more specific process. The identifier of the process is used to name the dedicated description file or description folder. It is also used to refer to the process in the description of datasets or maps that are its output. 
* for the description, use a free text file and try and adopt the following structure
* **Shortdescription of the functionality** : one or two sentences to describe the process functionality (simplify, transform, enrich, ..) 
* **Input/output** : include a detailed specification (files, types, data models, etc.) of the input and output data and ideally include also preconditions and postconditions here. 
* **Method** : describe the method, with the successive steps necessary to reproduce it; this can be a textual description in terms of a fully manual process, or commands to run if scripts or executables are provided
* **Feedback** : Comments related to the process

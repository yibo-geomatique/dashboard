# Processes

List of processes that are relevant to the Subdense dashboard production. These processes can be either simply described on this git or shared. The stakes of registering and describing them are mainly : collaboration (to facilitate collaborative production of the dashboard), comparable resulting maps (to adopt as much as possible similar choices for the resulting maps to be comparable), documenting the provenance of datasets and maps in the project (by referring to a production process in the description of the map and of the dataset). 


*******
 [Delimitation of study areas](DeliminateStudyArea.md)
 
 [PrepareBuildingData](PrepareBuildingData.md)

 [ComputeBuildingEvolution](ComputeBuildingEvolution.md)
 
 [Get building data from OpenStreetMap](GetOpenStreetMapBuildingData)
 
 [Compute change in built-up area per parcel](ComputeChangeInBuiltup_area.md)

 [Process template](#Process-template)
 
 *******

## Process-template
* naming policy : Please use an informative name. Try and avoid creating too many different processes. If there are specific versions of a process you may consider it is just one process and use the description to describe the specific subcases, for example when a generic process is applied to a specific datasource it becomes a more specific process. The identifier of the process is used to name the dedicated description file or description folder. It is also used to refer to the process in the description of datasets or maps that are its output. 
* for the description, use a free text file and try and adopt the following structure
* **Shortdescription of the functionality** : one or two sentences to describe the process functionality (simplify, transform, enrich, ..) 
* **Input/output** : include a detailed specification (files, types, data models, etc.) of the input and output data and ideally include also preconditions and postconditions here. 
* **Method** : describe the method, with the successive steps necessary to reproduce it; this can be a textual description in terms of a fully manual process, or commands to run if scripts or executables are provided
* **Feedback** : Comments related to the process

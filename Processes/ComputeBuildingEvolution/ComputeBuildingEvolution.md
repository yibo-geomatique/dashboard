# Process : ComputeBuildingsEvolution 

## Input Data :
*	A building dataset on a specific place at a specific year
*	A building dataset on the same place, same product, years after 

## Output Data : 
*	A dataset corresponding to evolutions of buildings at the level of building entities on a given city, given products and different years, with the correct naming, and a description of this dataset, through a Subdense “Dataset” description so that others can know it exists and reuse it. 
*	A map of the above dataset with the correct naming, and a description of this dataset, through a Subdense “Dataset” description so that others can know it exists and reuse it.
*	A dataset corresponding to evolutions of relevant indicators to describe buildings evolution on a given city and different years, with the correct naming, and a description of this dataset, through a Subdense “Dataset” description so that others can know it exists and reuse it.
*	A map of the above dataset with the correct naming, and a description of this dataset, through a Subdense “Dataset” description so that others can know it exists and reuse it.

## Method 1: Manual method to produce evolution data at the level of building entities
This method consist in xxxx (loading data on QGIS, creating the new layers, etc)
Limitation : Cannot be applied on large areas but only a smaller areas
Required expertise : QGIS
 
## Method 2: Semi-automated method to produce evolution data at the level of building entities
This is an alternative method under development to allow application at large scale based on automated matching

## Refinement and Quality check of evolution data at the level of buildings entities
Once building entities evolution have been produced (created buildings, deleted buildings, ..), interpretation is required to refine the evolution data and distinguish between evolutions that occured in reality and evolutions that occured in the datasource only. 

# Process : ComputeBuildingEvolution 

## Input Data :
*	A building dataset on a specific city, at a specific year
*	A building dataset on the same city, same product, years after 

## Output Data : 
*	A dataset corresponding to evolutions of buildings data, with the schema depicted in this folder, with the correct file naming, and a description of this dataset, through a Subdense “Dataset” description so that others can know it exists and reuse it.

## Method : Automatic production of building evolution data
To process this data, we used the change detection algorithm developed by Lastig, specializing in surface matching. This method allowed us to effectively and accurately identify matching links between buildings from different years. Through these links, we have been able to produce a rich dataset that details the evolution of urban building structures in Strasbourg, highlighting various types of change.
## Refinement and Quality check 
Once building evolution features have been produced, some refinements can be applied.  

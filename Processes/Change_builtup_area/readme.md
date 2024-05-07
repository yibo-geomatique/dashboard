# Process : Change built-up area per parcel

## Input Data :
*	Parcels
*	Building footprints 2011 and 2021

## Output Data : 
*	A parcel-dataset with some fields reporting the change of the built-up area from 2011-2021 (e.g. the change of built-up area in percent)

## Method: 
### Calculate change of built-up area
* Program: QGIS
* Load parcels and building footprints
* Execute model built_up_area_hu_parcels.model3 in graphical modeller

## Styling
* Use the variable change_perc_builtup_11_21 to display parcels where a lot of change of built-up area happend

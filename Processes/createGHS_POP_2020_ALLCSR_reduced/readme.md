# Process : CreateGHS_POP_2020_ALLCSR_reduced

## Input Data :
*	Population density: 4 Geotiffs covering all CSR from GHSL-UCDB download site
*	Building footprints 2021 for all CSR
*	Resulting dataset of process DeliminateStudyArea

## Output Data : 
*	GHS_POP_2020_ALLCSR_reduced: A vector layer (100x100m grid) containing population per gridcell

## Method: 
### Step 1: Load GHSL POP Geo-Tiff and extract 0 values
* Program: QGIS
* Download GEO-Tiffs covering all CSR from [GHSL-UCDB download site](https://ghsl.jrc.ec.europa.eu/download.php?ds=pop) (Epoch: 2020, Resolution: 100m, CRS: Mollweide)
* Load Geo-Tiffs in QGIS and merge them to one (Raster --> Miscellaneus --> Merge), choose 0 to treat as "nodata"

... to be continued

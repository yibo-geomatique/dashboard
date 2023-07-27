# Datasets

List of datasets, either acquired from OTS products, or produced during Subdense. It is useful to 1) register their identifiers in the project 2) give access to Subdense-specific metadata related to these datasets. Such metadata either or in this file beneath the dataset identifiers, or they are in a dedicated file with the identifier as file name and the extension md. 


*******
 1. [BDTopo_BDG_STRSBG_2012](#BDTopo_BDG_STRSBG_2012)
 2. [BDTopo_BDG_STRSBG_2022](#BDTopo_BDG_STRSBG_2022)
 3. [EvolutionBDG_BDTopo_STRSBG_2012_2022_subset](#EvolutionBDG_BDTopo_STRSBG_2012_2022_subset)
 4. [Dataset Identifying policy](#DATASET-IDENTIFYING-POLICY)]
 5. [Dataset description template (Subdense-specific metadata)](#SUBDENSE-SPECIFIC METADATA for A DATASET)
*******
## BDTopo_BDG_STRSBG_2012	
* **Provenance**: application of GetData task to BDTopo, cropped with (tbd: specify here the contour that have been used) … 
* **Usages** : used to compute evolution with same data in 2022, and used to compute builtdensity indicator

## BDTopo_BDG_STRSBG_2022
* **Provenance** : application of GetData task to BDTopo, cropped with … 

## EvolutionBDG_BDTopo_STRSBG_2012_2022_subset
* A dedicated file has been created to describe this dataset, the name is the same as the dataset name. 

## DATASET-IDENTIFYING-POLICY
* (product identifier)_THEME_CITYID_YYYY_(MM)_Id
  ** If the product identifier is not specified then the product is the authoritative topographic building data on the city. If it is specified the identifier is that of SUBDENSE dashboard (see the file list of data products)
   ** THEME : BDG (for building data), EVOL-BDG (for evolution of building data), Indicator Id (see the file list of indicators),..
  ** CITYID : STRSBG (Strasbourg), TLSE (Toulouse),
  ** YYYY, MM : in digits,
  ** Id : specific additional characters to distinguish different datasets when necessary    
* The identifier of the dataset is used to name the dataset files (or zip repository) and to name the eventual dedicated metadata file for Subdense-specific metadata associated to the dataset. 
* A dataset is considered the same resource even if it is enriched or corrected during the project. It keeps the same identifier, but the modifications are documented in its provenance property.    

## SUBDENSE-SPECIFIC METADATA for A DATASET
* **Provenance** : Textual description of how the datasets was acquired or produced, preferably referring to processes that are described on the dashboard.  This description can get enriched while the dataset is revised and improved (quality check and so on).
* **Usages** : References to datasets, maps, hypothesis (papers) that have been produced with this dataset
* **Feedback** : Comments related to the dataset, interpretation, identification of quality issues and so on


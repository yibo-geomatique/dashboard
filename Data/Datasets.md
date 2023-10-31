# Datasets

List of datasets, either acquired from OTS products, or produced during Subdense. It is useful to 1) register their identifiers in the project 2) give access to Subdense-specific metadata related to these datasets. Such metadata either or in this file beneath the dataset identifiers, or they are in a dedicated file with the identifier as file name and the extension md. 


*******
 1. [BDTopo_BDG_STRSBG_2012](#BDTopo_BDG_STRSBG_2012)
 2. [BDTopo_BDG_STRSBG_2022](#BDTopo_BDG_STRSBG_2022)
 3. [EvolutionBDG_BDTopo_STRSBG_2012_2022_subset](#EvolutionBDG_BDTopo_STRSBG_2012_2022_subset)
 4. [GHS_POP_ALLCSR_2020_reduced](#GHS_POP_ALLCSR_2020_reduced)
 5. [Dataset naming policy](#Dataset-naming-policy)
 6. [Dataset description template](#Dataset-description-template)
*******
## BDTopo_BDG_STRSBG_2012	
* **Provenance**: application of GetData task to BDTopo, cropped with (tbd: specify here the contour that have been used) … 
* **Usages**: used to compute evolution with same data in 2022, and used to compute builtdensity indicator

## BDTopo_BDG_STRSBG_2022
* **Provenance** : application of GetData task to BDTopo, cropped with … 

## EvolutionBDG_BDTopo_STRSBG_2012_2022_subset
* A dedicated file has been created to describe this dataset, the name is the same as the dataset name.

## GHS_POP_ALLCSR_2020_reduced
* **Provenance**: data from GHSL-UCDB, application of process CreateGHS_POP_2020_ALLCSR_reduced, cropped with DeliminateStudyArea and filtered to "perc_inside" >= 0.2
* **Usages**: use as input for cluster analysis
* [**How to cite**](https://ghsl.jrc.ec.europa.eu/datasets.php): Schiavina M., Freire S., Carioli A., MacManus K. (2023): GHS-POP R2023A - GHS population grid multitemporal (1975-2030).European Commission, Joint Research Centre (JRC) PID: http://data.europa.eu/89h/2ff68a52-5b5b-4a22-8f40-c41da8332cfe, doi:10.2905/2FF68A52-5B5B-4A22-8F40-C41DA8332CFE

## Dataset-naming-policy
The name of the dataset is a set of characterstrings attached with "_". 
Characterstrings : 
* theme or type of content : Buildings (for building), BuildingsEvol (for data that describe evolutions of buildings), ... //to be extended with new strings when new themes are added
* area : FKF (Frankfurt), DTMDT (Dortmundt), STRBG (Strasbourg), TLS (Toulouse), LVPL (Liverpool), BSL (Bristol) or ALLCSR (all case study regions)
* specific area : Buffer, Suburb, Name of a focused place within city   
* Name of the datasource (to be registered in the Datasources.md file on this dashboard). If the product is the authoritative topographic data source on the city then the product name is non mandatory.
* YYYY, MM : in digits, possibly two dates if it is an evolution
* Id : specific additional characters to distinguish different datasets when necessary
    
The identifier of the dataset is used to name the dataset files (or zip repository) and to name the eventual dedicated metadata file for Subdense-specific metadata associated to the dataset. A dataset is considered the same resource even if it is enriched or corrected during the project. It keeps the same identifier, but the modifications are documented in its provenance property.
    
## Dataset-description-template
* A specific description template is proposed adapted to SUBDENSE dashboard workflows. It is not intended to replace existing model to describe geographical datasets but to complement them to adress SUBDENSE specific requirements
* **Provenance** : Textual description of how the datasets was acquired or produced, preferably referring to processes that are described on the dashboard.  This description can get enriched while the dataset is revised and improved (quality check and so on).
* **Usages** : References to datasets, maps, hypothesis (papers) that have been produced with this dataset
* **Feedback** : Comments related to the dataset, interpretation, identification of quality issues and so on


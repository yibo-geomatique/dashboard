# Datasources 

List of datasources potentially relevant for the dashboard, and associated comments  

*******
 1. [BDTOPO-FR](#BDTOPO-FR)
 2. [OPENZOOM-UK](#OPENZOOM-UK)
 3. [OSMASTERMAP-UK](#OSMASTERMAP-UK)
 4. [OSNGD-UK](#OSNGD-UK)
 5. [GEOBASIS-DE](#GEOBASIS-DE)
 6. [OSM](#OSM)
 7. [EUBUCCO](#EUBUCCO)
 8. [Datasource naming policy](#Datasource-naming-policy)
 9. [datasource description template](#Datasource-description-template)
*******

## BDTOPO-FR 
* **Documentation** : BD TOPO® | Géoservices (ign.fr), french

## OPENZOOM-UK
* **Documentation** : https://beta.ordnancesurvey.co.uk/products/os-open-zoomstack , english
* **Feedback** : Analysis and quotation of documentation relevant to SUBDENSE : 
https://www.ordnancesurvey.co.uk/documents/os-open-zoomstack-technical-specification.pdf?_gl=1*1jxmav3*_ga*NzE3NjU4MTY0LjE2ODEzNjk5Mjk.*_ga_59ZBN7DVBG*MTY4MTM2OTkyOS4xLjAuMTY4MTM2OTkyOS42MC4wLjA.&_ga=2.2835769.808952103.1681369930-717658164.1681369929 , p5 : “Generalised building footprints at both local and district resolutions. The local buildings have a unique identifier which can be used to style features distinctly.
The identifier will not be persistent between product versions and therefore there
will be no change history information for a feature.”

## OSMASTERMAP-UK
* **Documentation** : https://beta.ordnancesurvey.co.uk/products/os-mastermap-topography-layer 
* **Feedback** : Analysis and quotation of documentation relevant to SUBDENSE : 
Schema : geometries bear the themes. A building is a TopographicArea. 
“Attribute: TOID or gml:id
Definition: The unique topographic reference number. It consists of the letters ‘osgb’ followed by
thirteen or sixteen digits. The TOID must always be retained / stored in its entirety and any leading
zeros on the TOID are retained to permit linking of the feature to other OS MasterMap products”
“Attribute: changeHistory
Definition: Information about the change history of a feature that comprises the reason for the change and the date for this change. Each feature may have numerous change history records, and these are ordered chronologically. A complex attribute.”

## OSNGD-UK
* **Documentation** : https://www.ordnancesurvey.co.uk/business-government/new-data-access-methods?_gl=1*13idjk8*_ga*NzE3NjU4MTY0LjE2ODEzNjk5Mjk.*_ga_59ZBN7DVBG*MTY4MTM2OTkyOS4xLjEuMTY4MTM3MDIxNy41OS4wLjA.&_ga=2.81454110.808952103.1681369930-717658164.1681369929
* **Feedback** : this is an integration of OS data product into a unified product associated with user friendly web services to select relevant data. 


## GEOBASIS-DE
* **Documentation** for buildings on national level: https://gdz.bkg.bund.de/index.php/default/digitale-geodaten/sonstige-geodaten/amtliche-hausumringe-deutschland-hu-de.html

## OSM 

## EUBUCCO
* **Documentation** : https://docs.eubucco.com/ 
* * **Feedback** : EUBUCCO is a scientific database of individual building footprints for 200+ million buildings across the 27 European Union countries and Switzerland, together with three main attributes – building type, height and construction year – included for respectively 45%, 74%, 24% of the buildings. EUBUCCO is composed of 50 open government datasets and OpenStreetMap that have been collected, harmonized and partly validated. 


## Datasource-naming-policy
* Using the source usual name and add then -UK, -FR, -DE if the product is specific to a given country

## atasource-description-template
* **URI**  : If there exists one or more URIs for this product put them here.  
Note BB: on-going work at EuroSDR to create a Knowledge Graph of digital assets, could be connected here.
* **Documentation** : Links to existing documentation, preferably online
* **Feedback** : Specific feedback (from reading the documentation, from using some of the data, etc) relevant to SUBDENSE, Identification of aspects useful for SUBDENSE, quote or explicit important properties of the source to have in mind during data interpretation, computing indicators, compute evolution data, integration, biases detection etc 

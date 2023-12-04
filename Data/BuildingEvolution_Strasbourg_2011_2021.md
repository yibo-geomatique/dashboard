Descrition of dataset BuildingEvolution_Strasbourg_2011_2021

**Provenance** : This data is the result of the process ComputeBuidingEvolution applied to buildings features from BDTOPO-FR product. 

**Usages** : This data has been used to produce a map, an extract is visible on this dashboard-git and the full data can be obtained from the author. 

**Feedback** : Comments related to the dataset, interpretation, identification of quality issues and so on

The "BuildingEvolution" dataset was designed to facilitate a detailed comparative analysis of urban evolutions in six European cities. Its primary objective is to detect and understand the dynamics of change in urban building structures, with a special focus on the phenomenon of peri-urban densification. This analysis aims to better understand spatial transformations and their associated impacts, providing a solid foundation for future urban and regional studies.
This dataset was developed within the framework of the European "Subdense" project. This project aims to explore and understand peri-urban densification by relating space, actors, and policies in specific case studies in France, Germany, and England. "Subdense" is a collaborative effort dedicated to exchanging data and methodologies, allowing for a richer and more diversified understanding of current urban trends.

**Data Provenance**
***Data Sources**
The "BuildingEvolution" data is derived from processing building data from the BDTOPO database of IGN (National Institute of Geographic and Forest Information) in France. These data constitute a reliable and detailed source, ideal for analyzing urban evolution.

***Coverage Period***
The data cover a period from 2011 to 2021, thus offering a decade of insights into urban transformations. Two main datasets were used: one from the year 2011 and the other from 2021, allowing for direct comparison of changes over this period.

***Geographic Area***
The study specifically focuses on the city of Strasbourg, offering a detailed overview of urban trends and evolutions in this area.

***Methodology of Processing***
To process this data, we used the change detection algorithm developed by Lastig, specializing in surface matching. This method allowed us to effectively and accurately identify matching links between buildings from different years. Through these links, we have been able to produce a rich dataset that details the evolution of urban building structures in Strasbourg, highlighting various types of change.

**Data Structure**
For a thorough and detailed understanding of our "BuildingEvolution" dataset's structure, we invite you to consult the data structure schema available in "ComputeBuildingEvolution." This schema provides comprehensive information on the data fields, their meanings, and their use in the context of our urban evolution analysis.
The "BuildingEvolution" dataset is available in two main formats to ensure optimal compatibility and accessibility:
Shapefile (.shp): A widely used and recognized format in GIS, ideal for extended compatibility with various mapping tools and software.
GeoPackage (.gpkg): A more modern format offering better performance and greater flexibility, particularly suited for managing complex and voluminous data.

**Usage**
The "BuildingEvolution" dataset offers unique insights into urban densification dynamics and changes in building structures over time. By focusing on the typology of building evolution, users can specifically identify where and how urban densification occurs. This allows for valuable analyses for urban planners, policymakers, and researchers interested in urban development trends, especially in the context of sustainable urban planning and urban space management.
Urban Densification Analysis: Use of the dataset to map and analyze areas of intensive densification, thus providing a deeper understanding of urban development trends in Strasbourg.
Thematic Map Production: The dataset has been used to create detailed maps illustrating different types of changes in urban building structures. These maps are useful for visualizing development patterns and urban transformations.
Integration into a Dashboard: An excerpt of these analyses and maps is available on an online dashboard and on the project's Git repository. This allows for broader dissemination and accessibility of the study's results.

**Feedbacks and Improvements**
***User Feedback***
We have received constructive feedback from users that contribute to the ongoing improvement of the "BuildingEvolution" dataset. For example, one user suggested removing garages from the dataset, considering them irrelevant for the analysis of urban densification. This kind of feedback is essential for refining our understanding of user needs and for enhancing the relevance of our data.

***Known Issues and Corrections***
Currently, the "BuildingEvolution" dataset primarily focuses on the geometric aspects of buildings, without considering the attributes of the buildings. This means that while we can observe physical changes, we do not yet have data on the evolution of building usage over time.

***Suggestions for Future Improvements***
In response to the feedback received and to further improve our dataset, we are considering adding new attributes. This would include more detailed information on building usage, which would allow for a more comprehensive analysis of urban evolution. These enhancements aim to make the "BuildingEvolution" dataset richer and more suitable for a wider range of analytical applications and urban planning.


# Datasources 

## Analyse de l’utilisabilité des sources pour une production de données d’évolution sur Strasbourg  
Analyse des sources en partant de ce qu’on veut représenter : quels thèmes et l’idée d’évolution (donc différentiel ou avoir la date de création), à Strasbourg ou focus area, sur dernière décennie 

### OCS (Le référentiel OCS GE2) de la région Grand Est :  
 #### Accès à un outil comparatif entre deux millésimes disponibles (2007-2010 et 2010-2019)  
Une exploration des données révèle qu'il n'y a pas de changements notables dans l'évolution des thématiques d'occupation du sol sur la période étudiée. Par exemple en observant l’évolution de l’occupation du sol entre 2010 et 2019 nous avons seulement une augmentation de 49 ha des territoires artificialisés, mais avec une baisse des espaces en mutation et agricoles. 

### Bâtiments BDUni 
(Base de production interne à l’IGN qui sert à produire différentes bases) : En explorant la BDUni, une richesse d'informations a été découverte grâce aux tables de production qui contiennent un historique détaillé des objets géographiques. Notamment, les tables bâtiment et adresse, ainsi que leurs équivalents historiques (batiment_h et adresse_h), offrent des données sur les dates de création, modification et destruction des entités. Ces informations permettent une analyse dynamique et temporelle de l'évolution urbaine. Pour les adresses, il est possible de sélectionner et de filtrer spécifiquement celles situées à Strasbourg, facilitant l'analyse ciblée de l'évolution des adresses dans la ville. Cependant, un défi se présente pour les bâtiments : l'absence de code INSEE ou de nom de ville dans les tables empêche une sélection directe basée sur la localisation géographique. En se concentrant sur l'examen des objets considérés comme "détruits" dans la BDUni, une particularité notable est observée. Bien que chaque objet détruit présente une date de création et une date de destruction, l'attribut "état de l'objet" indique "en service". Cette situation suggère que la mention de destruction dans la base de données pourrait ne pas toujours correspondre à une destruction physique dans le monde réel. Il se peut que ces mentions de destruction reflètent des modifications ou des suppressions au niveau de la gestion de la base de données plutôt que des changements tangibles sur le terrain. 

### Bâtiments BD Topo 
Notre objectif était d'identifier les dynamiques de création, de destruction, de stabilité, ainsi que de changement de spécifications des bâtiments ou encore de adresses. Par ailleurs, Nous avons constaté que les informations relatives à la hauteur ne sont pas toujours disponibles. Certaines données suggèrent que la hauteur de bâtiments en 2011 est parfois indiquée comme supérieure à celle de 2021 pour les mêmes structures. 

### Bâtiments OpenDataStrasbourg 

Les données ouvertes fournies par OpenDataStrasbourg sont précieuses pour notre analyse de l'évolution urbaine. Cependant, un défi réside dans la manière de calculer l'évolution des entités urbaines, telles que les bâtiments et les adresses, en raison de la structure des données disponibles. Bien que ces données soient régulièrement mises à jour et contiennent des informations à jour, elles sont présentées sous forme de millésimes avec uniquement la date la plus récente. Cette présentation limite notre capacité à observer directement les changements survenus au fil du temps. En consultant les métadonnées associées à ces ensembles de données, il est évident que des mises à jour sont effectuées sur les attributs des entités. Cela suggère que, bien que les données historiques directes ne soient pas accessibles, des évolutions ont lieu au niveau des attributs qui pourraient indiquer des modifications ou des développements dans l'espace urbain. 

### Bâtiments URBS  
Contacts pris, les coordinateurs ont indiqué qu’ils n’avaient pas encore de données sur 10 ans. D’après eux, la temporalité des données ne couvre que 3 années et seul le format déposé sur datagouv (couvrant l’année 2022) est actuellement disponible en open data. Un prochain versionning est prévu sur ce printemps. 

### Adresses 
Les données sur les adresses sont récupérables au niveau des bases de données ci-dessous mais les dates ne sont pas renseignées pour mieux étudier l’évolution temporelle. On pourrait croiser les données d’évolutions du bâti du BD Topo et intersecter les adresses et les bâtiments apparus/disparus pour étudier leurs évolutions. 

### BD Adresse (BAN) et BAN PLUS 
Pas d’accès aux données à 10 ans et sur l’année de construction. Les données sont consultables ici 

### Adresses URBS et BDNB  
Il y a une date de création sur chaque adresse. Par ailleurs ces bases de données sont le fruit de croisement de plusieurs sources de données comme la BD Topo ou les données foncières. 

### Adresses OpenDataStrasbourg  
Les données d’adresses sont disponibles ici mais nous n’avons pas de temporalité sur 10 ans par exemple. Nous avons juste la date de la dernière mise à jour de l’adresse dans la base mais cela n’est pas toujours de la création. 

### Parcelles 
Les données cadastres sont disponibles avec quelques millésimes allant de 2017 à 2024 avec le Plan Cadastral Informatisé   et les données cadastrales de l'Eurométropole de Strasbourg. Les fichiers départementaux des documents de filiation informatisés (DFI) donnent accès à l'historique des parcelles cadastrales, incluant les modifications depuis leur numérisation dans les années 1980 à 1990. Ils détaillent l'origine et les dates des mises à jour, issues de différents documents comme les arpentages ou les remaniements. Elle reprend un peu les évolutions des parcelles depuis 1990. 

Les Fichiers fonciers proviennent de l'application MAJIC de la DGFIP et sont complétés par le Cerema. Ils contiennent des informations fiscales principalement liées à la taxe foncière, couvrant les caractéristiques des locaux (comme la date de construction et la surface), les spécificités des parcelles, ainsi que des détails sur les propriétaires, incluant leur statut (public ou privé) et leurs adresses. C’est une source intéressante car elle peut avoir plusieurs cas d’usages notamment sur l’observation de l’évolution du territoire, ce sont des données annuelles et peuvent permettre des analyses multi-millésimes allant d’une diffusion large à une géolocalisation plus fine à la parcelle. Les données sont disponibles et gratuites pour les ayants-droits (IGN en fait partie, il faut juste suivre la procédure d’obtention en trois étapes). Conformément à la déclaration CNIL signée par la DGALN, ils peuvent nous diffuser les millésimes antérieurs dans la limite de 10 ans, soit de 2013 à 2022 (le plus ancien ne remontant de toute façon qu'à 2009, nous ne pourrons donc pas remonter 20 ou 30 ans en arrière). 

### Données socio-économique de l’INSEE  

Recensement de la population à la commune/canton/département/IRIS 

Données localisées au canton-ou-ville : Recensement de la population - Fichiers détail : Individus localisés au canton-ou-ville 2020 - https://www.data.gouv.fr/fr/datasets/recensement-de-la-population-fichiers-detail-individus-localises-au-canton-ou-ville-2020-1/#/resources

Les données recensement de la population à l’IRIS : Recensement population par IRIS de 2006 à 2020 - https://www.insee.fr/fr/statistiques?debut=20&idprec=2028582&theme=1&categorie=1&geo=IRIS-1

Les données recensement de la population au niveau communal et départemental : https://www.insee.fr/fr/statistiques/1893204 

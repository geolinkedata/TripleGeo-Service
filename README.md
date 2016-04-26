#TripleGeo-Service

A web service for running TripleGeo

##Building

Tested in Tomcat7

To deploy the service to your Tomcat server run:

	mvn tomcat:deploy
	
or to redeploy:

	mvn tomcat:redeploy
	
## REST API

The rest services available are:

|Path   |Method | accepts | produces | Body       |Description|
|-----  |-------|---------|------------|----------|----------|
|/      | GET   |         |application/json |     | Get all performed transformations|
|/{uuid}| GET   |         |application/json |     | Get transformations description|
|/      | POST  | application/json   | application/json | config*  | New transformation|
|/upload| POST  | multipart/form-data| application/json |          | Upload a file to be used in a transformation|

The configuration for a new transformation needs the following JSON:

      {
          "attribute": "osm_id",
          "defaultLang": "en",
          "featureString": "points",
          "format": "RDF/XML",
          "ignore": "UNK",
          "inputFile": "/Users/geobart/Development/geolinkedata/orchestrator/test/points.shp",
          "job": "esri",
          "name": "name",
          "nsPrefix": "geobelod",
          "nsURI": "http://geolinkedata.org/geodata/",
          "ontologyNS": "http://www.opengis.net/ont/geosparql#",
          "ontologyNSPrefix": "geo",
          "sourceRS": "",
          "targetEndpoint": "http://localhost:8890/sparql",
          "targetGraph": "http://geolinkedata.org/geodata/",
          "targetRS": "",
          "targetStore": "Virtuoso",
          "type": "osm_points",
          "uclass": "type"
      }
        
For a better description for the parameters check [TripleGeo](https://github.com/geolinkedata/TripleGeo). 
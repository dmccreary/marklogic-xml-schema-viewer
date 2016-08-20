# marklogic-xml-schema-viewer

To deploy on your local system do the following:

Create a deploy/local.properties file.  Add the following information that reflects open
ports on your local system.

```
user=admin
password=admin
app-port=8120
xcc-port=8121
# for using oxygen or other webdav clients
# webdav-port=8122
server-version=9```

```$ ml local bootstrap```
Bootstrapping your project into MarkLogic 9 on localhost...
... Bootstrap Complete

```$ ml deploy local content```

Loaded 18 documents from /Users/dmccrear/Documents/workspace/marklogic-xml-schema-viewer/src to localhost:8121/marklogic-xml-schema-viewer-modules at 08/20/2016 10:45:25 am

```$ ml deploy local modules```

Loaded 3 documents from /Users/dmccrear/Documents/workspace/marklogic-xml-schema-viewer/data to localhost:8121/marklogic-xml-schema-viewer-content

This runs 


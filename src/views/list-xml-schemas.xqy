xquery version "1.0-ml";
import module namespace style = "http://marklogic.com/data-hub/style" at "/modules/style.xqy";
(:
import module namespace u = "http://marklogic.com/data-hub/util" at "/modules/data-hub-util.xqy";
:)
declare namespace xs="http://www.w3.org/2001/XMLSchema";

let $title := 'List XML Schemas'

(: alternativly we could use cts:uri-match*('*.xsd') :)
let $xml-schema-dir := '/data/schemas/'

let $schemas := xdmp:directory($xml-schema-dir)

let $content :=
<div class="content">
<p>The following is a list of XML Schemas used to test the XML Schema to SVG module.</p>
<table class="table table-striped table-bordered table-hover table-condensed">
   <thead>
      <tr>
         <th>File Name</th>
         <th>Version</th>
         <th>Metrics</th>
         <th>Names</th>
         <th>View SVG</th>

      </tr>
   </thead>
   <tbody>
    {
    for $schema in $schemas/xs:schema
      let $schema-uri := xdmp:node-uri($schema)
      let $schema-name := substring-after($schema-uri, $xml-schema-dir)
      order by $schema-name
      return
         <tr>
            <td>{$schema-name}</td>
            <td>{$schema/@version/string()}</td>
            <td><a href="/views/schema-metrics.xqy?uri={$schema-uri}">Metrics</a></td>
            <td><a href="/views/list-named-types.xqy?uri={$schema-uri}">List Named Types</a></td>
            <td><a href="/views/view-schema-svg.xqy?uri={$schema-uri}">View SVG</a></td>
            
         </tr>   
    }
   </tbody>
</table>
</div>

     
return
    style:assemble-page($title, $content)
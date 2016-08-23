<svg height="150" width="500" xmlns="http://www.w3.org/2000/svg"><style type="text/css">/* sample svg css for oxygen schema diagram render emulation */

text {font-family:arial, helvetica, sans-serif; color:black}

.xsd-text {
   font-size: 14pt;
   font-family: Arial, Helvetica, sans-serif;
}

.complexType-rect {
   fill:violet;
   stroke:black;
   stroke-width:1;
   opacity:0.2;
}

.element-rect {
   fill:lightblue;
   stroke:black;
   stroke-width:1;
   opacity:0.2;
}

.xsd-required, .xsd-optional {
     fill:lightblue;
     stroke:black;
     stroke-width:2;
     opacity:0.8;
 }
 
 .required-rect {
     stroke:black;
     stroke-width:2;
 }
 
  
 .optional-rect {
     stroke:silver;
     stroke-width:2;
 }
 /* five pixels on and five off */
 .xsd-optional {
   stroke-dasharray: 10, 10;
   stroke-width:2;
 }
 
 .card-text {
   font-size: 10pt;
   font-family: Arial, Helvetica, sans-serif;
 }
 
 .annotation-text {
   font-size: 10pt;
   font-family: Arial, Helvetica, sans-serif;
   color:gray;
 }
          </style><defs><linearGradient id="complex" x1="0%" y1="0%" x2="0%" y2="100%"><stop offset="0%" style="stop-color:rgb(255,255,255);stop-opacity:1"/><stop offset="100%" style="stop-color:rgb(245,210,255);stop-opacity:1"/></linearGradient><linearGradient id="element" x1="0%" y1="0%" x2="0%" y2="100%"><stop offset="0%" style="stop-color:rgb(255,255,255);stop-opacity:1"/><stop offset="100%" style="stop-color:rgb(200,200,255);stop-opacity:1"/></linearGradient><filter id="dropshadow" height="130%"><feGaussianBlur in="SourceAlpha" stdDeviation="3"/><!-- stdDeviation is how much to blur --><feOffset dx="2" dy="2" result="offsetblur"/><!-- how much to offset --><feMerge><feMergeNode/><!-- this contains the offset blurred image --><feMergeNode in="SourceGraphic"/><!-- this contains the element that the filter is applied to --></feMerge></filter></defs><g transform="translate(0, 30)"><line class="required" x1="0" x2="20" y1="10" y2="10"/><rect class="complexType-rect" x="20" y="0" height="20" width="170" fill="url(#complex)" filter="url(#dropshadow)"/><text x="25" y="15" color="black">Sample Complex Type</text></g><g transform="translate(192, 40)"><line class="required" x1="0" x2="20" y1="0" y2="0" stroke="black" stroke-width="3"/></g><g transform="translate(200, 15)"><g class="sequence" transform="scale(.6)"><circle cx="40" cy="40" r="20" stroke="black" stroke-width="1" fill="LemonChiffon" filter="url(#dropshadow)"/><rect x="41" y="30" height="10" width="10" stroke="black" stroke-width="1" fill="silver"/><rect x="35" y="35" height="10" width="10" stroke="black" stroke-width="1" fill="silver"/><rect x="29" y="41" height="10" width="10" stroke="black" stroke-width="1" fill="silver"/></g></g><!-- connecting bars --><g transform="translate(237, 40)"><line class="required" x1="0" x2="15" y1="0" y2="0" stroke="black" stroke-width="3"/></g><!-- vertical --><g transform="translate(253, 20)"><line class="required" x1="0" x2="0" y1="0" y2="20" stroke="black" stroke-width="3"/></g><g transform="translate(253, 20)"><line class="required" x1="0" x2="0" y1="20" y2="40" stroke="silver" stroke-width="3"/></g><g transform="translate(253, 20)"><line class="required" x1="0" x2="15" y1="0" y2="0" stroke="black" stroke-width="3"/></g><g transform="translate(253, 60)"><line class="required" x1="0" x2="15" y1="0" y2="0" stroke="silver" stroke-width="3"/></g><g class="element-column" transform="translate(250,0)"><g transform="translate(0, 10)"><line class="required" x1="0" x2="20" y1="10" y2="10"/><rect class="element required-rect" x="20" y="0" height="20" width="200" rx="5" ry="5" fill="url(#element)" style="filter:url(#dropshadow)"/><text x="25" y="15" color="black">Sample Required Element</text></g><g transform="translate(0, 50)"><line class="optional" x1="0" x2="20" y1="10" y2="10"/><rect class="element optional-rect" x="20" y="0" height="20" width="200" rx="5" ry="5" fill="url(#element)" style="filter:url(#dropshadow)"/><text x="25" y="15" color="black">Sample Optional Element</text></g></g></svg>

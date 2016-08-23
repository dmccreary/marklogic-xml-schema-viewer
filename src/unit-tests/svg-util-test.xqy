xquery version "1.0-ml";

import module namespace svg-util='http://code.google.com/p/xrx/svg-util' at "/modules/svg-util.xqy";

<svg height="150" width="500" xmlns="http://www.w3.org/2000/svg">

        {$svg-util:defs}
        <g transform="translate(0, 30)">
           <line class="required" x1="0" x2="20" y1="10" y2="10"/>
           <rect class="complex" x="20" y="0" height="20" width="170" fill="url(#complex)" style="filter:url(#dropshadow)"/>
           <text x="25" y="15" color="black">Sample Complex Type</text>
        </g>
        
        <g transform="translate(0, 40)">
          <line class="required" x1="0" x2="20" y1="10" y2="10"/>
          <rect class="element required" x="20" y="0" height="20" width="200" rx="5" ry="5" fill="url(#element)" style="filter:url(#dropshadow)"/>
          <text x="25" y="15" color="black">Sample Required Element</text>
        </g>
        
        <g transform="translate(0, 70)">
          <line class="optional" x1="0" x2="20" y1="10" y2="10"/>
          <rect class="element optional" x="20" y="0" height="20" width="200" rx="5" ry="5" fill="url(#element)" style="filter:url(#dropshadow)"/>
          <text x="25" y="15" color="black">Sample Optional Element</text>
        </g>
        
        <g transform="translate(160, 0)">
        {$svg-util:sequence}
        </g>
 </svg>

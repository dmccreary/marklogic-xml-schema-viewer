xquery version "1.0-ml";
module namespace svg-util='http://code.google.com/p/xrx/svg-util';
(:
import module namespace svg-util='http://code.google.com/p/xrx/svg-util' at "/modules/svg-util.xqy";
:)

(: dangerious since we can never referene the null namespace in this module :)
declare default element namespace "http://www.w3.org/2000/svg";

(:
 To use a gradient use
 fill="url(#element)" 
 to us a drop shadow use
 filter="url(#dropshadow)"
 :)
 
declare variable $svg-util:defs :=
<defs>
    <linearGradient id="complex" x1="0%" y1="0%" x2="0%" y2="100%">
        <stop offset="0%" style="stop-color:rgb(255,255,255);stop-opacity:1"/>
        <stop offset="100%" style="stop-color:rgb(245,210,255);stop-opacity:1"/>
    </linearGradient>
    
    <linearGradient id="element" x1="0%" y1="0%" x2="0%" y2="100%">
     <stop offset="0%" style="stop-color:rgb(255,255,255);stop-opacity:1"/>
     <stop offset="100%" style="stop-color:rgb(200,200,255);stop-opacity:1"/>
    </linearGradient>
          
    <filter id="dropshadow" height="130%">
        <feGaussianBlur in="SourceAlpha" stdDeviation="3"/> <!-- stdDeviation is how much to blur -->
        <feOffset dx="2" dy="2" result="offsetblur"/> <!-- how much to offset -->
        <feMerge> 
            <feMergeNode/> <!-- this contains the offset blurred image -->
            <feMergeNode in="SourceGraphic"/> <!-- this contains the element that the filter is applied to -->
        </feMerge>
    </filter>
</defs>;

(: use this to display an oxygen-style sequence :)
declare variable $svg-util:sequence :=
<g class="sequence" transform="scale(.6)">
    <circle cx="40" cy="40" r="20" stroke="black" stroke-width="1" fill="LemonChiffon" filter="url(#dropshadow)"/>
    <rect x="41" y="30" height="10" width="10" stroke="black" stroke-width="1" fill="silver"/>
    <rect x="35" y="35" height="10" width="10" stroke="black" stroke-width="1" fill="silver"/>
    <rect x="29" y="41" height="10" width="10" stroke="black" stroke-width="1" fill="silver"/>
</g>;

(: some simple functions to make a wild guess on the font sizes.  We just need to get
close to create a box around the text so four categories of font sizes works fine for
99.9% of my data element names :)

(: The number of narrow letters like "i" and "l" the number "1" in a string :)

(: A very rough guess at the width of this string in pixels since we don't have font-width information :)
declare function svg-util:string-width($input as xs:string) as xs:double {
   let $very-wide := svg-util:count-very-wide($input) * 15.0
   let $wide := svg-util:count-wide($input) * 11.1
   let $normal-lower-case := svg-util:count-normal-lower-case($input) * 10
   let $narrow := svg-util:count-narrow($input) * 4
   return ($very-wide + $wide + $normal-lower-case + $narrow) * 1.2 + 5
};

(: Count only the uppercase letters by replaceing all lowercase, numbers and special chars with nulls. :)
declare function svg-util:count-upper-case($input as xs:string) as xs:integer {
  string-length(replace($input, '^[a-z0-9_\-]*', ''))
};

(: Count only the lowercase letters by replaceing all uppercase, numbers and special chars with nulls. :)
declare function svg-util:count-lower-case($input as xs:string) as xs:integer {
  string-length(replace($input, '^[A-Z0-9_\-]*', ''))
};

(: The number of very wide letters like "M" and "W" letters in a string :)
declare function svg-util:count-very-wide($input as xs:string) as xs:integer {
  string-length(replace($input, '[^MWmw]*', ''))
};

(: The number of non-mw uppercase letters in a string :)
declare function svg-util:count-wide($input as xs:string) as xs:integer {
   string-length(replace($input, '[^ABCDEFGHJKLNOPQRSTUVXYZ]*', ''))
};

(: The number of normal lowercase letters, number, -, _ except i and l :)
declare function svg-util:count-normal-lower-case($input as xs:string) as xs:integer {
   string-length(replace($input, '[^abcdefghknopqrsuvxyz234567890_\-]*', ''))
};

(: The number of narrow letters like "i" and "l" the number "1" in a string :)
declare function svg-util:count-narrow($input as xs:string) as xs:integer {
   string-length(replace($input, '[^ijItl1]*', ''))
};



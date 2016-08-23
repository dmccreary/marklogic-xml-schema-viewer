xquery version "1.0-ml";

declare function local:split-long-text($in as xs:string, $max-words as xs:positiveInteger) as xs:string* {
let $length := string-length($in)
let $tokens := tokenize($in, '\s+')
let $word-count := count($tokens)
let $sentences := floor($word-count div $max-words)
return
    for $word at $count in (1 to $sentences)
        return
        string-join(subsequence($tokens, 1 + ($count - 1) * $max-words, $max-words), ' ')
};

let $long-text :=
'One two three four five six seven eight nine ten. 
Eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen ninteen twenty. 
The quick brown fox jumps over the lazy dog. 
The quick brown fox jumps over the lazy dog. 
The quick brown fox jumps over the lazy dog. 
The quick brown fox jumps over the lazy dog.'

let $sens := local:split-long-text($long-text, 5)
return
  for $sen in $sens
  return <s>{$sen}</s>



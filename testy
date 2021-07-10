<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="Content-Style-Type" content="text/css">
  <title></title>
  <meta name="Generator" content="Cocoa HTML Writer">
  <meta name="CocoaVersion" content="1671.5">
  <style type="text/css">
    p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px Helvetica}
    p.p2 {margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px Helvetica; min-height: 14.0px}
  </style>
</head>
<body>
<p class="p1">#!/bin/bash</p>
<p class="p1">localPATH=`pwd`<span class="Apple-converted-space">                          </span># path of current directory</p>
<p class="p1">sep='---------------'</p>
<p class="p1">#for d in */; do</p>
<p class="p1">for d in {1..2}; do</p>
<p class="p1"><span class="Apple-converted-space">  </span>echo $sep"Checking Status of" $d$sep</p>
<p class="p1"><span class="Apple-converted-space">  </span>d=`echo $d | sed s#/##`<span class="Apple-converted-space">                </span># remove trailing forward slash</p>
<p class="p1"><span class="Apple-converted-space">  </span>#git -C $localPATH/$d checkout master <span class="Apple-converted-space">  </span># checkout master in different directory</p>
<p class="p1"><span class="Apple-converted-space">  </span>#git -C $localPATH/$d status<span class="Apple-converted-space">            </span># run git status</p>
<p class="p1"><span class="Apple-converted-space">  </span>NEW_UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)</p>
<p class="p1"><span class="Apple-converted-space">  </span>number=$RANDOM</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">  </span>echo $number &gt; $localPATH/hi.html</p>
<p class="p1"><span class="Apple-converted-space">  </span>git -C $localPATH/ add .<span class="Apple-converted-space"> </span></p>
<p class="p1"><span class="Apple-converted-space">  </span>git -C $localPATH/ commit -m 'hardyharhar'</p>
<p class="p1"><span class="Apple-converted-space">  </span>git -C $localPATH/ push</p>
<p class="p2"><br></p>
<p class="p1"><span class="Apple-converted-space">  </span>sleep 10<span class="Apple-converted-space">  </span># or sleep +3m</p>
<p class="p2"><span class="Apple-converted-space">  </span></p>
<p class="p1"><span class="Apple-converted-space">  </span>echo -e '\n'</p>
<p class="p1">done</p>
</body>
</html>

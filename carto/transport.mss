Map {
  background-color: transparent;
}

[zoom>=5][zoom<=8]
#transportLowzoom {
  line-width: 0;
  [highway='motorway'] { line-color: @interstatelowzoom; }
  [highway='trunk']    { line-color: @trunklowzoom; }
  [highway='primary']  { line-color: @primarylowzoom; }
  [zoom=5] {
    [highway='motorway'] { line-width: 0.8*@s; }
    [highway='trunk']    { line-width: 0.5*@s; }
  }
  [zoom=6] {
    [highway='motorway'] { line-width: 1.0*@s; }
    [highway='trunk']    { line-width: 0.7*@s; }
    [highway='primary']  { line-width: 0.3*@s; }
  }
  [zoom=7] {
    [highway='motorway'] { line-width: 1.3*@s; }
    [highway='trunk']    { line-width: 1.0*@s; }
    [highway='primary']  { line-width: 0.5*@s; }
  }
  [zoom=8] {
    [highway='motorway'] { line-width: 1.8*@s; }
    [highway='trunk']    { line-width: 1.5*@s; }
    [highway='primary']  { line-width: 0.7*@s; }
  }
   
  ::interstateShields [interstate!=''][zoom>=6][zoom<=8],
  ::usShields [usroute!=''][zoom>=7][zoom<=8]
  {
    shield-placement: line;
    shield-face-name: "DejaVu Sans Bold";
    shield-avoid-edges: true;
    shield-min-distance: 200;
    shield-spacing: 600;
    shield-size: 8;
    [interstate!=''] {
       shield-name: "[interstate]";
       shield-fill: white;
       shield-file: url(../symbols/shield-interstate.svg);
    }
    [usroute!=''] {
       shield-name: "[usroute]";
       shield-fill: black;
       shield-file: url(../symbols/shield-us.svg);
    }
    // TODO: Scale shields when supported by Carto
    //[textlen<=2] { shield-transform: scale(0.7, 0.7); }
    //[textlen>=3] { shield-transform: scale(0.9, 0.75); }
  }
}

/*
Outlines for roads, railways, trails etc.
NOTE: In the case where a line has no fill, it is
generally drawn here so that halos are applied
correctly.
Rail (of several types) are included here as
well to ensure that the vertical layering is
handled correctly.
*/
[zoom>=9]
#transportHizoom::outline
{
  line-width: 0;
  line-color: @roadcase;
  line-join: round;
  line-cap: round;
  [railway='rail'] {
    line-color: @railroad;
    line-cap: butt;
  }
  
  [zoom>=9] {
    [highway='motorway']       { line-width: 3*@s; }
    [highway='trunk']          { line-width: 3*@s; }
    [highway='primary']        { line-width: 1.5*@s; }
    [highway='secondary']      { line-width: 1*@s; }
    [highway='tertiary']       { line-width: 0.8*@s; }
    [tunnel='yes']             { line-dasharray: 2*@s,2*@s; line-cap: butt; }
    [railway='rail'] {
      line-width: 0.7*@s;
      ::ties { line-width: 2*@s; line-dasharray: 0.7*@s, 5*@s; line-color: @railroad; }
    }
    [railway='light_rail'],[railway='tram'],[railway='monorail'],
    [railway='subway'],[railway='funicular'] {
      line-width: 1*@s; line-color: @lightrail;
    }
  }
  [zoom>=10][zoom<=11] {
    [highway='motorway']       { line-width: 4*@s; }
    [highway='trunk']          { line-width: 4*@s; }
    [highway='primary']        { line-width: 3*@s; }
    [highway='secondary']      { line-width: 1.2*@s; }
    [highway='tertiary']       { line-width: 1.0*@s; }
    [highway='residential'],
    [highway='unclassified']   { line-width: 0.4*@s; }
    [highway='motorway_link'],
    [highway='trunk_link'],
    [highway='primary_link'],
    [highway='secondary_link'] { line-width: 0.4*@s; }
    [tunnel='yes']             { line-dasharray: 3*@s,2*@s; line-cap: butt; }
    [railway='rail'] {
      line-width: 0.8*@s;
      ::ties { line-width: 2.2*@s; line-dasharray: 0.8*@s, 6*@s; line-color: @railroad; }
    }
    [railway='light_rail'],[railway='tram'],[railway='monorail'],
    [railway='subway'],[railway='funicular'] {
      line-width: 1.2*@s; line-color: @lightrail;
    }
  }
  [zoom>=12][zoom<=13] {
    [highway='motorway']       { line-width: 6*@s; }
    [highway='trunk']          { line-width: 6*@s; }
    [highway='primary']        { line-width: 5*@s; }
    [highway='secondary']      { line-width: 4.5*@s; }
    [highway='tertiary']       { line-width: 4*@s; }
    [highway='residential'],
    [highway='unclassified']   { line-width: 1.2*@s; }
    [highway='motorway_link'],
    [highway='trunk_link'],
    [highway='primary_link'],
    [highway='secondary_link'] { line-width: 2*@s; }
    [highway='track'],
    [highway='unsurfaced'],
    [highway='unimproved']     { line-width: 1.2*@s; line-dasharray: 4*@s,2*@s; line-cap: butt; }
    [highway='cycleway'],
    [highway='bridleway']      { line-width: 0.8*@s; line-dasharray: 5*@s,1*@s; line-cap: butt; }
    [highway='footway'],
    [highway='path']           { line-width: 0.8*@s; line-dasharray: 3*@s,2*@s; line-cap: butt; }
    [tunnel='yes']             { line-dasharray: 5*@s,3*@s; line-cap: butt; }
    [railway='rail'] {
      line-width: 1.0*@s;
      ::ties { line-width: 2.5*@s; line-dasharray: 1.0*@s, 8*@s; line-color: @railroad; }
    }
    [railway='light_rail'],[railway='tram'],[railway='monorail'],
    [railway='subway'],[railway='funicular'] {
      line-width: 1.5*@s; line-color: @lightrail;
    }
  }
  [zoom>=14][zoom<=15] {
    [highway='motorway']       { line-width: 9*@s; }
    [highway='trunk']          { line-width: 9*@s; }
    [highway='primary']        { line-width: 7.5*@s; }
    [highway='secondary']      { line-width: 6.5*@s; }
    [highway='tertiary']       { line-width: 5.5*@s; }
    [highway='residential'],
    [highway='unclassified']   { line-width: 4.5*@s; }
    [highway='service']        { line-width: 3*@s; }
    [highway='track'],
    [highway='unsurfaced'],
    [highway='unimproved']     { line-width: 3*@s; line-dasharray: 5*@s,2*@s; line-cap: butt; }
    [highway='cycleway'],
    [highway='bridleway']      { line-width: 1.5*@s; line-dasharray: 6*@s,1*@s; line-cap: butt; }
    [highway='footway'],
    [highway='path']           { line-width: 1.5*@s; line-dasharray: 4*@s,3*@s; line-cap: butt; }
    [highway='motorway_link'],
    [highway='trunk_link'],
    [highway='primary_link'],
    [highway='secondary_link'] { line-width: 4.5*@s; }
    [tunnel='yes']             { line-dasharray: 8*@s,5*@s; line-cap: butt; line-color: @railroad; }
    [railway='rail'] {
      line-width: 1.3*@s;
      ::ties[tunnel='no'] { line-width: 4.5*@s; line-dasharray: 1.3*@s, 12*@s; }
    }
    [railway='light_rail'],[railway='tram'],[railway='monorail'],
    [railway='subway'],[railway='funicular'] {
      line-width: 2*@s; line-color: @lightrail;
    }
  }  
  [zoom>=16] {
    [highway='motorway']       { line-width: 13*@s; }
    [highway='trunk']          { line-width: 13*@s; }
    [highway='primary']        { line-width: 10*@s; }
    [highway='secondary']      { line-width: 9*@s; }
    [highway='tertiary']       { line-width: 8*@s; }
    [highway='residential'],
    [highway='unclassified']   { line-width: 7*@s; }
    [highway='service']        { line-width: 4.5*@s; }
    [highway='track'],
    [highway='unsurfaced'],
    [highway='unimproved']     { line-width: 4.5*@s; line-dasharray: 8*@s,4*@s;  line-cap: butt; }
    [highway='cycleway'],
    [highway='bridleway']      { line-width: 2*@s; line-dasharray: 8*@s,1.5*@s; line-cap: butt; }
    [highway='footway'],
    [highway='path']           { line-width: 2*@s; line-dasharray: 5*@s,3*@s; line-cap: butt; }
    [highway='motorway_link'],
    [highway='trunk_link'],
    [highway='primary_link'],
    [highway='secondary_link'] { line-width: 7*@s; }
    [tunnel='yes']             { line-dasharray: 10*@s,7*@s; line-cap: butt; line-color: @railroad; }
    [railway='rail'] {
      line-width: 2*@s;
      ::ties { line-width: 6*@s; line-dasharray: 2*@s, 16*@s; }
    }
    [railway='light_rail'],[railway='tram'],[railway='monorail'],
    [railway='subway'],[railway='funicular'] {
      line-width: 3*@s; line-color: @lightrail;
    }
  }
}

/*
Road fills.
Bridge outlines, shields and labels are included here too.
*/
[zoom>=9]
#transportHizoom
{
  line-width: 0; // don't fill unless explicitly spec:d
  line-color: @smallroad; // default road fill
  line-join: round;
  line-cap: round;

  /* Road fill colors */
  [highway='motorway']  { line-color: @interstate; }
  [highway='trunk']     { line-color: @trunk; }
  [highway='primary']   { line-color: @primary; }
  [highway='secondary'] { line-color: @secondary; }
  [highway='motorway_link'] { line-color: @interstate; }
  [highway='trunk_link']    { line-color: @trunk; }
  [highway='primary_link']  { line-color: @primary; }
  [highway='secondary_link']{ line-color: @secondary; }

  /* Road tunnel fill color overrides */
  [tunnel='yes'] {
    [highway='motorway'] { line-color: @interstatetunnel; }
    [highway='trunk']     { line-color: @trunktunnel; }
    [highway='primary']   { line-color: @primarytunnel; }
    [highway='secondary'] { line-color: @secondarytunnel; }
    [highway='motorway_link'] { line-color: @interstatetunnel; }
    [highway='trunk_link']    { line-color: @trunktunnel; }
    [highway='primary_link']  { line-color: @primarytunnel; }
    [highway='secondary_link']{ line-color: @secondarytunnel; }
  }

  /* Road fill widths */
  [zoom=9] {
    [highway='trunk']          { line-width: 2*@s; }
    [highway='motorway']       { line-width: 2*@s; }
  }
  [zoom>=10][zoom<=11] {
    [highway='motorway'] { line-width: 2*@s; }
    [highway='trunk']    { line-width: 2*@s; }
    [highway='primary']  { line-width: 1.5*@s; }
    [highway='motorway_link'],
    [highway='trunk_link'],
    [highway='primary_link'],
    [highway='secondary_link'] { line-width: 1*@s; }
  } 
  [zoom>=12][zoom<=13] {
    [highway='motorway']       { line-width: 4*@s; }
    [highway='trunk']          { line-width: 4*@s; }
    [highway='primary']        { line-width: 3.5*@s; }
    [highway='secondary']      { line-width: 3*@s; }
    [highway='tertiary']       { line-width: 2.5*@s; }
    [highway='motorway_link'],
    [highway='trunk_link'],
    [highway='primary_link'],
    [highway='secondary_link'] { line-width: 0.5*@s; }
  }
  [zoom>=14][zoom<=15] {
    [highway='motorway']       { line-width: 7*@s; }
    [highway='trunk']          { line-width: 7*@s; }
    [highway='primary']        { line-width: 6*@s; }
    [highway='secondary']      { line-width: 5*@s; }
    [highway='tertiary']       { line-width: 4*@s; }
    [highway='residential'],
    [highway='unclassified']   { line-width: 3*@s; }
    [highway='track'],
    [highway='unsurfaced'],
    [highway='unimproved'],
    [highway='service']        { line-width: 2*@s; }
    [highway='motorway_link'],
    [highway='trunk_link'],
    [highway='primary_link'],
    [highway='secondary_link'] { line-width: 2*@s; }
  }
  [zoom>=16] {
    [highway='motorway']       { line-width: 10*@s; }
    [highway='trunk']          { line-width: 10*@s; }
    [highway='primary']        { line-width: 8*@s; }
    [highway='secondary']      { line-width: 7*@s; }
    [highway='tertiary']       { line-width: 6*@s; }
    [highway='residential'],
    [highway='unclassified']   { line-width: 5*@s; }
    [highway='track'],
    [highway='unsurfaced'],
    [highway='unimproved'],
    [highway='service']        { line-width: 3*@s; }
    [highway='motorway_link'],
    [highway='trunk_link'],
    [highway='primary_link'],
    [highway='secondary_link'] { line-width: 5*@s; }
  }
  
  /* Bridge outlines (z14+). 
  NOTE: These must be in the same style as highway
  fills, since they are often drawn "inbetween" different
  layer roads. Outlines at the same layer will draw before
  fills, however, thanks to "pass".
  */
  [bridge='yes'][pass=1] {
    line-color: @bridgecase;
    line-cap: butt;
    [zoom>=14][zoom<=15] {
      [highway='motorway']       { line-width: 10*@s; }
      [highway='trunk']          { line-width: 10*@s; }
      [highway='primary']        { line-width: 9.5*@s; }
      [highway='secondary']      { line-width: 8.5*@s; }
      [highway='tertiary']       { line-width: 7.5*@s; }
      [highway='residential'],
      [highway='unclassified']   { line-width: 6.5*@s; }
      [highway='motorway_link'],
      [highway='trunk_link'],
      [highway='primary_link'],
      [highway='secondary_link'] { line-width: 4.5*@s; }
    }
    [zoom>=16] {
      [highway='motorway']       { line-width: 15*@s; }
      [highway='trunk']          { line-width: 15*@s; }
      [highway='primary']        { line-width: 12*@s; }
      [highway='secondary']      { line-width: 11*@s; }
      [highway='tertiary']       { line-width: 10*@s; }
      [highway='residential'],
      [highway='unclassified']   { line-width: 9*@s; }
      [highway='motorway_link'],
      [highway='trunk_link'],
      [highway='primary_link'],
      [highway='secondary_link'] { line-width: 9*@s; }
    }
  }
  
  // Shields
  ::interstateShields [interstate!=''],
  ::usShields [usroute!='']
  // TODO: Add state shields
  {
    shield-placement: line;
    shield-face-name: "DejaVu Sans Bold";
    shield-avoid-edges: true;
    shield-min-distance: 200;
    shield-spacing: 600;
    shield-size: 8;
    [interstate!=''] {
       shield-name: "[interstate]";
       shield-fill: white;
       shield-file: url(../symbols/shield-interstate.svg);
    }
    [usroute!=''] {
       shield-name: "[usroute]";
       shield-fill: black;
       shield-file: url(../symbols/shield-us.svg);
    }
    // TODO: Scale shields when supported by Carto
    //[textlen<=2] { shield-transform: scale(0.7, 0.7); }
    //[textlen>=3] { shield-transform: scale(0.9, 0.75); }
  }
  
  // Road labels
  ::roadLabelsMajor [zoom=14] {
    [highway='motorway'], [highway='trunk'],
    [highway='primary'], [highway='secondary']
    {
       text-name: "[name]"; 
       text-face-name: "DejaVu Sans Book";
       text-size: 9;
       text-min-path-length: 150;
       text-spacing: 400;
       text-min-distance: 50;
       text-avoid-edges: true;
       text-placement: line;
       text-halo-fill: white;
       text-halo-radius: 2px;
       text-max-char-angle-delta: 20;
       [highway='motorway'], [highway='trunk'] {
         text-size: 10;
       }
    }
  }
  ::roadLabelsAll [zoom>=15] {
    text-name: "[name]"; 
    text-face-name: "DejaVu Sans Book";
    text-size: 10;
    text-min-path-length: 150;
    text-spacing: 400;
    text-min-distance: 50;
    text-avoid-edges: true;
    text-placement: line;
    text-halo-fill: white;
    text-halo-radius: 2px;
    text-max-char-angle-delta: 20;
    [highway='motorway'], [highway='trunk'], [highway='primary'] {
      text-size: 12;
    }
  }
} 




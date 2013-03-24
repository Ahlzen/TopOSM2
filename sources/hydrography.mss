Map {
  background-color: transparent;
}


// Low zoom levels

#nhdFlowlineLowzoom [zoom >= 7][zoom < 13]
{
   line-color: @waterline;   

   // Line width by zoom level
   line-width: 0.4;
   [zoom >= 10][zoom <= 11] { line-width: 0.6; }
   [zoom >= 12] { line-width: 0.8; }
}

#nhdWaterbodyLowzoom [zoom >= 7][zoom < 13]
{
    line-color: @waterline;
    
    // Line width by zoom level
    line-width: 0.4;
    [zoom >= 10][zoom <= 11] { line-width: 0.6; }
    [zoom >= 12] { line-width: 0.8; }
    
    // Fill in a separate layer to ensure
    // that it covers seams between adjacent polygons
    ::fill { polygon-fill: @waterfill; }
}

#nhdWaterbodyLabelsLowzoom [zoom >= 8][zoom < 13]
{
  [zoom=8][size>80] ::labels8,
  [zoom=9][size>40] ::labels9,
  [zoom=10][size>20]::labels10,
  [zoom=11][size>8] ::labels11,
  [zoom=12][size>4] ::labels12
  {
    text-name: "[gnis_name]";
    text-fill: @waterline;
    text-face-name: @hydroFont;
    text-halo-fill: @waterfill;
    text-halo-radius: 1;
    [zoom=8] { text-size: 10; }
    [zoom=9] { text-size: 11; text-character-spacing: 1; }
    [zoom>=10] { text-size: 12; text-character-spacing: 2; }
  }
}


// High zoom levels

#nhdWetlands [zoom >= 13] {
  polygon-pattern-file: url(../symbols/marsh.png);
}

#nhdFlowline [zoom >= 13]
{
   line-color: @waterline;   

   // Line width by zoom level
   line-width: 1.0;
   [zoom = 15] { line-width: 1.2; }
   [zoom >= 16] { line-width: 1.5; }
   
   // Special styles by feature type
   [fcode = 33400] {} // Connector
   [fcode = 33600] {} // Canal / ditch
   [fcode = 33601] {} // Aqueduct-canal
   [fcode = 42800],
   [fcode = 42801],
   [fcode = 42802],
   [fcode = 42805],
   [fcode = 42806],
   [fcode = 42809],
   [fcode = 42810],
   [fcode = 42813],
   [fcode = 42814],
   [fcode = 42815],
   [fcode = 42816],
   [fcode = 42820],
   [fcode = 42821],
   [fcode = 42822] { line-dasharray: 16,8; } // pipeline/aqueduct, ground/elevated
   [fcode = 42803],
   [fcode = 42804],
   [fcode = 42807],
   [fcode = 42808],
   [fcode = 42811],
   [fcode = 42812],
   [fcode = 42823],
   [fcode = 42824] { line-dasharray: 8,16; } // pipeline/aqueduct, underground/underwater
   [fcode = 46000] {} // Stream
   [fcode = 46003] { line-dasharray: 6,3; } // Intermittent stream
   [fcode = 46006] {} // Perennial Stream
   [fcode = 46007] { line-dasharray: 3,6; } // Ephemeral stream
   [fcode = 55800] {} // artificial path
   [fcode = 56600] { line-width: 0; } // coastline
}

#nhdWaterbody [zoom >= 13],
#nhdAreaOpenWater [zoom >= 13],
{
    line-color: @waterline;
    
    // Line width by zoom level
    line-width: 1.0;
    [zoom = 15] { line-width: 1.2; }
    [zoom >= 16] { line-width: 1.5; }

    // Special styles by feature type
    [fcode = 39001],
    [fcode = 46003] { line-dasharray: 6,3; } // Intermittent
    [fcode = 46007] { line-dasharray: 3,6; } // Ephemeral
    
    // Fill on a separate layer to ensure that
    // it covers seams between adjacent polygons
    ::fill { polygon-fill: @waterfill; }
}

#nhdWaterbodyLabels [zoom >= 13]
{
    text-name: "[gnis_name]";
    text-fill: @waterline;
    text-face-name: @hydroFont;
    text-halo-fill: @waterfill;
    text-halo-radius: 1;
    text-size: 12;
    text-character-spacing: 2;
    [zoom>=14][size>10] { text-size: 16; text-character-spacing: 3; }
}

#nhdFlowlineLabels [zoom>=13]
{
  text-name: "[gnis_name]";
  text-face-name: @hydroFont;
  text-fill: @waterline;
  text-halo-fill: @waterfill;
  text-halo-radius: 1.5;
  text-placement: line;
  text-spacing: 600;
  text-min-distance: 400;
  text-max-char-angle-delta: 18;
  text-size: 13;
}


#nhdPoint [zoom>=15]
{
  // Dam/weir
  [fcode=34300],
  [fcode=34305],
  [fcode=34306] {
    marker-width: 4;
    marker-line-width: 0;
    marker-fill: @waterline;
    marker-allow-overlap: true;
  }

  // Well
  [fcode=48800] {
    marker-width: 5;
    marker-line-color: @waterline;
    marker-line-width: 1.5;
    marker-fill: @waterfill;
    marker-allow-overlap: true;
  }

  // Gaging station
  [fcode=36700] {
    point-file: url(../symbols/gaging-station-blue.svg);
    point-transform: scale(0.35, 0.35);
    point-allow-overlap: true;
  }
}

#nhdLine [zoom>=11]
{
  line-width: 0;
  
  // Manmade linear features
  [fcode=34300], // Dam/weir
  [fcode=34305],
  [fcode=34306],
  [fcode=36900], // Gate
  [fcode=41100], // Non-earthen shore
  [fcode=48300]  // Wall
  {
     line-color: #666;
     [zoom>=12][zoom<=13] { line-width: 0.6; }
     [zoom>=14] { line-width: 1.0; }
  }
}

#nhdAreaNonwater [zoom>=11]
{ 
  // Dam/weir
  [fcode=34300],
  [fcode=34305],
  [fcode=34306] {
     polygon-fill: #666;
  }
  
  // Hazard zones
  [fcode=37300] {
     line-color: red;
     line-width: 0.4;
     line-dasharray: 4,4;
  }
  
  // Special Use Zones
  [fcode=45400],
  [fcode=45403] {
     line-color: yellow;
     line-width: 0.4;
     line-dasharray: 4,4;
  }
  
  // Rapids
  [fcode=43100] {
    polygon-fill: white;
  }
  
  // Submerged streams
  [fcode=46100] {
    line-color: @waterline;
    line-width: 0.4;
    line-dasharray: 4,4;
  }
}


Map {
  background-color: transparent;
}



// Low zoom levels

[zoom>=7][zoom<=10] #NHDPermanentFlowlineLowzoom {
  line-width: 0;
  line-color: @waterline;
  [zoom=7][size>8] { line-width: 0.1; }
  [zoom=8][size>8] { line-width: 0.2; }
  [zoom>=9][zoom<=10][size>4] { line-width: 0.3; }
  
  // Label progressively smaller features at higher z's
  [zoom=8][size>40] ::labels8,
  [zoom=9][size>20] ::labels9,
  [zoom=10][size>10]::labels10
  {
    text-name: "[gnis_name]";
    text-fill: @waterline;
    text-placement: line;
    text-max-char-angle-delta: 20;
    text-face-name: 'Gentium Italic';
    text-halo-fill: @waterfill;
    text-halo-radius: 1;
    [zoom=8] { text-size: 9; text-character-spacing: 1; }
    [zoom=9] { text-size: 10; text-character-spacing: 2; }
    [zoom=10] { text-size: 11; text-character-spacing: 4; }
  }
}

[zoom>=5][zoom<=10] #NHDPermanentWaterbodyLowzoom {
  polygon-fill: @waterfill;
  [zoom=7] { line-color: @waterline; line-width: 0.1; }
  [zoom=8] { line-color: @waterline; line-width: 0.2; }
  [zoom>=9] { line-color: @waterline; line-width: 0.3; }
  
  [zoom=8][size>80] ::labels8,
  [zoom=9][size>40] ::labels9,
  [zoom=10][size>20]::labels10
  {
    text-name: "[gnis_name]";
    text-fill: @waterline;
    text-face-name: 'Gentium Italic';
    text-halo-fill: @waterfill;
    text-halo-radius: 1;
    [zoom=8] { text-size: 10; }
    [zoom=9] { text-size: 11; text-character-spacing: 1; }
    [zoom=10] { text-size: 12; text-character-spacing: 2; }
  }
}



// High zoom levels

[zoom>=11] .permanentHydro { 
  line-color: @waterline; 
  [zoom>=11][zoom<=13] { line-width: 1.0; }
  [zoom>=14][zoom<=15] { line-width: 1.6; }
  [zoom>=16] { line-width: 2.0; }
}

[zoom>=14] .intermittentHydro {
  // Only shown at higher zoom levels, because some NHD areas
  // have way too dense intermittent streams
  line-color: @waterline; 
  line-dasharray: 6,3,2,3;
  [zoom>=14][zoom<=15] { line-width: 1.0; }
  [zoom>=16] { line-width: 1.6; }
}

[zoom>=11] #NHDPermanentWaterbody,
[zoom>=11] #NHDPermanentArea {
  polygon-fill: @waterfill;
  
  [zoom=11][size>8] ::labels11,
  [zoom=12][size>4] ::labels12,
  [zoom=13][size>0.5] ::labels13,
  [zoom>=14] ::labels14
  {
    text-name: "[gnis_name]";
    text-fill: @waterline;
    text-face-name: 'Gentium Italic';
    text-halo-fill: @waterfill;
    text-halo-radius: 1;
    text-size: 12;
    text-character-spacing: 2;
    [zoom>=12][size>20] { text-size: 14; text-character-spacing: 3; }
    [zoom>=14][size>10] { text-size: 16; text-character-spacing: 3; }
  }
}

[zoom>=11] #NHDTunnelFlowline {
  line-color: @waterline;
  line-dasharray: 8,8;
  [zoom<=13] { line-width: 0.5; }
  [zoom>=14] { line-width: 0.9; }
}

// TODO: Make this layer work...
/*
#NHDPoint {
  marker-width: 0;
  marker-line-width: 0;
  marker-allow-overlap: true;  
  [fcode=@nhdDamWeir],
  [fcode=@nhdDamWeir_Earthen],
  [fcode=@nhdDamWeir_Nonearthen] {
    marker-width: 5;
    marker-fill: red;
  }
  [fcode=@nhdWell] {
    text-name: "&#x25cb;";
    text-size: 6;
    text-fill: @waterline;
    text-allow-overlap: true;
    text-vertical-alignment: middle;
    text-horizontal-alignment: middle;
    text-face-name: 'DejaVu Sans Book';
  }
  [fcode=@nhdGagingStation] {
    marker-width: 5;
    marker-fill: lime;
  }
}
*/

[zoom>=11] #NHDNonwaterLine {
  line-width: 0;
  
  // Manmade linear features
  [fcode=@nhdDamWeir],
  [fcode=@nhdDamWeir_Earthen],
  [fcode=@nhdDamWeir_Nonearthen],
  [fcode=@nhdGate],
  [fcode=@nhdNonearthenShore],
  [fcode=@nhdWall] {
    line-color: #666;
    [zoom>=12][zoom<=13] { line-width: 0.6; }
    [zoom>=14] { line-width: 1.0; }
  }
}

[zoom>=11] #NHDNonwaterFill
{ 
  // Dams
  [fcode=@nhdDamWeir],
  [fcode=@nhdDamWeir_Earthen],
  [fcode=@nhdDamWeir_Nonearthen] {
    [zoom>=11] { polygon-fill: #666; }
  }
  
  // Hazard zones
  [fcode=@nhdHazardZone][zoom>=11] {
    line-color: red;
    line-width: 0.4;
    line-dasharray: 4,4;
  }
  
  // Special Use Zones
  [fcode=@nhdSpecialUseZone],
  [fcode=@nhdSpecialUseZone_SpoilArea_Operation] {
    [zoom>=11] {
      line-color: yellow;
      line-width: 0.4;
      line-dasharray: 4,4;
    }
  }
  
  // Rapids
  [fcode=@nhdRapids][zoom>=11] {
    polygon-fill: white;
  }
  
  // Submerged streams
  [fcode=@nhdSubmergedStream][zoom>=11] {
    line-color: @waterline;
    line-width: 0.4;
    line-dasharray: 4,4;
  }
}



// Dedicated label layers

// Unfortunately, the labels need to go on a separate layer
// to ensure that they're on top of river polygons
[zoom>=8] #NHDArtificialPathLabels,
[zoom>=11] #NHDFlowlineLabels
{
  text-name: "[gnis_name]";
  text-face-name: 'Gentium Italic';
  text-fill: @waterline;
  text-halo-fill: @waterfill;
  text-halo-radius: 1;
  text-placement: line;
  text-spacing: 600;
  text-min-distance: 100;
  text-max-char-angle-delta: 20;
  [zoom<=11] { text-size: 11; }
  [zoom=12] { text-size: 12; }
  [zoom>=13] { text-size: 13; }
}


Map {
  background-color: transparent;
}


// Low zoom layers

[zoom>=7][zoom<=10] #NHDPermanentFlowlineLowzoom {
  line-width: 0;
  line-color: @waterline;
  [zoom=7][size>8] { line-width: 0.1; }
  [zoom=8][size>8] { line-width: 0.2; }
  [zoom>=9][zoom<=10][size>4] { line-width: 0.3; }
}

[zoom>=5][zoom<=10] #NHDPermanentWaterbodyLowzoom {
  polygon-fill: @waterfill;
  [zoom=7] { line-color: @waterline; line-width: 0.1; }
  [zoom=8] { line-color: @waterline; line-width: 0.2; }
  [zoom>=9] { line-color: @waterline; line-width: 0.3; }
}


// High zoom layers (z11+)

.permanentHydro,
.intermittentHydro
{
  [zoom>=11] {
     line-width: 0;
     line-color: @waterline;
  }
}

[zoom>=11] .permanentHydro
{  
  [zoom>=11][zoom<=13] { line-width: 1.0; }
  [zoom>=14] { line-width: 1.6; }
}

[zoom>=14] .intermittentHydro {

  // Removing this because some NHD areas have way too
  // dense intermittent streams to display at these levels
  //[zoom>=11][zoom<=13] {
  //  line-width: 0.5;
  //  line-dasharray: 4,2,2,2;
  //}

  [zoom>=14] {
    line-width: 1.0;
    line-dasharray: 6,3,3,3;
  }
}


[zoom>=11] #NHDPermanentWaterbody,
[zoom>=11] #NHDPermanentArea {
  //[zoom>=7][zoom<=8][size>8],
  //[zoom>=9][zoom<=10][size>4],
  polygon-fill: @waterfill;
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

[zoom>=11] #NHDNonwaterFill {
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
  // Special Use Zone
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
  // Submerged stream
  [fcode=@nhdSubmergedStream][zoom>=11] {
    line-color: @waterline;
    line-width: 0.4;
    line-dasharray: 4,4;
  }
}


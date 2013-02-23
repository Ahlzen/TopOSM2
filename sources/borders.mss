[zoom>=4]
#statePolygons {
  line-width:1;
  line-color: #640;
  
  // State outlines
  [zoom=4] { line-opacity: 0.05; }
  [zoom>=5] { line-opacity: 0.1; }
  [zoom>=6] { line-opacity: 0.15; }
  [zoom>=7] { line-opacity: 0.3; }
  
  // Center labels (exclude very small areas)
  [way_area > 1000000000][zoom<8] {
    text-face-name: "DejaVu Sans Condensed Bold";
    text-fill: #640;
    text-name: "[ref]";
    text-size: 8;
    text-halo-fill: white;
    text-halo-radius: 2;
    text-opacity: 0.6;
    [zoom>=5] {
      text-size: 11;
    }
    [zoom>=6] {
      text-name: "[name]";
      text-transform: uppercase;
      text-character-spacing: 4;
      text-size: 12;
    }
    [zoom=7] {
      text-size: 18;
      text-character-spacing: 8;
    }
  }
  
  // Borderlines/labels for higher zoom levels
  [zoom>=8] {
    ::borderHalo {
      line-width:4;
      line-color: #640;
      line-opacity: 0.1;
      line-offset: -2;
    }
    line-opacity: 1;
    line-dasharray: 1, 5;
    text-face-name: "DejaVu Serif Book";
    text-placement: line;
    text-size: 10;
    text-fill: #640;
    text-halo-radius: 0;
    text-transform: uppercase;
    text-name: "[name]";
    text-dy: -11;
    text-max-char-angle-delta: 15;
    text-character-spacing: 4;
    text-spacing: 600;
  }
}



Map {
  background-color: transparent;
}

#buildings [zoom >= 12]
{
  polygon-fill: @buildingColor;
  [zoom = 12] { polygon-opacity: 0.3; }
  [zoom = 13] { polygon-opacity: 0.6; }

  // Center labels (exclude very small areas)
  [zoom >= 15][name != '']
  {
    text-face-name: @buildingFont;
    text-fill: #ccc;
    text-name: "[name]";
    text-size: 10;
    text-halo-fill: @buildingColor;
    text-halo-radius: 1;
  }
}

[zoom >= 11] #parksHizoom
{
  ::borderHalo {
      line-width: 6;
      line-offset: -3;
      [zoom = 14] { line-width: 8; line-offset: -4; }
      [zoom>= 15] { line-width: 10; line-offset: -5; }
      
      line-color: #060;
      line-opacity: 0.15;
      
  }
  line-width: 0.5;
  [zoom >= 13] { line-width: 0.7; }
  line-color: #040;
  line-dasharray: 2, 2, 5, 2;
  
  /*
  // outlines
  [zoom=4] { line-opacity: 0.05; }
  [zoom>=5] { line-opacity: 0.1; }
  [zoom>=6] { line-opacity: 0.15; }
  [zoom>=7] { line-opacity: 0.3; }
  */
  
  // Center labels (exclude very small areas)
  [way_area > 10]
  {
    //text-face-name: "DejaVu Serif Book";
    text-face-name: "Liberation Serif Regular";
    //text-fill: #dfd;
    text-fill: #040;
    text-name: "[name]";
    text-size: 10;
    //text-halo-fill: #060;
    //text-halo-radius: 1;
    //text-opacity: 0.8;
    [zoom>=12] { text-size: 12; }
    [zoom>=13] { text-size: 13; }
    [zoom>=14] { text-size: 14; }
  }
}

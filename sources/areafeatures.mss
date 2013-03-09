Map {
  background-color: transparent;
}

#buildings [zoom >= 12]
{
   polygon-fill: @buildingColor;
   [zoom = 12] { polygon-opacity: 0.3; }
   [zoom = 13] { polygon-opacity: 0.6; }
}

#buildingLabels [zoom >= 16]
{
   text-face-name: @buildingFont;
   text-fill: @buildingColor;
   text-name: "[name]";
   text-size: 11;
   text-halo-fill: #ccc;
   text-halo-radius: 1;
}

#parksHizoom [zoom >= 11]
{
  ::borderHalo {
      line-width: 6;
      line-offset: -3;
      [zoom = 14] { line-width: 8; line-offset: -4; }
      [zoom>= 15] { line-width: 10; line-offset: -5; }
      line-color: @parkColor;
      line-opacity: 0.15;
  }
  line-width: 0.5;
  [zoom >= 13] { line-width: 0.7; }
  line-color: @parkColor;
  line-dasharray: 2, 2, 5, 2;
}
 
#parkLabels [zoom >= 10]
{
  // Exclude very small areas
  [way_area > 10]
  {
     [zoom >= 10][zoom <= 13]
     {
        // Center labels
        text-face-name: @parkFont;
        text-halo-fill: @parkHalo;
        text-halo-radius: 1.5;
        text-fill: @parkColor;
        text-name: "[name]";
        text-size: 11;
     }
     [zoom >= 14]
     {
        // Boundary labels
        text-face-name: @parkFont;
        /*
        text-halo-fill: @parkHalo;
        text-halo-radius: 1.5;
        */
        text-fill: @parkColor;
        text-name: "[name]";
        text-size: 10;
        text-placement: line;
        text-dy: -14;
        text-spacing: 600;
        text-min-distance: 600;
        text-max-char-angle-delta: 20;
        text-character-spacing: 2;
     }
  }
}


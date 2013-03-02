Map {
  background-color: transparent;
}

[zoom >= 12] #buildings
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


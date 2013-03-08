#placenames [zoom>=8]
{
  [zoom>=8][zoom<=9][priority<=2] {
    marker-fill:#555;
    marker-line-color:#000;
    marker-opacity: 0.3;
    marker-allow-overlap: false;
    marker-width: 5;
    text-face-name: @placenameFont;
    [zoom=8] { text-size: 10; }
    [zoom=9] { text-size: 12; }
    [zoom=10] { text-size: 14; }
    text-dy: 7;
    text-fill: darken(@placenameColor, 50%);
    text-halo-radius: 2;
    text-name: "[name]";
  }
  [zoom>=10][zoom<=12][priority<=6] {
    text-face-name: @placenameFont;
    text-size: 12;
    text-dy: 8;
    text-fill: @placenameColor;
    text-halo-radius: 2;
    text-name: "[name]";
    [priority=2] { text-size: 16; }
    [priority=4] { text-size: 14; }
  }
  [zoom>=13][zoom<=13][priority<=8] {
    text-face-name: @placenameFont;
    text-size: 12;
    text-dy: 8;
    text-fill: @placenameColor;
    text-halo-radius: 3;
    text-name: "[name]";
    [priority=2] { text-size: 20; }
    [priority=4] { text-size: 16; }
  }
  [zoom>=14] {
    text-face-name: @placenameFont;
    text-size: 12;
    text-dy: 8;
    text-fill: @placenameColor;
    text-halo-radius: 3;
    text-name: "[name]";
    [priority=2] { text-size: 24; }
    [priority=4] { text-size: 18; }
    [priority>4] { text-size: 14; }
  }
}


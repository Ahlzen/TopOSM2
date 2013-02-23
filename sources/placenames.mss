[zoom>=8]
#placenames {
  [zoom>=8][zoom<=10][priority<=2] {
    marker-fill:#555;
    marker-line-color:#000;
    marker-opacity: 0.3;
    marker-allow-overlap: false;
    marker-width: 5;
    text-face-name: "DejaVu Serif Book";
    [zoom=8] { text-size: 10; }
    [zoom=9] { text-size: 12; }
    [zoom=10] { text-size: 14; }
    text-dy: 7;
    text-fill: #320;
    text-halo-radius: 2;
    text-name: "[name]";
  }
  [zoom>=11][zoom<=13][priority<=4] {
    text-face-name: "DejaVu Serif Book";
    text-size: 12;
    text-dy: 8;
    text-fill: #640;
    text-halo-radius: 2;
    text-name: "[name]";
    [priority=2] { text-size: 16; }
    [priority=4] { }
  }
  [zoom>=14][zoom<=14][priority<=6] {
    text-face-name: "DejaVu Serif Book";
    text-size: 12;
    text-dy: 8;
    text-fill: #640;
    text-halo-radius: 3;
    text-name: "[name]";
    [priority=2] { text-size: 20; }
    [priority=4] { text-size: 16; }
    [priority>4] { }
  }
  [zoom>=15] {
    text-face-name: "DejaVu Serif Book";
    text-size: 12;
    text-dy: 8;
    text-fill: #640;
    text-halo-radius: 3;
    text-name: "[name]";
    [priority=2] { text-size: 24; }
    [priority=4] { text-size: 18; }
    [priority>4] { }
  }
}


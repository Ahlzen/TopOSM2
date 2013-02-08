Map {
  background-color: @maskHidden;
}

/*
#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #eee;
}
*/



[zoom >= 15]
#contours50 {
  line-color: @maskVisible;
  line-width: @contourWidth;
  line-smooth: @contourSmooth;
}

[zoom >= 13]
#contours200 {
  line-color: @maskVisible;
  line-width: @contourWidth;
  line-smooth: @contourSmooth;
  [zoom >= 15] {
    line-width: @contourWidthMajor;
    text-name: "[height_ft]";
    text-face-name: @contourFont;
    text-size: @contourTextSize;
    text-max-char-angle-delta: 30;
    text-fill: @maskVisible;
    text-halo-fill: @maskHidden;
    text-halo-radius: 2;
    text-placement: line;
    text-spacing: 500;
    text-min-distance: 150;
    text-avoid-edges: true;
  }
}

[zoom >= 13][zoom < 15]
#contours1000 {
  line-width: @contourWidthMajor;
  line-color: @maskVisible;
  line-smooth: @contourSmooth;
  text-name: "[height_ft]";
  text-face-name: @contourFont;
  text-size: @contourTextSize;
  text-max-char-angle-delta: 30;
  text-fill: @maskVisible;
  text-halo-fill: @maskHidden;
  text-halo-radius: 2;
  text-placement: line;
  text-spacing: 500;
  text-min-distance: 150;
  text-avoid-edges: true;
}


// TODO: Add filtered c1000 for 11 <= z < 13


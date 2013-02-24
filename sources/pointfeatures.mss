Map {
  background-color: transparent;
}

[zoom>=10]
#pointfeatures
{
  [natural="peak"][zoom>=13]
  {
    point-file: url(../symbols/peak.svg);
    point-transform: scale(5.0, 5.0);
    text-name: "[name]";
    text-dy: 9;
    text-face-name: @peakFont; /// <- todo: fix
    text-size: 10;
    text-fill: @peakColor;
    [zoom >= 14] {
       point-transform: scale(6.0, 6.0);
       text-dy: 8;
       text-size: 11;
       ::elevation {
         text-name: [ele_ft] + ' ft';
         text-face-name: @peakFont; /// <- todo: fix
         text-size: 10;
         text-dy: 21;
         text-fill: @peakColor;
       }
    }
  }
}


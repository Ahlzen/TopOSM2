Map {
  background-color: transparent;
}

[zoom>=13] #peaks
{
    point-file: url(../symbols/peak.svg);
    point-transform: scale(5.0, 5.0);
    text-name: "[name]";
    text-dy: 9;
    text-face-name: @peakFont;
    text-size: 12;
    text-fill: @peakColor;
    text-halo-fill: @peakHalo;
    text-halo-radius: 1.5;
    [zoom >= 14] {
       point-transform: scale(6.0, 6.0);
       text-dy: 8;
       text-size: 13;
       ::elevation [ele_ft!=""] {
         text-name: [ele_ft] + ' ft';
         text-face-name: @peakEleFont;
         text-size: 12;
         text-dy: 22;
         text-fill: @peakColor;
         text-halo-fill: @peakHalo;
         text-halo-radius: 1.5;
       }
    }
}

[zoom >= 13] #pointfeatures
{
   // pick icon depending on feature type
   point-file: url(../symbols/question.svg); // not used ; indicates that we missed a feature type
   [tourism='alpine_hut']     { point-file: url(../symbols/hut.svg); }
   [tourism='viewpoint']      { point-file: url(../symbols/view.svg); }
   [tourism='picnic_site']    { point-file: url(../symbols/picnic-area.svg); }
   [tourism='camp_site'],
   [tourism='campground']     { point-file: url(../symbols/campground.svg); }
   [tourism='information'],
   [tourism='map']            { point-file: url(../symbols/info.svg); }
   [amenity='shelter']        { point-file: url(../symbols/shelter.svg); }
   [amenity='toilets'],
   [amenity='restrooms']      { point-file: url(../symbols/restrooms.svg); }
   [amenity='parking']        { point-file: url(../symbols/parking.svg); }
   [amenity='drinking_water'] { point-file: url(../symbols/water.svg); }
   [landuse='quarry']         { point-file: url(../symbols/mine.svg); }
   
   // scale depending on zoom level
   [zoom = 13] { point-transform: scale(0.4, 0.4); }
   [zoom = 14] { point-transform: scale(0.5, 0.5); }
   [zoom = 15] { point-transform: scale(0.6, 0.6); }
   [zoom >= 16] { point-transform: scale(0.65, 0.65); }
   
   // show labels at high zoom levels
   [zoom >= 15][name != ''] {
    text-face-name: @pointFeatureFont;
    text-fill: #000;
    text-name: "[name]";
    text-size: 10;
    [zoom >= 16]  { text-size: 11; }
    text-halo-fill: #ccc;
    text-halo-radius: 1;
    text-dy: 14;
   }
}

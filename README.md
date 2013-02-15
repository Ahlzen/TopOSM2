# TopOSM 2 #

A system for rendering OpenStreetMap based topographic maps.

*NOTE: This project is in early development and probably very incomplete*


## Requirements ##

TopOSM runs on Linux. It may run it on other platforms as well, but I have not tested this. If you try it, please let me know.


### Software ###

* Mapnik 2.1 (or later)
  http://mapnik.org/download/
  Must be built with at least the following inputs:
   - postgis
   - gdal
   - shape

* TileStache
  https://github.com/migurski/TileStache

* DEM-Tools
  https://github.com/Ahlzen/DEM-Tools
  Currently requires a forked version with more
  configuration options. This may get merged upstream.

  Local install:
  ```
  $ wget https://github.com/Ahlzen/DEM-Tools
  $ cd DEM-Tools
  $ python setup.py install --user
  ```

* TopOSM2
  https://github.com/Ahlzen/TopOSM2
  
* TrueType fonts:
   - ttf-liberation
   - ttf-mscorefonts-installer
   - ttf-sil-gentium*
   - ttf-adf-*

* Carto parser


### Data ###

* OSM Planet data

* OSM Water Polygons (shapefile, web mercator)
  http://openstreetmapdata.com/data/water-polygons

* National Elevation Dataset (NED) GeoTIFF tiles.
  These are used for contour generation and, with minor
  modifications, can be used as a source for Hillup.

* NLCD2006 Landcover data
  http://www.mrlc.gov/nlcd06_data.php
  TODO: Build/use GDAL .vrt file with modified color table


## Setup ##

TODO: Elaborate...

NOTES:

* For now, use the contour generation script from TopOSM.

* Currently, some preprocessing of the imported planet is
required. For now, use the import script from the TopOSM.

https://github.com/Ahlzen/TopOSM


## License ##

TopOSM2 is licensed under GPLv2.

http://www.gnu.org/licenses/gpl-2.0.html

Created by Lars Ahlzen (lars@ahlzen.com), with contributions from Ian Dees (hosting, rendering and troubleshooting), Phil Gold (patches and style improvements), Kevin Kenny (improved NHD rendering, misc patches), Yves Cainaud (legend), Richard Weait (shield graphics), Mike Migurski (hosting) and others.


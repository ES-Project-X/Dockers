# Graphhopper docker

**To run the docker for the first time:**

1. `wget https://download.geofabrik.de/europe/portugal-latest.osm.pbf`

2. `./build.sh`

3.  `sudo docker run -p 8989:8989 israelhikingmap/graphhopper:latest -i portugal-latest.osm.pbf --host 0.0.0.0`

Next times:

`sudo docker run -p 8989:8989 israelhikingmap/graphhopper:latest -i portugal-latest.osm.pbf --host 0.0.0.0`

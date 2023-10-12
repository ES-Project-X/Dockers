# Running CyclOSM with Docker

## Quick start

If you are eager to get started here is an overview over the necessary steps.
Read on below to get the details.

* download OpenStreetMap data in osm.pbf format to a file `data.osm.pbf` and place it within the CyclOSM directory (for example some small area from [Geofabrik](https://download.geofabrik.de/))
* If necessary, `sudo service postgresql stop` to make sure you don't have currently running a native PostgreSQL server which would conflict with Docker's PostgreSQL server.
* `docker-compose up import` to import the data (only necessary the first time or when you change the data file). Let exit from docker
* `docker-compose up kosmtik` to run the style preview application
* browse to [http://localhost:6789](http://localhost:6789) to view the output of Kosmtik
* Ctrl+C to stop the style preview application
* `docker-compose stop db` to stop the database container

_Note:_ You might encounter permissions issues if the `cyclosm-cartocss-style`
folder is not owned by the user with UID 1000. A quick workaround for this is
to `chown 1000:1000 cyclosm-cartocss-style` after cloning it.

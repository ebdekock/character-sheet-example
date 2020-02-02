#!/bin/bash
# Wait for DB for 60seconds
/wait-for-it.sh -t 60 db:4334 -- echo "---- DB is up ----"
# Naively migrate, suitable for dev only
echo "---- Run schema updates -----"
/usr/bin/java -Xms200m -Xmx400m  -jar app.jar db/install-schemas
echo "---- Successfully completed schema updates ----"
# Start app
echo "---- Start clojure server ----"
/usr/bin/java -Xms300m -Xmx300m -Ddatomic.objectCacheMax=64m -Ddatomic.memoryIndexMax=64m -jar app.jar server

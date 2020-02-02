Dockerise this great websites example app: https://www.braveclojure.com/quests/deploy/  
Github: https://github.com/sweet-tooth-clojure/character-sheet-example  

It currently requires the jar file to be built and added to folder: files/  
Then simply `docker-compose up`  

It will run three containers, database, clojure app and nginx reverse proxy.  

Theres still lots to do and has been quickly thrown together  
  
Include the building of jar file through docker, or CI  
Everythings hardcoded, and variables need to be refactored to sane places  
Containers and nginx needs production like settings, this is only meant for quick and dirty local dev  
 

Dockerise this great websites example app: https://www.braveclojure.com/quests/deploy/  
Github: https://github.com/sweet-tooth-clojure/character-sheet-example  

It currently requires the jar file to be built from above repo and added to folder: files/  

Building .jar file, currently requires boot as per their docs:

```
git clone https://github.com/sweet-tooth-clojure/character-sheet-example.git
cd character-sheet-example/infrastructure && ./build
Copy the target/build/app.jar to our repos files/ folder
```

Then simply `docker-compose up`  

It will run three containers, database, clojure app and nginx reverse proxy.  

Theres still lots to do and has been quickly thrown together  
  
Include the building of jar file through docker, or CI  
Everythings hardcoded, and variables need to be refactored to sane places  
Containers and nginx needs production like settings, this is only meant for quick and dirty local dev  
 

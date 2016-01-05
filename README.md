# standalone_archetype

Maven archetype that create an empty maven project including :
* pom.xml with basic dependencies for test : junit and assertJ
* .gitignore
* empty directories

# Usage

First install the archetype into the local repository
```sh
mvn clean install
```

Then use the [script createProject](https://github.com/VieuxChameau/standalone_archetype/blob/master/createProject.sh) like this:
```sh
./createProject.sh myNewProject
```

Or a simple command line
```sh
mvn archetype:generate -DarchetypeRepository=local -DarchetypeGroupId=org.vieuxchameau -DarchetypeArtifactId=standalone-archetype -DarchetypeVersion=1.0-SNAPSHOT  -DartifactId=someProjectId -DinteractiveMode=false
```

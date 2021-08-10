# chrome-headless
Chrome headless with JDK, Maven, NodeJS  
[Docker Hub](https://hub.docker.com/r/atools/chrome-headless)

## Updates

The image updates every week on Tuesday.

## Build

You may build image with desired versions of JDK, Maven and NodeJS:
- **JDK_MAVEN_NODE**=`mvn3-jdk11-node14` see available versions - [jdk-maven-node](https://hub.docker.com/r/atools/jdk-maven-node/tags)
- **CHROME_VERSION**=`google-chrome-stable`

### Examples

#### Command Line

`docker build --build-arg JDK_MAVEN_NODE=mvn3-jdk11-node14 --build-arg CHROME_VERSION=google-chrome-stable -f Dockerfile -t chrome .`

#### Jenkins Pipeline

`docker.build('chrome', '--build-arg JDK_MAVEN_NODE=mvn3-jdk11-node14 --build-arg CHROME_VERSION=google-chrome-stable -f Dockerfile .')`

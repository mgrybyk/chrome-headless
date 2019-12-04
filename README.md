# chrome-headless
Chrome headless with JDK, Maven, NodeJS

## Updates

Image updates after one week of every new Chrome release according to [Chrome Release Timeline](https://www.chromestatus.com/features/schedule).

## Build

You may build image with desired versions of JDK, Maven and NodeJS:
- **JDK_MAVEN_NODE**=`mvn3-jdk8-node10` see available versions - [jdk-maven-node](https://hub.docker.com/r/atools/jdk-maven-node/tags)
- **CHROME_VERSION**=`google-chrome-stable`

### Examples

#### Command Line

`docker build --build-arg JDK_MAVEN_NODE=mvn3-jdk8-node10 --build-arg CHROME_VERSION=google-chrome-stable -f Dockerfile -t chrome .`

#### Jenkins Pipeline

`docker.build('chrome', '--build-arg JDK_MAVEN_NODE=mvn3-jdk8-node10 --build-arg CHROME_VERSION=google-chrome-stable -f Dockerfile .')`

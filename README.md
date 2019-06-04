# chrome-headless
Chrome headless with JDK, Maven, NodeJS

## Build

You may build image with desired versions of JDK, Maven and NodeJS:
- **JDK_MAVEN_NODE**=`mvn-3-jdk-8-node-10` see available versions - [jdk-maven-node](https://hub.docker.com/r/atools/jdk-maven-node/tags)
- **CHROME_VERSION**=`latest`

### Examples

#### Command Line

`docker build --build-arg JDK_MAVEN_NODE=mvn-3-jdk-8-node-10 --build-arg CHROME_VERSION=latest -f Dockerfile -t chrome .`

#### Jenkins Pipeline

`docker.build('chrome', '--build-arg JDK_MAVEN_NODE=mvn-3-jdk-8-node-10 --build-arg CHROME_VERSION=latest -f Dockerfile .')`

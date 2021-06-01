# chrome-headless
Chrome headless with JDK, Maven, NodeJS

## Build

- **JDK_MAVEN_NODE**=`mvn3-jdk11-node16`
- **CHROME_VERSION**=`google-chrome-stable`

### Examples

#### Command Line

`docker build --build-arg JDK_MAVEN_NODE=mvn3-jdk11-node16 --build-arg CHROME_VERSION=google-chrome-stable -f Dockerfile -t chrome .`

#### Jenkins Pipeline

`docker.build('chrome', '--build-arg JDK_MAVEN_NODE=mvn3-jdk11-node16 --build-arg CHROME_VERSION=google-chrome-stable -f Dockerfile .')`

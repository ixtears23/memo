
------------------------------------------------------------------------
Spring Framework - Eclipse/STS Project Import Guide

This script will guide you through the process of importing the Spring
Framework projects into Eclipse or the Spring Tool Suite (STS). It is
recommended that you have a recent version of Eclipse or STS. As a bare
minimum you will need Eclipse with full Java 8 support, the AspectJ
Development Tools (AJDT), and the Groovy Compiler.

This script has been tested against:

- STS:     3.8.3.RELEASE (Eclipse Neon.2 4.6.2)
- AJDT:    2.2.4.201612122115 (Eclipse Neon 4.6)

If you need to download and install Eclipse or STS, please do that now
by visiting one of the following sites:

- Eclipse downloads: http://download.eclipse.org/eclipse/downloads
- STS downloads: http://spring.io/tools/sts/all
- STS nightly builds: http://dist.springsource.com/snapshot/STS/nightly-distributions.html
- ADJT: http://www.eclipse.org/ajdt/downloads/
- Groovy Eclipse: https://github.com/groovy/groovy-eclipse/wiki

Once Eclipse/STS is installed, press enter, and we'll begin.

------------------------------------------------------------------------
STEP 1: Generate subproject Eclipse metadata

The first step will be to generate Eclipse project metadata for each of
the spring-* subprojects. This happens via the built-in "Gradle wrapper"
script (./gradlew in this directory). If this is your first time using
the Gradle wrapper, this step may take a few minutes while a Gradle
distribution is downloaded for you.

The command run will be:

    ./gradlew --no-daemon cleanEclipse :spring-oxm:compileTestJava eclipse -x :eclipse

Press enter when ready.

#<h1> Hello Aamir</h1>
#<h1> Welcome 2 IBM</h1>

<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.heroku.sample</groupId>
  <artifactId>embeddedTomcatSample</artifactId>
  <version>1.0-SNAPSHOT</version>
  <packaging>jar</packaging>
  <name>embeddedTomcatSample Maven Webapp</name>
  <url>http://maven.apache.org</url>
  <properties>
    <tomcat.version>8.5.23</tomcat.version>
  </properties>
  <dependencies>
    <dependency>
        <groupId>org.apache.tomcat.embed</groupId>
        <artifactId>tomcat-embed-core</artifactId>
        <version>${tomcat.version}</version>
    </dependency>
    <dependency>
        <groupId>org.apache.tomcat.embed</groupId>
        <artifactId>tomcat-embed-jasper</artifactId>
        <version>${tomcat.version}</version>
    </dependency>
    <dependency>
        <groupId>org.apache.tomcat</groupId>
        <artifactId>tomcat-jasper</artifactId>
        <version>${tomcat.version}</version>
    </dependency>
    <dependency>
        <groupId>org.apache.tomcat</groupId>
        <artifactId>tomcat-jasper-el</artifactId>
        <version>${tomcat.version}</version>
    </dependency>
    <dependency>
        <groupId>org.apache.tomcat</groupId>
        <artifactId>tomcat-jsp-api</artifactId>
        <version>${tomcat.version}</version>
    </dependency>
  </dependencies>
  <build>
    <finalName>embeddedTomcatSample</finalName>
    <plugins>
        <plugin>
            <groupId>org.codehaus.mojo</groupId>
            <artifactId>appassembler-maven-plugin</artifactId>
            <version>2.0.0</version>
            <configuration>
                <assembleDirectory>target</assembleDirectory>
                <programs>
                    <program>
                        <mainClass>launch.Main</mainClass>
                        <name>webapp</name>
                    </program>
                </programs>
            </configuration>
            <executions>
                <execution>
                    <phase>package</phase>
                    <goals>
                        <goal>assemble</goal>
                    </goals>
                </execution>
            </executions>
        </plugin>
    </plugins>
  </build>
</project>

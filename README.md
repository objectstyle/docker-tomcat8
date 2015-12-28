# ObjectStyle Tomcat 8 Docker Image
This is a Tomcat 8 Docker image for ObjectStyle [site](http://www.objectstyle.com/). Built on top of [objectstyle/java8](https://hub.docker.com/r/objectstyle/java8/) image.

## Usage

`docker pull objectstyle/tomcat8`

Or, if you prefer to build it on your own:  
`docker build -t objectstyle/tomcat8 .`

Run the image (example):  
`docker run -d --name site \
	--net=osllc \
	-p $DOCKER_IP:7101:7101 \
	-v $DAV_ROOT:/usr/local/tomcat/docroot/f \
	-v $PATH_TO_WAR:/usr/local/tomcat/some.war \
	-v $PATH_TO_ROOT_XML:/usr/local/tomcat/conf/Catalina/localhost/ROOT.xml \
	-v $PATH_TO_SERVER_XML:/usr/local/tomcat/conf/server.xml \
	objectstyle/tomcat8 -Dproxy.port=80 -Dproxy.name=$DOCKER_IP`

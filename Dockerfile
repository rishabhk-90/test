FROM java:8
COPY . /var/www/java 
WORKDIR /var/www/java 
RUN javac DockerDemo.java 
CMD echo "This is a Docker Image running"
CMD ["java", "DockerDemo"]

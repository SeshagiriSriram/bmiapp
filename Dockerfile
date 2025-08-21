FROM eclipse-temurin:17.0.16_8-jre-noble
RUN mkdir /app
COPY ./target/bmi-1.0.jar /app/bmi.jar
COPY ./Dockerfile /app 
WORKDIR /app
CMD java $JAVA_OPTS -jar bmi.jar
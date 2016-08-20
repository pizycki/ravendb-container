# BUILD WITH THIS COMMAND
# docker build --no-cache -t pizycki/ravendb:latest .

# RUN WITH THIS COMMAND
# docker run -it -p 8080:8080 pizycki/ravendb

FROM microsoft/windowsservercore
MAINTAINER pizycki 

# Copy RavenDB server package to container
ADD RavenDB C:/RavenDB

WORKDIR C:/RavenDB/Server
ENTRYPOINT ["powershell", ".\\Raven.Server.exe --debug"]
# BUILD WITH THIS COMMAND
# docker build --no-cache -t pizycki/ravendb:0.1 .

# Run with command
# docker run -it -p 8080:8080 pizycki/ravendb --debug

FROM microsoft/windowsservercore
MAINTAINER pizycki 

# Copy RavenDB server package and installation script to container
COPY ["RavenDB_Server.zip", "Install-RavenDB.ps1", "C:/Windows/Temp/"]

RUN ["powershell", "-ExecutionPolicy", "Bypass", "-Command", "C:/Windows/Temp/Install-RavenDB.ps1"]

WORKDIR "C:/RavenDB/Server"
ENTRYPOINT ["cmd.exe", "/k", "Raven.Server.exe"]
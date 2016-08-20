FROM microsoft/windowsservercore
MAINTAINER pizycki 

# Copy RavenDB server package to container
ADD RavenDB C:/RavenDB

WORKDIR C:/RavenDB/Server
ENTRYPOINT ["powershell", ".\\Raven.Server.exe --debug"]
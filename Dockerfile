# Usar una imagen base de Windows con .NET Framework e IIS
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019

# Configurar el directorio de trabajo
WORKDIR /inetpub/wwwroot/DemoApi

# Copiar los archivos de la aplicación al contenedor
COPY . .

# Habilitar IIS y la aplicación
RUN powershell -NoProfile -Command \
    Import-Module IISAdministration; \
    Start-Service W3SVC; \
    New-WebApplication -Site 'Default Web Site' -Name 'DemoApi' -PhysicalPath 'C:\inetpub\wwwroot\DemoApi'

# Exponer el puerto en el que la aplicación está corriendo
EXPOSE 80

# Asegurar que IIS esté corriendo al iniciar el contenedor
ENTRYPOINT ["powershell", "Start-Service", "W3SVC", ";", "cmd.exe"]

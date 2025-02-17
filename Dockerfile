# Usar una imagen base de Windows con .NET Framework
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019

# Copiar los archivos de la aplicación al contenedor
WORKDIR /inetpub/wwwroot/DemoApi
COPY . .

# Exponer el puerto en el que la aplicación está corriendo
EXPOSE 80


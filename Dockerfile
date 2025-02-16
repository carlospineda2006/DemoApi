# Imagen base con .NET Framework
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8

# Crear directorio para la aplicación
WORKDIR /inetpub/wwwroot

# Copiar archivos del proyecto
COPY . .

# Exponer el puerto en el que corre la app
EXPOSE 80

# Comando de inicio
CMD ["C:\\ServiceMonitor.exe", "w3svc"]

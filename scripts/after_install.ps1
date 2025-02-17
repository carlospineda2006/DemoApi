@echo off
echo =======================================
echo [INFO] - Configurando permisos en la carpeta de la aplicación...
echo =======================================
icacls C:\inetpub\wwwroot\DemoApi /grant Everyone:F /T

echo =======================================
echo [INFO] - Reiniciando el servicio IIS...
echo =======================================
iisreset /start

exit /b 0
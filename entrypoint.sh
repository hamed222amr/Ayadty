#!/bin/bash
/opt/mssql/bin/sqlservr &
sleep 15
cd /app
dotnet ef database update –project DataAccessLayer –startup-project presentationLayer
dotnet run –project presentationLayer/presentationLayer.csproj –urls http://0.0.0.0:8080
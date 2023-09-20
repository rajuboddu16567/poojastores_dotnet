
FROM mcr.microsoft.com/dotnet/sdk:3.1 
COPY . /app/
WORKDIR /app/
RUN dotnet build .
EXPOSE 5000
ENTRYPOINT ["dotnet", "run", "--urls", "http://0.0.0.0:5000"]

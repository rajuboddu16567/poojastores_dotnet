FROM mcr.microsoft.com/dotnet/sdk:3.1 
WORKDIR /app
COPY *.cdproj ./
RUN dotnet restore
COPY . ./
RUN dotnet publish -c Release -o out

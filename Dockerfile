FROM mcr.microsoft.com/dotnet/sdk:3.1 as build 
WORKDIR /app
COPY *.cdproj ./
RUN dotnet restore
COPY . ./
RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /app
COPY --from=build /app/build .
ENTRYPOINT ['dotnet' , 'web.dotnetcore.dil']

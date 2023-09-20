# Use the official .NET SDK image as the base image
FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build-env

# Set the working directory inside the container
WORKDIR /tmp

# Copy the .csproj and restore dependencies
COPY *.csproj ./
RUN dotnet restore

# Copy the entire project and publish it
COPY . ./
RUN dotnet publish -c Release -o out

# Build the runtime image
FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /tmp
COPY --from=build-env /tmp/out .

# Expose the port your application will listen on
EXPOSE 5000

# Start the application
ENTRYPOINT ["dotnet", "YourAppName.dll"]

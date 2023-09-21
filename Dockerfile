# Use the .NET Core runtime as a parent image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1

# Set the working directory in the container
WORKDIR /app

# Copy the application files to the container
COPY ./bin/Release/netcoreapp3.1/publish/ .

# Expose the port the application will run on
EXPOSE 80

# Start the application
ENTRYPOINT ["dotnet", "YourApp.dll"]

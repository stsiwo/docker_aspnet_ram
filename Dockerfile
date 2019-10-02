FROM mcr.microsoft.com/dotnet/core/sdk:2.1 as dev
WORKDIR ./app
COPY . ./

RUN ["dotnet", "build", "TestSwarm.csproj"]
RUN chmod +x ./wait-for-mysql.sh




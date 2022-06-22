FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["EmployeeManager.csproj", "EmployeeManager/"]
RUN dotnet restore "EmployeeManager/EmployeeManager.csproj"

WORKDIR "/src/EmployeeManager"
COPY . .

RUN dotnet build "EmployeeManager.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "EmployeeManager.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "EmployeeManager.dll"]
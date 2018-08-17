FROM microsoft/dotnet:2.1-sdk

WORKDIR /app

COPY DegreeConverter.csproj .
RUN dotnet restore DegreeConverter.csproj

COPY . .

RUN dotnet publish DegreeConverter.csproj -c Release -o /app

EXPOSE 3000
CMD [ "dotnet", "DegreeConverter.dll" ]
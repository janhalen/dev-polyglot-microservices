# <img src="https://user-images.githubusercontent.com/80261692/226564602-21d9c099-7c27-4ab0-80cb-295844e318de.png" width="54"> Node-RED template-projekt
Template til nye Node-RED projekter.
Projekt indeholder en tom Node-RED og paletterne
* node-red-contrib-mysql-config
* node-red-contrib-prometheus-exporter

# Brug af node-red-template
1. Gå til https://github.com/Randers-Kommune-Digitalisering/node-red-template
2. ![image](https://user-images.githubusercontent.com/80261692/226566679-e7785e2b-1d03-4b43-a01f-47ecb709d3a2.png) Klik på "use this template" og vælg "create a new repository"

3. Udfyld skærmbillede med information om den nye service
4. Åbn dit nye git projekt

# Nyt Node-RED projekt
Nedenstående relaterer sig til et nyt Node-RED projekt der er baseret på denne template.

## Udvikling i et Codespace:
1. Gå til det nyoprettede repository i github.
2. Klik på den grønne <>Code knap og vælg "create codespace on master"
![Start_Codespace](https://user-images.githubusercontent.com/80261692/226568105-5b9680e4-f1bb-465a-9f10-dcd305b534a8.gif)



> docker-compose up --build

Starter et lokalt docker-compose miljø, der bygger og starter Node-RED og en mariadb.

Ved byg af Node-RED kopieres følgende filer ind i containeren:
* [node-red/package.json](node-red/package.json)
* [node-red/settings.js](node-red/settings.js)
* [node-red/flows_cred.json](node-red/flows_cred.json)
* [node-red/flows.json](node-red/flows.json)

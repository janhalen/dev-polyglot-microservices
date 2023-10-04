const Node = {
  "id": "6082f0b229e4be03",
  "type": "change",
  "z": "971a7ae6df987a48",
  "name": "Set data url and query",
  "rules": [
    {
      "t": "set",
      "p": "url",
      "pt": "msg",
      "to": "https://api.energidataservice.dk/dataset/ConsumptionIndustry?offset=0&start=2023-09-01T00:00&filter=%7B%22MunicipalityNo%22:[%22751%22],%22Branche%22:[%22Offentligt%22]%7D&sort=HourDK%20DESC",
      "tot": "str"
    },
    {
      "t": "set",
      "p": "topic",
      "pt": "msg",
      "to": "aarhus_offentligt_forbrug_time",
      "tot": "str"
    }
  ],
  "action": "",
  "property": "",
  "from": "",
  "to": "",
  "reg": false,
  "x": 320,
  "y": 100,
  "wires": [
    [
      "455638d57c526f62"
    ]
  ],
  "_order": 4
}

module.exports = Node;
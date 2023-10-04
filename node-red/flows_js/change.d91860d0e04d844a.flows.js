const Node = {
  "id": "d91860d0e04d844a",
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
  "y": 160,
  "wires": [
    []
  ],
  "_order": 8
}

module.exports = Node;
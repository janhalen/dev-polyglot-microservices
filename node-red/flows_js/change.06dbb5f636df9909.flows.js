const Node = {
  "id": "06dbb5f636df9909",
  "type": "change",
  "z": "971a7ae6df987a48",
  "name": "",
  "rules": [
    {
      "t": "set",
      "p": "method",
      "pt": "msg",
      "to": "POST",
      "tot": "str"
    },
    {
      "t": "set",
      "p": "payload",
      "pt": "msg",
      "to": "{\"testkey\": 20,\"testkey2\": 9028340}",
      "tot": "json"
    },
    {
      "t": "set",
      "p": "url",
      "pt": "msg",
      "to": "http://r-microservice:8000/transform",
      "tot": "str"
    }
  ],
  "action": "",
  "property": "",
  "from": "",
  "to": "",
  "reg": false,
  "x": 200,
  "y": 220,
  "wires": [
    [
      "d46c750459e2620a"
    ]
  ],
  "_order": 2
}

module.exports = Node;
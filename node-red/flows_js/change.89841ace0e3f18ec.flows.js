const Node = {
  "id": "89841ace0e3f18ec",
  "type": "change",
  "z": "971a7ae6df987a48",
  "name": "",
  "rules": [
    {
      "t": "set",
      "p": "topic",
      "pt": "msg",
      "to": "log",
      "tot": "str"
    },
    {
      "t": "set",
      "p": "payload",
      "pt": "msg",
      "to": "{\"test\": $random()}",
      "tot": "jsonata"
    }
  ],
  "action": "",
  "property": "",
  "from": "",
  "to": "",
  "reg": false,
  "x": 290,
  "y": 100,
  "wires": [
    [
      "276bb0d0d5f5252a"
    ]
  ],
  "_order": 4
}

module.exports = Node;
const Node = {
  "id": "7dcc606a1d9d6633",
  "type": "change",
  "z": "96e7bc61735c9532",
  "name": "Data conversion",
  "rules": [
    {
      "t": "set",
      "p": "payload",
      "pt": "msg",
      "to": "{\t    \"x\": payload.HourDK,\t    \"y\": payload.ConsumptionkWh\t}",
      "tot": "jsonata"
    }
  ],
  "action": "",
  "property": "",
  "from": "",
  "to": "",
  "reg": false,
  "x": 860,
  "y": 200,
  "wires": [
    [
      "06b58c5e7308e08a"
    ]
  ],
  "_order": 14
}

module.exports = Node;
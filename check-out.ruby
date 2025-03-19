{
  "name": "Check Out",
  "description": "Check Out",
  "processStatus": [
    {
      "description": "Check Out não realizado",
      "limitValue":3,
      "timeLimitRule":10,
      "unitOfTimeType":"MINUTES",
      "subStatus":[]
    },
    {
      "description": "Check Out realizado",
      "limitValue":3,
      "timeLimitRule":10,
      "unitOfTimeType":"MINUTES",
      "subStatus":[]
    },
  ],
  "tasks": [
    "executionOrder": 1,
    "description": "Realizar Check Out",
    "whenStatusIs": "COMPLETED",
    "processStatusGoesTo": "[Check Out realizado]",
    "actions": [
      {
        "displayOrder":1,
        "description": "Realizar Check Out",
        "fields": [
          {
            "displayOrder": 2,
            "mandatory": true,
            "visible": true,
            "description": "nome_colaborador",
            "label": "Nome do Colaborador",
            "fieldType": "TEXT"
          },
          {
            "displayOrder": 1,
            "mandatory": true,
            "visible": true,
            "description": "nome_colaborador",
            "label": "Nome do Colaborador",
            "fieldType": "TEXT"
          },
        ]
      }
    ]
  ]
}
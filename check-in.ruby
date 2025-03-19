{
  "name": "Check In",
  "description": "Check In",
  "processStatus": [
    {
      "description": "Check In não realizada",
      "limitValue":3,
      "timeLimitRule":10,
      "unitOfTimeType":"MINUTES",
      "subStatus":[]
    },
    {
      "description": "Check In realizada",
      "limitValue":3,
      "timeLimitRule":10,
      "unitOfTimeType":"MINUTES",
      "subStatus":[]
    },
  ],
  "tasks": [
    {
      "description": "Check In",
      "executionOrder": 1,
      "whenStatusIs": "COMPLETED",
      "processStatusGoesTo": ["Check In realizada"],
      "actions": [
        {
          "displayOrder": 1,
          "description": "COMPLETED",
          "fields": [
            {
              "displayOrder": 1,
              "mandatory": true,
              "visible": true,
              "description": "nome_colaborador",
              "label": "Nome do Colaborador",
              "fieldType": "TEXT",
            },
            {
              "displayOrder": 2,
              "mandatory": true,
              "visible": true,
              "description": "re_colaborador",
              "label": "RE do Colaborador",
              "fieldType": "TEXT",
            },
            {
              "displayOrder": 3,
              "mandatory": false,
              "visible": true,
              "description": "periodo",
              "label": "Período",
              "fieldType": "LIST",
              "fieldValues": [
                { "value": "Manhã" },
                { "value": "Tarde" }
              ],
            },

            {
              "displayOrder": 4,
              "mandatory": false,
              "visible": true,
              "description": "quantidade_estacoes",
              "label": "Quantas estações em funcionamento?",
              "fieldType": "LIST",
              "fieldValues": [
                { "value": "Todas" },
                { "value": "Escrita por extenso" },
              ],
            },

            {
              "displayOrder": 5,
              "mandatory": true,
              "visible": true,
              "description": "condicao_funcionamento_estacoes",
              "label": "Condição do funcionamento das estações",
              "fieldType": "LIST",
              "fieldValues": [
                { "value": "Pleno funcionamento"},
                { "value": "Funcionamento precário"},
              ]
            },

            {
              "displayOrder": 6,
              "mandatory": true,
              "visible": true,
              "description": "descricao_funcionamento",
              "label": "Descrição do funcionamento",
              "fieldType": "TEXT",,
              "fieldRules": [
                "description": "Exibir campo se a resposta for? Funcionamento precário",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "condicao_funcionamento_estacoes",
              ]
            },

            {
              "displayOrder": 7,
              "mandatory": false,
              "visible": true,
              "description": "fora_de_funcionamento",
              "label": "Fora de funcionamento",
              "fieldType": "LIST",
              "fieldValues": [
                { "value": "Problemas no terminal" },
                { "value": "Ausência dolink internet" },
                { "value": "Falta de colaborador" },
                { "value": "Outros" },
              ]
            },

            {
              "displayOrder": 8,
              "mandatory": false,
              "visible": true,
              "description": "descricao_problema",
              "label": "Descreva o problema",
              "fieldType": "TEXT",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? Outros",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "fora_de_funcionamento",
              ]
            }, 

            {
              "displayOrder": 9,
              "mandatory": true,
              "visible": true,
              
            }

            
          ]
        }
      ]
    }
  ]
}
{
  "name": "Ronda diária",
  "description": "Ronda diária",
  "processStatus": [
    {
      "description": "Ronda não realizada",
      "limitValue":3,
      "timeLimitRule":10,
      "unitOfTimeType":"MINUTES",
      "subStatus":[]
    },
    {
      "description": "Ronda realizada",
      "limitValue":3,
      "timeLimitRule":10,
      "unitOfTimeType":"MINUTES",
      "subStatus":[]
    }
  ],
  "tasks": [
    {
      "description": "Ronda diária",
      "executionOrder" : 1,
      "whenTaskStatusIs": "COMPLETED",
      "processStatusGoesTo": ["Ronda realizada"]
      "actions": {
        "fields": [
          {
            "description": "qr_code_local",
            "label": "Leitura do QR Code Local",
            "mandatory": true,
            "visible": true,
            "fieldType": "QR_CODE",
            "displayOrder": 1,
          },
          {
            "description": "local",
            "label": "Local",
            "mandatory": false,
            "visible": true,
            "fieldType": "TEXT",
            "displayOrder": 2,
            "fieldRules": [
              "description": "-recebe texto do QRCode lido-",
              "sourceFieldDescription": "qr_code_local",
              "fieldRuleActionType": "RECEIVE_VALUE",
            ]
          },
          {
            "description": "geo",
            "label": "Geo",
            "mandatory": false,
            "visible": false,
            "fieldType": "GEOLOCATION",
            "displayOrder": 3,
            "fieldRules": [
              "description": "-busca a localizacao geografica apos receber local-",
              "sourceFieldDescription": "local",
              "fieldRuleActionType": "RECEIVE_VALUE",
            ]
          },
          {
            "description": "nome_supervisor",
            "label": "Nome do supervisor",
            "mandatory": true,
            "visible": true,
            "fieldType": "TEXT",
            "displayOrder": 4,
          },
          {
            "description": "re_supervisor",
            "label": "RE do supervisor",
            "mandatory": true,
            "visible": true,
            "fieldType": "TEXT",
            "displayOrder": 5,
          },
          {
            "description": "atraso_cadastrador",
            "label": "Algum cadastrador chegou atrasado?",
            "mandatory": true,
            "visible": true,
            "fieldType": "BOOLEAN",
            "displayOrder": 6,
          },
          {
            "description": "quantidade_cadastradores_atrasados",
            "label": "Quantidade de cadastradores atrasados",
            "mandatory": true,
            "visible": false,
            "fieldType": "LIST",
            "fieldValues": [
              "1","2","3","4","5","6","7","8","9","10","11","12","13",
            ],
            "fieldRules": [
              "description": "Exibir campo se a resposta for? Sim",
              "fieldRuleActionType": "DISPLAY_FIELD",
              "sourceFieldDescription": "atraso_cadastrador",
            ],
            "displayOrder": 7,
          },
          {
            "description": "justificativa_atraso_cadastrador_1",
            "label": "Justificativa de atraso (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 8,
            "fieldRules": [
              "description": "Exibir campo se a resposta for? 13",
              "fieldRuleActionType": "DISPLAY_FIELD",
              "sourceFieldDescription": "quantidade_cadastradores_atrasados",
            ],
          },
          {
            "description": "justificativa_atraso_cadastrador_2",
            "label": "Justificativa de atraso (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 9,
            "fieldRules": [
              "description": "Exibir campo se a resposta for? 13",
              "fieldRuleActionType": "DISPLAY_FIELD",
              "sourceFieldDescription": "quantidade_cadastradores_atrasados",
            ],
          },
          {
            "description": "justificativa_atraso_cadastrador_3",
            "label": "Justificativa de atraso (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 10,
            "fieldRules": [
              "description": "Exibir campo se a resposta for? 13",
              "fieldRuleActionType": "DISPLAY_FIELD",
              "sourceFieldDescription": "quantidade_cadastradores_atrasados",
            ],
          },
          {
            "description": "justificativa_atraso_cadastrador_4",
            "label": "Justificativa de atraso (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 11,
            "fieldRules": [
              "description": "Exibir campo se a resposta for? 13",
              "fieldRuleActionType": "DISPLAY_FIELD",
              "sourceFieldDescription": "quantidade_cadastradores_atrasados",
            ],
          },
          {
            "description": "justificativa_atraso_cadastrador_5",
            "label": "Justificativa de atraso (5)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 12,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_6",
            "label": "Justificativa de atraso (6)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 13,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_7",
            "label": "Justificativa de atraso (7)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 14,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_8",
            "label": "Justificativa de atraso (8)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 15,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_9",
            "label": "Justificativa de atraso (9)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 16,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_10",
            "label": "Justificativa de atraso (10)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 17,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_11",
            "label": "Justificativa de atraso (11)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 18,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_12",
            "label": "Justificativa de atraso (12)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 19,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_13",
            "label": "Justificativa de atraso (13)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 20,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          
          {
            "description": "justificativa_atraso_cadastrador_1_2",
            "label": "Justificativa de atraso (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 21,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_1_3",
            "label": "Justificativa de atraso (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 22,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_1_4",
            "label": "Justificativa de atraso (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 23,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_1_5",
            "label": "Justificativa de atraso (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 24,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 9",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_1_6",
            "label": "Justificativa de atraso (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 25,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 8",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_1_7",
            "label": "Justificativa de atraso (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 26,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 7",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_1_8",
            "label": "Justificativa de atraso (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 27,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 6",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_1_9",
            "label": "Justificativa de atraso (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 28,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_1_10",
            "label": "Justificativa de atraso (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 29,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 4",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_1_11",
            "label": "Justificativa de atraso (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 30,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 3",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_1_12",
            "label": "Justificativa de atraso (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 31,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 2",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_1_13",
            "label": "Justificativa de atraso (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 32,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 1",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_2_2",
            "label": "Justificativa de atraso (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 33,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_2_3",
            "label": "Justificativa de atraso (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 34,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_2_4",
            "label": "Justificativa de atraso (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 35,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_2_5",
            "label": "Justificativa de atraso (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 36,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 9",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_2_6",
            "label": "Justificativa de atraso (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 37,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 8",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_2_7",
            "label": "Justificativa de atraso (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 38,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 7",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_2_8",
            "label": "Justificativa de atraso (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 39,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 6",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_2_9",
            "label": "Justificativa de atraso (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 40,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_2_10",
            "label": "Justificativa de atraso (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 41,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 4",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_2_11",
            "label": "Justificativa de atraso (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 42,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 3",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_2_12",
            "label": "Justificativa de atraso (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 43,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 2",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_3_2",
            "label": "Justificativa de atraso (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 45,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_3_3",
            "label": "Justificativa de atraso (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 47,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_3_4",
            "label": "Justificativa de atraso (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 48,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_3_5",
            "label": "Justificativa de atraso (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 49,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 9",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_3_6",
            "label": "Justificativa de atraso (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 50,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 8",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_3_7",
            "label": "Justificativa de atraso (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 51,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 7",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_3_8",
            "label": "Justificativa de atraso (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 52,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 6",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_3_9",
            "label": "Justificativa de atraso (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 53,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_3_10",
            "label": "Justificativa de atraso (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 54,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 4",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_3_11",
            "label": "Justificativa de atraso (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 55,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 3",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_4_2",
            "label": "Justificativa de atraso (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 56,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_4_3",
            "label": "Justificativa de atraso (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 57,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_4_4",
            "label": "Justificativa de atraso (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 58,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_4_5",
            "label": "Justificativa de atraso (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 59,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 9",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_4_6",
            "label": "Justificativa de atraso (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 60,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 8",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_4_7",
            "label": "Justificativa de atraso (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 61,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 7",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_4_8",
            "label": "Justificativa de atraso (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 62,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 6",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_4_9",
            "label": "Justificativa de atraso (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 63,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_4_10",
            "label": "Justificativa de atraso (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 64,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 4",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_5_2",
            "label": "Justificativa de atraso (5)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 65,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_5_3",
            "label": "Justificativa de atraso (5)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 66,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_5_4",
            "label": "Justificativa de atraso (5)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 67,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_5_5",
            "label": "Justificativa de atraso (5)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 68,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 9",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_5_6",
            "label": "Justificativa de atraso (5)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 69,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 8",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_5_7",
            "label": "Justificativa de atraso (5)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 70,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 7",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_5_8",
            "label": "Justificativa de atraso (5)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 71,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 6",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_5_9",
            "label": "Justificativa de atraso (5)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 72,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_6_2",
            "label": "Justificativa de atraso (6)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 73,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_6_3",
            "label": "Justificativa de atraso (6)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 74,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_6_4",
            "label": "Justificativa de atraso (6)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 75,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_6_5",
            "label": "Justificativa de atraso (6)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 76,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 9",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_6_6",
            "label": "Justificativa de atraso (6)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 77,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 8",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_6_7",
            "label": "Justificativa de atraso (6)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 78,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 7",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_6_8",
            "label": "Justificativa de atraso (6)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 79,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 6",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_7_2",
            "label": "Justificativa de atraso (7)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 80,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_7_3",
            "label": "Justificativa de atraso (7)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 81,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_7_4",
            "label": "Justificativa de atraso (7)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 82,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_7_5",
            "label": "Justificativa de atraso (7)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 83,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 9",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_7_6",
            "label": "Justificativa de atraso (7)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 84,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 8",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_7_7",
            "label": "Justificativa de atraso (7)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 85,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 7",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_8_2",
            "label": "Justificativa de atraso (8)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 86,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_8_3",
            "label": "Justificativa de atraso (8)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 87,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_8_4",
            "label": "Justificativa de atraso (8)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 88,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_8_5",
            "label": "Justificativa de atraso (8)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 89,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 9",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_8_6",
            "label": "Justificativa de atraso (8)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 90,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 8",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_9_2",
            "label": "Justificativa de atraso (9)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 91,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_9_3",
            "label": "Justificativa de atraso (9)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 92,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_9_4",
            "label": "Justificativa de atraso (9)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 93,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_9_5",
            "label": "Justificativa de atraso (9)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 94,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 9",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_10_2",
            "label": "Justificativa de atraso (10)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 95,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_10_3",
            "label": "Justificativa de atraso (10)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 96,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_10_4",
            "label": "Justificativa de atraso (10)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 97,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_11_2",
            "label": "Justificativa de atraso (11)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 98,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_11_3",
            "label": "Justificativa de atraso (11)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 99,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "justificativa_atraso_cadastrador_12_2",
            "label": "Justificativa de atraso (12)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 100,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados"
              }
            ]
          },
          {
            "description": "faltas",
            "label": "Falta (S)",
            "mandatory": true,
            "visible": true,
            "fieldType": "BOOLEAN",
            "displayOrder": 101
          },
          {
            "description": "quantidade_faltas",
            "label": "Quantidade de faltas",
            "mandatory": true,
            "visible": false,
            "fieldType": "LIST",
            "fieldValues": [
              "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"
            ],
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? Sim",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "faltas"
              }
            ],
            "displayOrder": 102
          },
          {
            "description": "justificativa_falta_cadastrador_1",
            "label": "Justificativa de falta (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 103,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_2",
            "label": "Justificativa de falta (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 104,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_3",
            "label": "Justificativa de falta (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 105,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_4",
            "label": "Justificativa de falta (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 106,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_5",
            "label": "Justificativa de falta (5)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 107,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_6",
            "label": "Justificativa de falta (6)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 108,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_7",
            "label": "Justificativa de falta (7)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 109,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_8",
            "label": "Justificativa de falta (8)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 110,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_9",
            "label": "Justificativa de falta (9)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 111,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_10",
            "label": "Justificativa de falta (10)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 112,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_11",
            "label": "Justificativa de falta (11)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 113,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_12",
            "label": "Justificativa de falta (12)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 114,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_13",
            "label": "Justificativa de falta (13)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 115,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_1_2",
            "label": "Justificativa de falta (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 116,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_1_3",
            "label": "Justificativa de falta (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 117,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_1_4",
            "label": "Justificativa de falta (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 118,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_1_5",
            "label": "Justificativa de falta (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 119,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 9",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_1_6",
            "label": "Justificativa de falta (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 120,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 8",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_1_7",
            "label": "Justificativa de falta (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 121,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 7",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_1_8",
            "label": "Justificativa de falta (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 122,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 6",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_1_9",
            "label": "Justificativa de falta (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 123,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_1_10",
            "label": "Justificativa de falta (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 124,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 4",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_1_11",
            "label": "Justificativa de falta (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 125,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 3",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_1_12",
            "label": "Justificativa de falta (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 126,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 2",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_1_13",
            "label": "Justificativa de falta (1)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 127,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 1",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_2_2",
            "label": "Justificativa de falta (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 128,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_2_3",
            "label": "Justificativa de falta (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 129,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_2_4",
            "label": "Justificativa de falta (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 130,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_2_5",
            "label": "Justificativa de falta (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 131,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 9",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_2_6",
            "label": "Justificativa de falta (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 132,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 8",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_2_7",
            "label": "Justificativa de falta (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 133,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 7",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_2_8",
            "label": "Justificativa de falta (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 134,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 6",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_2_9",
            "label": "Justificativa de falta (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 135,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_2_10",
            "label": "Justificativa de falta (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 136,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 4",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_2_11",
            "label": "Justificativa de falta (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 137,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 3",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_2_12",
            "label": "Justificativa de falta (2)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 138,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 2",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_3_2",
            "label": "Justificativa de falta (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 139,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_3_3",
            "label": "Justificativa de falta (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 140,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_3_4",
            "label": "Justificativa de falta (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 141,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_3_5",
            "label": "Justificativa de falta (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 142,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 9",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_3_6",
            "label": "Justificativa de falta (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 143,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 8",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_3_7",
            "label": "Justificativa de falta (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 144,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 7",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_3_8",
            "label": "Justificativa de falta (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 145,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 6",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_3_9",
            "label": "Justificativa de falta (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 146,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_3_10",
            "label": "Justificativa de falta (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 147,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 4",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_3_11",
            "label": "Justificativa de falta (3)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 148,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 3",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_4_2",
            "label": "Justificativa de falta (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 149,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_4_3",
            "label": "Justificativa de falta (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 150,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_4_4",
            "label": "Justificativa de falta (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 151,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_4_5",
            "label": "Justificativa de falta (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 152,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 9",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_4_6",
            "label": "Justificativa de falta (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 153,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 8",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_4_7",
            "label": "Justificativa de falta (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 154,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 7",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_4_8",
            "label": "Justificativa de falta (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 155,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 6",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_4_9",
            "label": "Justificativa de falta (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 156,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_4_10",
            "label": "Justificativa de falta (4)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 157,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 4",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_5_2",
            "label": "Justificativa de falta (5)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 158,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_5_3",
            "label": "Justificativa de falta (5)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 159,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_5_4",
            "label": "Justificativa de falta (5)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 160,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_5_5",
            "label": "Justificativa de falta (5)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 161,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 9",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_5_6",
            "label": "Justificativa de falta (5)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 162,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 8",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_5_7",
            "label": "Justificativa de falta (5)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 163,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 7",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_5_8",
            "label": "Justificativa de falta (5)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 164,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 6",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_5_9",
            "label": "Justificativa de falta (5)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 165,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_6_2",
            "label": "Justificativa de falta (6)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 166,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_6_3",
            "label": "Justificativa de falta (6)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 167,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_6_4",
            "label": "Justificativa de falta (6)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 168,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_6_5",
            "label": "Justificativa de falta (6)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 169,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 9",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_6_6",
            "label": "Justificativa de falta (6)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 170,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 8",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_6_7",
            "label": "Justificativa de falta (6)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 171,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 7",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_6_8",
            "label": "Justificativa de falta (6)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 172,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 6",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_7_2",
            "label": "Justificativa de falta (7)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 173,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_7_3",
            "label": "Justificativa de falta (7)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 174,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_7_4",
            "label": "Justificativa de falta (7)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 175,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_7_5",
            "label": "Justificativa de falta (7)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 176,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 9",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_7_6",
            "label": "Justificativa de falta (7)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 177,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 8",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_7_7",
            "label": "Justificativa de falta (7)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 178,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 7",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_8_2",
            "label": "Justificativa de falta (8)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 179,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_8_3",
            "label": "Justificativa de falta (8)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 180,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_8_4",
            "label": "Justificativa de falta (8)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 181,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_8_5",
            "label": "Justificativa de falta (8)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 182,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 9",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_8_6",
            "label": "Justificativa de falta (8)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 183,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 8",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_9_2",
            "label": "Justificativa de falta (9)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 184,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_9_3",
            "label": "Justificativa de falta (9)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 185,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_9_4",
            "label": "Justificativa de falta (9)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 186,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_9_5",
            "label": "Justificativa de falta (9)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 187,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 9",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_10_2",
            "label": "Justificativa de falta (10)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 188,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_10_3",
            "label": "Justificativa de falta (10)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 189,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_10_4",
            "label": "Justificativa de falta (10)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 190,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 10",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_11_2",
            "label": "Justificativa de falta (11)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 191,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_11_3",
            "label": "Justificativa de falta (11)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 192,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 11",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          },
          {
            "description": "justificativa_falta_cadastrador_12_2",
            "label": "Justificativa de falta (12)",
            "mandatory": false,
            "visible": false,
            "fieldType": "TEXT",
            "displayOrder": 193,
            "fieldRules": [
              {
                "description": "Exibir campo se a resposta for? 12",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_faltas"
              }
            ]
          }
        ]
      }
    }
  ]
}
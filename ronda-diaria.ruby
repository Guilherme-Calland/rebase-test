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
      "description": "Realizar Ronda Diária",
      "executionOrder" : 1,
      "whenTaskStatusIs": "COMPLETED",
      "processStatusGoesTo": ["Ronda realizada"]
      "actions": [
        {
          "displayOrder": 1,
          "description": "Realizar Ronda Diária",
          "fields": [
            {
              "description": "qr_code_local",
              "label": "Leitura do QR Code Local",
              "mandatory": true,
              "visible": true,
              "fieldType": "QR_CODE",
            },
            {
              "description": "local",
              "label": "Local",
              "mandatory": false,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                "description": "-recebe texto do QRCode lido-",
                "sourceFieldDescription": "qr_code_local",
                "fieldRuleActionType": "RECEIVE_VALUE",
              ]
            },
            {
              "description": "quebra-tela",
              "label": "quebra_tela",
              "mandatory": true,
              "visible": true,
              "fieldType": "SCREEN_BREAKING",
            }
            {
              "description": "geo",
              "label": "Geo",
              "mandatory": true,
              "visible": true,
              "fieldType": "GEOLOCATION",
            },
            {
              "description": "nome_supervisor",
              "label": "Nome do supervisor",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
            },
            {
              "description": "re_supervisor",
              "label": "RE do supervisor",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
            },
            {
              "description": "atraso_cadastrador",
              "label": "Algum cadastrador chegou atrasado?",
              "mandatory": true,
              "visible": true,
              "fieldType": "BOOLEAN",
            },
            {
              "description": "quantidade_cadastradores_atrasados",
              "label": "Quantidade de cadastradores atrasados",
              "mandatory": true,
              "visible": true,
              "fieldType": "LIST",
              "fieldValues": [
                { "value": "1" },
                { "value": "2" },
                { "value": "3" },
                { "value": "4" },
                { "value": "5" },
                { "value": "6" },
                { "value": "7" },
                { "value": "8" },
                { "value": "9" },
                { "value": "10" },
                { "value": "11" },
                { "value": "12" },
                { "value": "13" }
              ],
              "fieldRules": [
                "description": "Exibir campo se a resposta for? Sim",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "atraso_cadastrador",
              ],
            },
            {
              "description": "justificativa_atraso_cadastrador_1",
              "label": "Justificativa de atraso (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados",
              ],
            },
            {
              "description": "justificativa_atraso_cadastrador_2",
              "label": "Justificativa de atraso (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados",
              ],
            },
            {
              "description": "justificativa_atraso_cadastrador_3",
              "label": "Justificativa de atraso (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados",
              ],
            },
            {
              "description": "justificativa_atraso_cadastrador_4",
              "label": "Justificativa de atraso (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? 13",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_cadastradores_atrasados",
              ],
            },
            {
              "description": "justificativa_atraso_cadastrador_5",
              "label": "Justificativa de atraso (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "label": "Falta(s)",
              "mandatory": true,
              "visible": true,
              "fieldType": "BOOLEAN",
            },
            {
              "description": "quantidade_faltas",
              "label": "Quantidade de faltas",
              "mandatory": true,
              "visible": true,
              "fieldType": "LIST",
              "fieldValues": [
                { "value": "1" },
                { "value": "2" },
                { "value": "3" },
                { "value": "4" },
                { "value": "5" },
                { "value": "6" },
                { "value": "7" },
                { "value": "8" },
                { "value": "9" },
                { "value": "10" },
                { "value": "11" },
                { "value": "12" },
                { "value": "13" }
              ],
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? Sim",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "faltas"
                }
              ],
            },
            {
              "description": "justificativa_falta_cadastrador_1",
              "label": "Justificativa de falta (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
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
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_faltas"
                }
              ]
            },
            {
              "description": "aplicacao_politica_disciplinar",
              "label": "Alguma política disciplinar aplicada?",
              "mandatory": true,
              "visible": true,
              "fieldType": "BOOLEAN",
            },
            {
              "description": "quantidade_politicas_disciplinas_aplicadas",
              "label": "Quantidade de disciplinas aplicadas",
              "mandatory": true,
              "visible": true,
              "fieldType": "LIST",
              "fieldValues": [
                { "value": "1" },
                { "value": "2" },
                { "value": "3" },
                { "value": "4" },
                { "value": "5" },
                { "value": "6" },
                { "value": "7" },
                { "value": "8" },
                { "value": "9" },
                { "value": "10" },
                { "value": "11" },
                { "value": "12" },
                { "value": "13" }
              ],
              "fieldRules": [
                "description": "Exibir campo se a resposta for? Sim",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "aplicacao_politica_disciplinar",
              ],
            },
            {
              "description": "justificativa_politica_disciplina_1",
              "label": "Justificativa da aplicação da política disciplinar (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_1",
              "label": "Crachá do colaborador (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_2",
              "label": "Justificativa da aplicação da política disciplinar (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_2",
              "label": "Crachá do colaborador (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_3",
              "label": "Justificativa da aplicação da política disciplinar (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_3",
              "label": "Crachá do colaborador (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_4",
              "label": "Justificativa da aplicação da política disciplinar (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_4",
              "label": "Crachá do colaborador (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_5",
              "label": "Justificativa da aplicação da política disciplinar (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_5",
              "label": "Crachá do colaborador (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_6",
              "label": "Justificativa da aplicação da política disciplinar (6)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_6",
              "label": "Crachá do colaborador (6)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_7",
              "label": "Justificativa da aplicação da política disciplinar (7)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_7",
              "label": "Crachá do colaborador (7)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_8",
              "label": "Justificativa da aplicação da política disciplinar (8)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_8",
              "label": "Crachá do colaborador (8)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_9",
              "label": "Justificativa da aplicação da política disciplinar (9)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_9",
              "label": "Crachá do colaborador (9)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_10",
              "label": "Justificativa da aplicação da política disciplinar (10)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_10",
              "label": "Crachá do colaborador (10)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_11",
              "label": "Justificativa da aplicação da política disciplinar (11)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_11",
              "label": "Crachá do colaborador (11)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_12",
              "label": "Justificativa da aplicação da política disciplinar (12)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_12",
              "label": "Crachá do colaborador (12)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_13",
              "label": "Justificativa da aplicação da política disciplinar (13)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_13",
              "label": "Crachá do colaborador (13)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 13",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_1_2",
              "label": "Justificativa da aplicação da política disciplinar (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_1_2",
              "label": "Crachá do colaborador (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },      
            {
              "description": "justificativa_politica_disciplina_1_3",
              "label": "Justificativa da aplicação da política disciplinar (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_1_3",
              "label": "Crachá do colaborador (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_1_4",
              "label": "Justificativa da aplicação da política disciplinar (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_1_4",
              "label": "Crachá do colaborador (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_1_5",
              "label": "Justificativa da aplicação da política disciplinar (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 9",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_1_5",
              "label": "Crachá do colaborador (1)",

              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 9",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_1_6",
              "label": "Justificativa da aplicação da política disciplinar (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 8",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_1_6",
              "label": "Crachá do colaborador (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 8",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_1_7",
              "label": "Justificativa da aplicação da política disciplinar (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 7",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_1_7",
              "label": "Crachá do colaborador (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 7",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_1_8",
              "label": "Justificativa da aplicação da política disciplinar (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 6",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_1_8",
              "label": "Crachá do colaborador (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 6",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_1_9",
              "label": "Justificativa da aplicação da política disciplinar (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_1_9",
              "label": "Crachá do colaborador (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_1_10",
              "label": "Justificativa da aplicação da política disciplinar (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_1_10",
              "label": "Crachá do colaborador (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_1_11",
              "label": "Justificativa da aplicação da política disciplinar (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 3",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_1_11",
              "label": "Crachá do colaborador (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 3",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_1_12",
              "label": "Justificativa da aplicação da política disciplinar (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 2",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_1_12",
              "label": "Crachá do colaborador (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 2",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },


            {
              "description": "justificativa_politica_disciplina_1_13",
              "label": "Justificativa da aplicação da política disciplinar (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 1",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_1_13",
              "label": "Crachá do colaborador (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 1",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },

            {
              "description": "justificativa_politica_disciplina_2_2",
              "label": "Justificativa da aplicação da política disciplinar (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_2_2",
              "label": "Crachá do colaborador (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },

            {
              "description": "justificativa_politica_disciplina_2_3",
              "label": "Justificativa da aplicação da política disciplinar (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_2_3",
              "label": "Crachá do colaborador (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },



            {
              "description": "justificativa_politica_disciplina_2_4",
              "label": "Justificativa da aplicação da política disciplinar (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_2_4",
              "label": "Crachá do colaborador (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_2_5",
              "label": "Justificativa da aplicação da política disciplinar (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 9",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_2_5",
              "label": "Crachá do colaborador (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 9",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_2_6",
              "label": "Justificativa da aplicação da política disciplinar (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 8",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_2_6",
              "label": "Crachá do colaborador (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 8",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_2_7",
              "label": "Justificativa da aplicação da política disciplinar (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 7",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_2_7",
              "label": "Crachá do colaborador (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 7",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_2_8",
              "label": "Justificativa da aplicação da política disciplinar (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 6",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_2_8",
              "label": "Crachá do colaborador (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 6",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_2_9",
              "label": "Justificativa da aplicação da política disciplinar (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_2_9",
              "label": "Crachá do colaborador (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_2_10",
              "label": "Justificativa da aplicação da política disciplinar (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_2_10",
              "label": "Crachá do colaborador (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },

            {
              "description": "justificativa_politica_disciplina_2_11",
              "label": "Justificativa da aplicação da política disciplinar (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 3",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_2_11",
              "label": "Crachá do colaborador (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 3",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },

            {
              "description": "justificativa_politica_disciplina_2_12",
              "label": "Justificativa da aplicação da política disciplinar (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 2",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_2_12",
              "label": "Crachá do colaborador (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 2",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },


            {
              "description": "justificativa_politica_disciplina_3_2",
              "label": "Justificativa da aplicação da política disciplinar (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_3_2",
              "label": "Crachá do colaborador (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },

            {
              "description": "justificativa_politica_disciplina_3_3",
              "label": "Justificativa da aplicação da política disciplinar (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_3_3",
              "label": "Crachá do colaborador (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },

            {
              "description": "justificativa_politica_disciplina_3_4",
              "label": "Justificativa da aplicação da política disciplinar (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_3_4",
              "label": "Crachá do colaborador (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_3_5",
              "label": "Justificativa da aplicação da política disciplinar (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 9",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_3_5",
              "label": "Crachá do colaborador (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 9",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_3_6",
              "label": "Justificativa da aplicação da política disciplinar (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 8",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_3_6",
              "label": "Crachá do colaborador (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 8",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_3_7",
              "label": "Justificativa da aplicação da política disciplinar (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 7",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_3_7",
              "label": "Crachá do colaborador (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 7",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_3_8",
              "label": "Justificativa da aplicação da política disciplinar (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 6",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_3_8",
              "label": "Crachá do colaborador (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 6",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_3_9",
              "label": "Justificativa da aplicação da política disciplinar (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_3_9",
              "label": "Crachá do colaborador (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_3_10",
              "label": "Justificativa da aplicação da política disciplinar (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_3_10",
              "label": "Crachá do colaborador (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_3_11",
              "label": "Justificativa da aplicação da política disciplinar (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 3",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_3_11",
              "label": "Crachá do colaborador (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 3",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },

            

            {
              "description": "justificativa_politica_disciplina_4_2",
              "label": "Justificativa da aplicação da política disciplinar (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_4_2",
              "label": "Crachá do colaborador (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_4_3",
              "label": "Justificativa da aplicação da política disciplinar (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_4_3",
              "label": "Crachá do colaborador (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },

            {
              "description": "justificativa_politica_disciplina_4_4",
              "label": "Justificativa da aplicação da política disciplinar (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_4_4",
              "label": "Crachá do colaborador (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_4_5",
              "label": "Justificativa da aplicação da política disciplinar (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 9",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_4_5",
              "label": "Crachá do colaborador (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 9",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_4_6",
              "label": "Justificativa da aplicação da política disciplinar (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 8",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_4_6",
              "label": "Crachá do colaborador (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 8",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_4_7",
              "label": "Justificativa da aplicação da política disciplinar (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 298,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 7",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_4_7",
              "label": "Crachá do colaborador (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 299,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 7",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_4_8",
              "label": "Justificativa da aplicação da política disciplinar (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 300,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 6",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_4_8",
              "label": "Crachá do colaborador (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 301,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 6",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_4_9",
              "label": "Justificativa da aplicação da política disciplinar (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 302,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_4_9",
              "label": "Crachá do colaborador (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 303,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_4_10",
              "label": "Justificativa da aplicação da política disciplinar (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 304,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_4_10",
              "label": "Crachá do colaborador (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 305,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },



            {
              "description": "justificativa_politica_disciplina_5_2",
              "label": "Justificativa da aplicação da política disciplinar (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 306,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_5_2",
              "label": "Crachá do colaborador (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 307,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },


            {
              "description": "justificativa_politica_disciplina_5_3",
              "label": "Justificativa da aplicação da política disciplinar (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 308,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_5_3",
              "label": "Crachá do colaborador (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 309,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },

            {
              "description": "justificativa_politica_disciplina_5_4",
              "label": "Justificativa da aplicação da política disciplinar (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 310,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_5_4",
              "label": "Crachá do colaborador (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 311,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_5_5",
              "label": "Justificativa da aplicação da política disciplinar (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 312,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 9",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_5_5",
              "label": "Crachá do colaborador (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 313,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 9",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_5_6",
              "label": "Justificativa da aplicação da política disciplinar (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 314,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 8",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_5_6",
              "label": "Crachá do colaborador (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 315,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 8",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_5_7",
              "label": "Justificativa da aplicação da política disciplinar (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 316,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 7",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_5_7",
              "label": "Crachá do colaborador (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 317,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 7",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_5_8",
              "label": "Justificativa da aplicação da política disciplinar (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 318,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 6",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_5_8",
              "label": "Crachá do colaborador (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 319,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 6",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_5_9",
              "label": "Justificativa da aplicação da política disciplinar (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 320,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_5_9",
              "label": "Crachá do colaborador (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 321,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },



            {
              "description": "justificativa_politica_disciplina_6_2",
              "label": "Justificativa da aplicação da política disciplinar (6)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 322,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_6_2",
              "label": "Crachá do colaborador (6)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 323,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },


            {
              "description": "justificativa_politica_disciplina_6_3",
              "label": "Justificativa da aplicação da política disciplinar (6)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 324,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_6_3",
              "label": "Crachá do colaborador (6)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 325,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },



            {
              "description": "justificativa_politica_disciplina_6_4",
              "label": "Justificativa da aplicação da política disciplinar (6)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 326,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_6_4",
              "label": "Crachá do colaborador (6)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 327,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_6_5",
              "label": "Justificativa da aplicação da política disciplinar (6)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 328,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 9",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_6_5",
              "label": "Crachá do colaborador (6)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 329,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 9",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_6_6",
              "label": "Justificativa da aplicação da política disciplinar (6)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 330,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 8",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_6_6",
              "label": "Crachá do colaborador (6)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 331,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 8",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_6_7",
              "label": "Justificativa da aplicação da política disciplinar (6)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 332,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 7",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_6_7",
              "label": "Crachá do colaborador (6)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 333,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 7",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_6_8",
              "label": "Justificativa da aplicação da política disciplinar (6)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 334,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 6",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_6_8",
              "label": "Crachá do colaborador (6)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 335,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 6",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },



            {
              "description": "justificativa_politica_disciplina_7_2",
              "label": "Justificativa da aplicação da política disciplinar (7)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 336,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_7_2",
              "label": "Crachá do colaborador (7)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 337,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_7_3",
              "label": "Justificativa da aplicação da política disciplinar (7)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 338,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_7_3",
              "label": "Crachá do colaborador (7)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 339,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },


            {
              "description": "justificativa_politica_disciplina_7_4",
              "label": "Justificativa da aplicação da política disciplinar (7)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 340,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_7_4",
              "label": "Crachá do colaborador (7)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 341,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_7_5",
              "label": "Justificativa da aplicação da política disciplinar (7)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 342,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 9",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_7_5",
              "label": "Crachá do colaborador (7)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 343,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 9",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_7_6",
              "label": "Justificativa da aplicação da política disciplinar (7)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 344,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 8",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_7_6",
              "label": "Crachá do colaborador (7)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 345,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 8",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_7_7",
              "label": "Justificativa da aplicação da política disciplinar (7)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 346,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 7",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_7_7",
              "label": "Crachá do colaborador (7)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 347,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 7",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },




            {
              "description": "justificativa_politica_disciplina_8_2",
              "label": "Justificativa da aplicação da política disciplinar (8)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 348,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_8_2",
              "label": "Crachá do colaborador (8)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 349,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_8_3",
              "label": "Justificativa da aplicação da política disciplinar (8)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 350,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_8_3",
              "label": "Crachá do colaborador (8)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 351,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },


            {
              "description": "justificativa_politica_disciplina_8_4",
              "label": "Justificativa da aplicação da política disciplinar (8)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 352,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_8_4",
              "label": "Crachá do colaborador (8)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 353,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_8_5",
              "label": "Justificativa da aplicação da política disciplinar (8)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 354,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 9",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_8_5",
              "label": "Crachá do colaborador (8)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 355,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 9",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_8_6",
              "label": "Justificativa da aplicação da política disciplinar (8)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 356,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 8",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_8_6",
              "label": "Crachá do colaborador (8)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 357,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 8",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },


            {
              "description": "justificativa_politica_disciplina_9_2",
              "label": "Justificativa da aplicação da política disciplinar (9)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 358,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_9_2",
              "label": "Crachá do colaborador (9)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 359,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_9_3",
              "label": "Justificativa da aplicação da política disciplinar (9)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 360,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_9_3",
              "label": "Crachá do colaborador (9)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 361,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },

            {
              "description": "justificativa_politica_disciplina_9_3",
              "label": "Justificativa da aplicação da política disciplinar (9)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 362,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_9_4",
              "label": "Crachá do colaborador (9)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 363,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_9_5",
              "label": "Justificativa da aplicação da política disciplinar (9)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 364,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 9",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_9_5",
              "label": "Crachá do colaborador (9)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 365,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 9",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },


            {
              "description": "justificativa_politica_disciplina_10_2",
              "label": "Justificativa da aplicação da política disciplinar (10)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 366,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_10_2",
              "label": "Crachá do colaborador (10)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 367,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "justificativa_politica_disciplina_10_3",
              "label": "Justificativa da aplicação da política disciplinar (10)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 368,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_10_3",
              "label": "Crachá do colaborador (10)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 369,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },

            {
              "description": "justificativa_politica_disciplina_10_4",
              "label": "Justificativa da aplicação da política disciplinar (10)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 370,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_10_4",
              "label": "Crachá do colaborador (10)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 371,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 10",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },

            {
              "description": "justificativa_politica_disciplina_11_2",
              "label": "Justificativa da aplicação da política disciplinar (11)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 372,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_11_2",
              "label": "Crachá do colaborador (11)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 373,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },

            {
              "description": "justificativa_politica_disciplina_11_3",
              "label": "Justificativa da aplicação da política disciplinar (11)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 374,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_11_3",
              "label": "Crachá do colaborador (11)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 374,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 11",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },

            {
              "description": "justificativa_politica_disciplina_12_2",
              "label": "Justificativa da aplicação da política disciplinar (12)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 375,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },
            {
              "description": "foto_cracha_politica_12_2",
              "label": "Crachá do colaborador (12)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 376,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 12",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_politicas_disciplinas_aplicadas"
                }
              ]
            },

            {
              "description": "ocorrencias",
              "label": "Ocorrência(s) a informar",
              "mandatory": true,
              "visible": true,
              "fieldType": "BOOLEAN",
              "displayOrder": 377,
            },

            {
              "description": "quantidade_ocorrencias",
              "label": "Quantidade de ocorrências",
              "mandatory": true,
              "visible": true,
              "fieldType": "LIST",
              "fieldValues": [
                { "value": "1" },
                { "value": "2" },
                { "value": "3" },
                { "value": "4" },
                { "value": "5" },
              ],
              "fieldRules": [
                "description": "Exibir campo se a resposta for? Sim",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "ocorrencias",
              ],
              "displayOrder": 378,
            },

            {
              "description": "justificativa_ocorrencia_1",
              "label": "Justificativa da ocorrência (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 379,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "description": "foto_ocorrencia_1",
              "label": "Ocorrência (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 380,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },

            {
              "description": "justificativa_ocorrencia_2",
              "label": "Justificativa da ocorrência (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 381,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "description": "foto_ocorrencia_2",
              "label": "Ocorrência (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 382,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },

            {
              "description": "justificativa_ocorrencia_3",
              "label": "Justificativa da ocorrência (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 383,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "description": "foto_ocorrencia_3",
              "label": "Ocorrência (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 384,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },

            {
              "description": "justificativa_ocorrencia_4",
              "label": "Justificativa da ocorrência (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 385,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "description": "foto_ocorrencia_4",
              "label": "Ocorrência (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 386,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },

            {
              "description": "justificativa_ocorrencia_5",
              "label": "Justificativa da ocorrência (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 387,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "description": "foto_ocorrencia_5",
              "label": "Ocorrência (5)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 388,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 5",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },

            {
              "description": "justificativa_ocorrencia_1_2",
              "label": "Justificativa da ocorrência (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 389,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "description": "foto_ocorrencia_1_2",
              "label": "Ocorrência (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 390,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },

            {
              "description": "justificativa_ocorrencia_1_3",
              "label": "Justificativa da ocorrência (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 391,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 3",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "description": "foto_ocorrencia_1_3",
              "label": "Ocorrência (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 392,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 3",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },

            {
              "description": "justificativa_ocorrencia_1_4",
              "label": "Justificativa da ocorrência (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 393,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 2",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "description": "foto_ocorrencia_1_3",
              "label": "Ocorrência (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 394,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 2",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },

            {
              "description": "justificativa_ocorrencia_1_5",
              "label": "Justificativa da ocorrência (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 395,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 1",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "description": "foto_ocorrencia_1_5",
              "label": "Ocorrência (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 396,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 1",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },

            {
              "description": "justificativa_ocorrencia_2_2",
              "label": "Justificativa da ocorrência (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 397,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "description": "foto_ocorrencia_2_2",
              "label": "Ocorrência (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 398,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },

            {
              "description": "justificativa_ocorrencia_2_3",
              "label": "Justificativa da ocorrência (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 399,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 3",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "description": "foto_ocorrencia_2_3",
              "label": "Ocorrência (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 400,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 3",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },

            {
              "description": "justificativa_ocorrencia_2_4",
              "label": "Justificativa da ocorrência (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 401,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 2",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "description": "foto_ocorrencia_2_4",
              "label": "Ocorrência (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 402,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 2",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },


            {
              "description": "justificativa_ocorrencia_3_2",
              "label": "Justificativa da ocorrência (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 403,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "description": "foto_ocorrencia_3_2",
              "label": "Ocorrência (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 404,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },


            {
              "description": "justificativa_ocorrencia_3_3",
              "label": "Justificativa da ocorrência (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 405,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 3",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "description": "foto_ocorrencia_3_3",
              "label": "Ocorrência (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 406,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 3",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },



            {
              "description": "justificativa_ocorrencia_4_2",
              "label": "Justificativa da ocorrência (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 407,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "description": "foto_ocorrencia_4_2",
              "label": "Ocorrência (4)",
              "mandatory": true,
              "visible": true,
              "fieldType": "PHOTO",
              "displayOrder": 408,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },

            {
              "description": "interacao_gestor",
              "label": "Houve interação com o gestor local da unidade?",
              "mandatory": true,
              "visible": true,
              "fieldType": "BOOLEAN",
              "displayOrder": 409
            },

            {
              "description": "jusitificativa_interacao_gestor",
              "label": "Justificatica de não interagir",
              "mandatory": true,
              "visible": true,
              "fieldType": "TEXT",
              "displayOrder": 410,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? Não",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "interacao_gestor"
                }
              ]
            },

            {
              "description": "gravar_audio",
              "label": "Gravar audio",
              "mandatory": false,
              "visible": true,
              "fieldType": "AUDIO",
              "displayOrder": 411,
            },

            {
              "description": "observacoes",
              "label": "Observações?",
              "mandatory": true,
              "visible": true,
              "fieldType": "BOOLEAN",
              "displayOrder": 412
            },

            {
              "description": "observacao_foto_1",
              "label": "Observação (1)",
              "mandatory": true,
              "visible": true,
              "fieldType": "FOTO",
              "displayOrder": 413,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? Sim",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "observacoes"
                }
              ]
            },

            {
              "description": "observacao_foto_2",
              "label": "Observação (2)",
              "mandatory": true,
              "visible": true,
              "fieldType": "FOTO",
              "displayOrder": 414,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? Sim",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "observacoes"
                }
              ]
            },

            {
              "description": "observacao_foto_3",
              "label": "Observação (3)",
              "mandatory": true,
              "visible": true,
              "fieldType": "FOTO",
              "displayOrder": 415,
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? Sim",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "observacoes"
                }
              ]
            },

            {
              "description": "assinatura_supervisor",
              "label": "Assinatura do supervisor",
              "mandatory": true,
              "visible": true,
              "fieldType": "SIGNATURE",
              "displayOrder": 416
            },
          ]
        }
      ]
    }
  ]
}
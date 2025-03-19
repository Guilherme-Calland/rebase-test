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
      "description": "Realizar Check In",
      "executionOrder": 1,
      "whenStatusIs": "COMPLETED",
      "processStatusGoesTo": ["Check In realizada"],
      "actions": [
        {
          "displayOrder": 1,
          "description": "Relizar Check In",
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
              "description": "existencia_ocorrencias",
              "label": "Ocorrência(s) a informar?",
              "fieldType": "BOOLEAN",
            },

            {
              "displayOrder": 10,
              "mandatory": true,
              "visible": true,
              "description": "quantidade_ocorrencias",
              "label": "Quantidade de ocorrências",
              "fieldType": "LIST",
              "fieldValues": [
                { "value": "1" },
                { "value": "2" },
                { "value": "3" },
                { "value": "4" },
                { "value": "5" },
              ]
            },

            {
              "displayOrder": 11,
              "mandatory": true,
              "visible": true,
              "description": "descricao_ocorrencia_1",
              "label": "Descrição da ocorrência (1)",
              "fieldType": "TEXT",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_ocorrencias",
              ]
            },

            {
              "displayOrder": 12,
              "mandatory": true,
              "visible": true,
              "description": "foto_ocorrencia_1",
              "label": "Foto da ocorrência (1)",
              "fieldType": "PHOTO",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_ocorrencias",
              ]
            },

            {
              "displayOrder": 13,
              "mandatory": true,
              "visible": true,
              "description": "descricao_ocorrencia_2",
              "label": "Descrição da ocorrência (2)",
              "fieldType": "TEXT",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_ocorrencias",
              ]
            },

            {
              "displayOrder": 14,
              "mandatory": true,
              "visible": true,
              "description": "foto_ocorrencia_2",
              "label": "Foto da ocorrência (2)",
              "fieldType": "PHOTO",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_ocorrencias",
              ]
            },

            {
              "displayOrder": 15,
              "mandatory": true,
              "visible": true,
              "description": "descricao_ocorrencia_3",
              "label": "Descrição da ocorrência (3)",
              "fieldType": "TEXT",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_ocorrencias",
              ]
            },

            {
              "displayOrder": 16,
              "mandatory": true,
              "visible": true,
              "description": "foto_ocorrencia_3",
              "label": "Foto da ocorrência (3)",
              "fieldType": "PHOTO",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_ocorrencias",
              ]
            },

            {
              "displayOrder": 17,
              "mandatory": true,
              "visible": true,
              "description": "descricao_ocorrencia_4",
              "label": "Descrição da ocorrência (4)",
              "fieldType": "TEXT",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_ocorrencias",
              ]
            },

            {
              "displayOrder": 18,
              "mandatory": true,
              "visible": true,
              "description": "foto_ocorrencia_4",
              "label": "Foto da ocorrência (4)",
              "fieldType": "PHOTO",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_ocorrencias",
              ]
            },

            {
              "displayOrder": 19,
              "mandatory": true,
              "visible": true,
              "description": "descricao_ocorrencia_5",
              "label": "Descrição da ocorrência (5)",
              "fieldType": "TEXT",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_ocorrencias",
              ]
            },

            {
              "displayOrder": 20,
              "mandatory": true,
              "visible": true,
              "description": "foto_ocorrencia_5",
              "label": "Foto da ocorrência (5)",
              "fieldType": "PHOTO",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? 5",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_ocorrencias",
              ]
            },

            {
              "displayOrder": 21,
              "mandatory": true,
              "visible": true,
              "description": "descricao_ocorrencia_1_2",
              "label": "Descrição da ocorrência (1)",
              "fieldType": "TEXT",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? 4",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_ocorrencias",
              ]
            },

            {
              "displayOrder": 22,
              "mandatory": true,
              "visible": true,
              "description": "foto_ocorrencia_1_2",
              "label": "Foto da ocorrência (1)",
              "fieldType": "PHOTO",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? 4",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_ocorrencias",
              ]
            },

            {
              "displayOrder": 23,
              "mandatory": true,
              "visible": true,
              "description": "descricao_ocorrencia_1_3",
              "label": "Descrição da ocorrência (1)",
              "fieldType": "TEXT",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? 3",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_ocorrencias",
              ]
            },

            {
              "displayOrder": 24,
              "mandatory": true,
              "visible": true,
              "description": "foto_ocorrencia_1_3",
              "label": "Foto da ocorrência (1)",
              "fieldType": "PHOTO",
              "fieldRules": [
                "description": "Exibir campo se a resposta for? 3",
                "fieldRuleActionType": "DISPLAY_FIELD",
                "sourceFieldDescription": "quantidade_ocorrencias",
              ]
            },
            {
              "displayOrder": 25,
              "mandatory": true,
              "visible": true,
              "description": "descricao_ocorrencia_1_4",
              "label": "Descrição da ocorrência (1)",
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 2",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "displayOrder": 26,
              "mandatory": true,
              "visible": true,
              "description": "foto_ocorrencia_1_4",
              "label": "Foto da ocorrência (1)",
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 2",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },



            {
              "displayOrder": 27,
              "mandatory": true,
              "visible": true,
              "description": "descricao_ocorrencia_1_5",
              "label": "Descrição da ocorrência (1)",
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 1",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "displayOrder": 28,
              "mandatory": true,
              "visible": true,
              "description": "foto_ocorrencia_1_5",
              "label": "Foto da ocorrência (1)",
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 1",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            }.


            {
              "displayOrder": 29,
              "mandatory": true,
              "visible": true,
              "description": "descricao_ocorrencia_2_2",
              "label": "Descrição da ocorrência (2)",
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "displayOrder": 30,
              "mandatory": true,
              "visible": true,
              "description": "foto_ocorrencia_2_2",
              "label": "Foto da ocorrência (2)",
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },



            {
              "displayOrder": 31,
              "mandatory": true,
              "visible": true,
              "description": "descricao_ocorrencia_2_3",
              "label": "Descrição da ocorrência (2)",
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 3",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "displayOrder": 32,
              "mandatory": true,
              "visible": true,
              "description": "foto_ocorrencia_2_3",
              "label": "Foto da ocorrência (2)",
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 3",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },


            {
              "displayOrder": 33,
              "mandatory": true,
              "visible": true,
              "description": "descricao_ocorrencia_2_4",
              "label": "Descrição da ocorrência (2)",
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 2",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "displayOrder": 34,
              "mandatory": true,
              "visible": true,
              "description": "foto_ocorrencia_2_4",
              "label": "Foto da ocorrência (2)",
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 2",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },

            {
              "displayOrder": 35,
              "mandatory": true,
              "visible": true,
              "description": "descricao_ocorrencia_3_2",
              "label": "Descrição da ocorrência (3)",
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "displayOrder": 36,
              "mandatory": true,
              "visible": true,
              "description": "foto_ocorrencia_3_2",
              "label": "Foto da ocorrência (3)",
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },

            {
              "displayOrder": 37,
              "mandatory": true,
              "visible": true,
              "description": "descricao_ocorrencia_3_3",
              "label": "Descrição da ocorrência (3)",
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 3",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "displayOrder": 38,
              "mandatory": true,
              "visible": true,
              "description": "foto_ocorrencia_3_3",
              "label": "Foto da ocorrência (3)",
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 3",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },




            {
              "displayOrder": 39,
              "mandatory": true,
              "visible": true,
              "description": "descricao_ocorrencia_4_2",
              "label": "Descrição da ocorrência (4)",
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },
            {
              "displayOrder": 40,
              "mandatory": true,
              "visible": true,
              "description": "foto_ocorrencia_4_2",
              "label": "Foto da ocorrência (4)",
              "fieldType": "PHOTO",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? 4",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "quantidade_ocorrencias"
                }
              ]
            },

            {
              "displayOrder": 41,
              "mandatory": true,
              "visible": true,
              "description": "interacao_gestor",
              "label": "Houve interação com o gestor local da unidade sobre a ocorrência?",
              "fieldType": "LIST",
              "fieldValues": [
                { "value": "Sim" },
                { "value": "Não" },
                { "value": "Não se aplica" },
              ]
            },

            {
              "displayOrder": 42,
              "mandatory": true,
              "visible": true,
              "description": "justificativa_nao_interacao",
              "label": "Justificativa por não avisar ao gestor",
              "fieldType": "TEXT",
              "fieldRules": [
                {
                  "description": "Exibir campo se a resposta for? Não",
                  "fieldRuleActionType": "DISPLAY_FIELD",
                  "sourceFieldDescription": "interacao_gestor"
                }
              ]
            },

            {
              "displayOrder": 43,
              "mandatory": false,
              "visible": true,
              "description": "gravar_audio",
              "label": "Gravar Audio",
              "fieldType": "AUDIO",
            },

            {
              "displayOrder": 44,
              "mandatory": true,
              "visible": true,
              "description": "oberservacoes",
              "label": "Observações",
              "fieldType": "TEXT",
            },

            {
              "displayOrder": 45,
              "mandatory": true,
              "visible": true,
              "description": "assinatura_colaborador",
              "label": "Assinatura do Colaborador",
              "fieldType": "SIGNATURE"  
            },

            {
              "description": "geo",
              "label": "Geo",
              "mandatory": true,
              "visible": true,
              "fieldType": "GEOLOCATION",
              "displayOrder": 46,
            },
          ]
        }
      ]
    }
  ]
}
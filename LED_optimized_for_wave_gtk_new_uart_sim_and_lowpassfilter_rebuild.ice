{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "iCE40-HX8K-EVB",
    "graph": {
      "blocks": [
        {
          "id": "4b798e29-578b-4634-b4d3-8af0b57665ac",
          "type": "basic.output",
          "data": {
            "name": "RE_DE",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "RE_DE_C1",
                "value": "C1"
              }
            ]
          },
          "position": {
            "x": 1096,
            "y": -224
          }
        },
        {
          "id": "b1ef3888-7c24-4439-ad2a-f539999308aa",
          "type": "basic.input",
          "data": {
            "name": "Data_in",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "RXD_In_E4",
                "value": "E4"
              }
            ],
            "clock": false
          },
          "position": {
            "x": 1352,
            "y": -216
          }
        },
        {
          "id": "d41d41fb-f7f2-497a-b579-d09608e6f9af",
          "type": "basic.output",
          "data": {
            "name": "to_early",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "01_TEST_C1",
                "value": "C2"
              }
            ]
          },
          "position": {
            "x": 2736,
            "y": -48
          }
        },
        {
          "id": "b4177922-d726-4239-bfc8-1f1e240c804f",
          "type": "basic.output",
          "data": {
            "name": "to_late",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "02_TEST_F4",
                "value": "F4"
              }
            ]
          },
          "position": {
            "x": 2832,
            "y": 120
          }
        },
        {
          "id": "3b54ba16-d6bb-4fb2-9aba-ccbcff31f91e",
          "type": "basic.input",
          "data": {
            "name": "clk_100MHz",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "CLK_100MHz",
                "value": "J3"
              }
            ],
            "clock": false
          },
          "position": {
            "x": 80,
            "y": 296
          }
        },
        {
          "id": "95c03322-21a1-4186-819f-23c1cff1abb5",
          "type": "basic.output",
          "data": {
            "name": "Prescaler_clock_out",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "RXD_Out_F5",
                "value": "F5"
              }
            ]
          },
          "position": {
            "x": 1656,
            "y": 472
          }
        },
        {
          "id": "3d1f524f-2c1f-4905-a44e-d5585aa0f750",
          "type": "basic.output",
          "data": {
            "name": "Data_out",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "TXD_Out_B1",
                "value": "B1"
              }
            ]
          },
          "position": {
            "x": 1712,
            "y": 592
          }
        },
        {
          "id": "bd4971f3-d6c0-4a13-972c-694e8da164e2",
          "type": "basic.constant",
          "data": {
            "name": "Const_5MHZ",
            "value": "2",
            "local": false
          },
          "position": {
            "x": 1312,
            "y": 184
          }
        },
        {
          "id": "4bbf0658-33e0-4e30-98b0-d63255ba29fb",
          "type": "basic.code",
          "data": {
            "ports": {
              "in": [
                {
                  "name": "RESET"
                },
                {
                  "name": "BYPASS"
                },
                {
                  "name": "REFERENCECLK"
                },
                {
                  "name": "DYNAMICDELAY",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "EXTFEEDBACK"
                },
                {
                  "name": "LATCHINPUTVALUE"
                }
              ],
              "out": [
                {
                  "name": "PLLOUTCORE"
                },
                {
                  "name": "PLLOUTGLOBAL"
                },
                {
                  "name": "LOCK"
                }
              ]
            },
            "params": [],
            "code": "SB_PLL40_CORE top_pll_inst(.REFERENCECLK(REFERENCECLK),\n                           .PLLOUTCORE(PLLOUTCORE),\n                           .PLLOUTGLOBAL(PLLOUTGLOBAL),\n                           .EXTFEEDBACK(),\n                           .DYNAMICDELAY(DYNAMICDELAY),\n                           .RESETB(RESET),\n                           .BYPASS(1'b0),\n                           .LATCHINPUTVALUE(),\n                           .LOCK(),\n                           .SDI(),\n                           .SDO(),\n                           .SCLK());\n\n//\\\\ Fin=100, Fout=20;\ndefparam top_pll_inst.DIVR = 4'b0100;\ndefparam top_pll_inst.DIVF = 7'b0000000;\ndefparam top_pll_inst.DIVQ = 3'b000;\ndefparam top_pll_inst.FILTER_RANGE = 3'b010;\ndefparam top_pll_inst.FEEDBACK_PATH = \"DELAY\";\ndefparam top_pll_inst.DELAY_ADJUSTMENT_MODE_FEEDBACK = \"FIXED\";\ndefparam top_pll_inst.FDA_FEEDBACK = 4'b0000;\ndefparam top_pll_inst.DELAY_ADJUSTMENT_MODE_RELATIVE = \"DYNAMIC\";\ndefparam top_pll_inst.FDA_RELATIVE = 4'b0000;\ndefparam top_pll_inst.SHIFTREG_DIV_MODE = 2'b00;\ndefparam top_pll_inst.PLLOUT_SELECT = \"GENCLK\";\ndefparam top_pll_inst.ENABLE_ICEGATE = 1'b0;"
          },
          "position": {
            "x": 312,
            "y": 112
          },
          "size": {
            "width": 632,
            "height": 520
          }
        },
        {
          "id": "41cd59f0-7adc-47de-b66f-791fc7ee25d6",
          "type": "febcfed8636b8ee9a98750b96ed9e53a165dd4a8",
          "position": {
            "x": 104,
            "y": 48
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "da8cb295-4804-4b0b-9ff6-f9630e1a77b2",
          "type": "6a50747141af6d1cfb3bb9d0093fb94862ff5a65",
          "position": {
            "x": 1312,
            "y": 344
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "a3a27bf0-05db-460a-b488-c7a9bb7badd5",
          "type": "58ed2b5c7e33e2f215ccba6c101d9ea4ff60f284",
          "position": {
            "x": 1920,
            "y": 88
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "23e2160f-a2e8-4cc6-8d07-565957b56d20",
          "type": "58ed2b5c7e33e2f215ccba6c101d9ea4ff60f284",
          "position": {
            "x": 2216,
            "y": 88
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "ee067046-2e52-4339-b335-f51fcb4f192a",
          "type": "58ed2b5c7e33e2f215ccba6c101d9ea4ff60f284",
          "position": {
            "x": 1920,
            "y": 256
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "d80f1419-7efe-41e8-93a4-823c22ee09e1",
          "type": "58ed2b5c7e33e2f215ccba6c101d9ea4ff60f284",
          "position": {
            "x": 2224,
            "y": 256
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "2f2efbf1-e525-41a3-b244-1e9693de1fb6",
          "type": "3676a00f3a70e406487ed14b901daf3e4984e63d",
          "position": {
            "x": 1744,
            "y": 240
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "5e1e5ed2-fa18-4a39-a075-674dd728d1a5",
          "type": "18c17a0bdf143809e879682e77c7c4682afd9705",
          "position": {
            "x": 2480,
            "y": 88
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "a0340a07-13f4-4b37-9728-698140331427",
          "type": "18c17a0bdf143809e879682e77c7c4682afd9705",
          "position": {
            "x": 2488,
            "y": 240
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "377a1429-18d1-4e5b-bfb8-2e6294785605",
          "type": "basic.code",
          "data": {
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "up"
                },
                {
                  "name": "dn"
                },
                {
                  "name": "rst_n"
                }
              ],
              "out": [
                {
                  "name": "control_voltage_out",
                  "range": "[3:0]",
                  "size": 4
                }
              ]
            },
            "params": [],
            "code": "// Parameters\r\nparameter TAPS = 32;\r\nparameter DATA_WIDTH = 4;\r\n\r\n// 4-bit filtered output\r\nreg [DATA_WIDTH-1:0] control_voltage;\r\n\r\n// Array for the delay line of the FIR filter\r\n// delay_line[0] is the current input, delay_line[1] is t-1, etc.\r\nreg [DATA_WIDTH-1:0] delay_line [0:TAPS-1];\r\n\r\n// Majority voting for input signals\r\nreg [2:0] up_history, down_history;\r\n\r\n// Loop variable\r\ninteger i;\r\n\r\nreg [8:0] sum; // 9 bits wide: 32 taps * 4-bit max (15) = 480 max, needs 9 bits\r\n\r\n// Majority voting logic - only act if 2 out of 3 recent samples agree\r\nwire majority_up = (up_history[2] + up_history[1] + up_history[0]) >= 2;\r\nwire majority_down = (down_history[2] + down_history[1] + down_history[0]) >= 2;\r\n\r\n// This block handles the sequential logic: the up/down counter and the delay line.\r\n// It is triggered on the rising edge of the clock.\r\nalways @(posedge clk) begin\r\n    if (!rst_n) begin\r\n        // On reset, all delay line registers and history are cleared to 0.\r\n        for (i = 0; i < TAPS; i = i + 1) begin\r\n            delay_line[i] <= {DATA_WIDTH{1'b0}};\r\n        end\r\n        up_history <= 3'b0;\r\n        down_history <= 3'b0;\r\n    end else begin\r\n        // Update majority voting history\r\n        up_history <= {up_history[1:0], up};\r\n        down_history <= {down_history[1:0], dn};\r\n        \r\n        // Shift the delay line: move all samples one position down\r\n        for (i = TAPS-1; i > 0; i = i - 1) begin\r\n            delay_line[i] <= delay_line[i-1];\r\n        end\r\n        \r\n        // The delay_line[0] acts as an up/down counter.\r\n        // This simulates a changing input signal for the filter.\r\n        // Use majority vote (2 out of 3 recent samples agree)\r\n        if (majority_up & !majority_down) begin\r\n            if (delay_line[0] != {DATA_WIDTH{1'b1}}) begin // Check for maximum value\r\n                delay_line[0] <= delay_line[0] + 1;\r\n            end\r\n        end else if (majority_down & !majority_up) begin\r\n            if (delay_line[0] != {DATA_WIDTH{1'b0}}) begin // Check for minimum value\r\n                delay_line[0] <= delay_line[0] - 1;\r\n            end\r\n        end\r\n        // If both majority votes are true, both are false, or no majority, hold current value\r\n    end\r\nend\r\n\r\n// This block handles the combinational logic of the FIR filter.\r\n// It calculates the output based on the current and delayed input values.\r\n// This is a simple moving average filter.\r\nalways @(*) begin\r\n\r\n    sum = 9'b0; // Initialize sum to 0\r\n    \r\n    // Sum all taps\r\n    for (i = 0; i < TAPS; i = i + 1) begin\r\n        sum = sum + delay_line[i];\r\n    end\r\n    \r\n    // The output is the sum of the 32 taps divided by 32.\r\n    // Division by 32 is implemented as a right shift by 5 for efficiency.\r\n    // Take bits [8:5] to get the result of sum >> 5\r\n    control_voltage = sum[8:5]; // Right shift by 5 (divide by 32)\r\nend\r\n\r\n// Output assignment\r\nassign control_voltage_out = control_voltage;"
          },
          "position": {
            "x": 2896,
            "y": 272
          },
          "size": {
            "width": 888,
            "height": 832
          }
        },
        {
          "id": "2b5e1d19-ddf5-4245-a571-c60155b54ef9",
          "type": "febcfed8636b8ee9a98750b96ed9e53a165dd4a8",
          "position": {
            "x": 2704,
            "y": 976
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "fa49225d-d431-4a2e-a9ab-2b6dca73874c",
          "type": "basic.code",
          "data": {
            "ports": {
              "in": [
                {
                  "name": "in",
                  "range": "[3:0]",
                  "size": 4
                }
              ],
              "out": [
                {
                  "name": "out",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            },
            "params": [],
            "code": "assign out = {in, 4'b0000};"
          },
          "position": {
            "x": 3896,
            "y": 64
          },
          "size": {
            "width": 416,
            "height": 128
          }
        },
        {
          "id": "51ab7c12-dc91-481d-86c3-74fe22375690",
          "type": "58ed2b5c7e33e2f215ccba6c101d9ea4ff60f284",
          "position": {
            "x": 1528,
            "y": 576
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "80eabf2f-34ac-4479-b3ac-4f07a1bd270a",
          "type": "d30ca9ee4f35f6cb76d5e5701447fc2b739bc640",
          "position": {
            "x": 928,
            "y": -224
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "41cd59f0-7adc-47de-b66f-791fc7ee25d6",
            "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
          },
          "target": {
            "block": "4bbf0658-33e0-4e30-98b0-d63255ba29fb",
            "port": "RESET"
          }
        },
        {
          "source": {
            "block": "4bbf0658-33e0-4e30-98b0-d63255ba29fb",
            "port": "PLLOUTGLOBAL"
          },
          "target": {
            "block": "da8cb295-4804-4b0b-9ff6-f9630e1a77b2",
            "port": "e19c6f2f-5747-4ed1-87c8-748575f0cc10"
          }
        },
        {
          "source": {
            "block": "bd4971f3-d6c0-4a13-972c-694e8da164e2",
            "port": "constant-out"
          },
          "target": {
            "block": "da8cb295-4804-4b0b-9ff6-f9630e1a77b2",
            "port": "de2d8a2d-7908-48a2-9e35-7763a45886e4"
          }
        },
        {
          "source": {
            "block": "2f2efbf1-e525-41a3-b244-1e9693de1fb6",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "ee067046-2e52-4339-b335-f51fcb4f192a",
            "port": "3943e194-090b-4553-9df3-88bc4b17abc2"
          }
        },
        {
          "source": {
            "block": "da8cb295-4804-4b0b-9ff6-f9630e1a77b2",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "2f2efbf1-e525-41a3-b244-1e9693de1fb6",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          },
          "vertices": [
            {
              "x": 1584,
              "y": 312
            }
          ]
        },
        {
          "source": {
            "block": "da8cb295-4804-4b0b-9ff6-f9630e1a77b2",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "a3a27bf0-05db-460a-b488-c7a9bb7badd5",
            "port": "3943e194-090b-4553-9df3-88bc4b17abc2"
          },
          "vertices": [
            {
              "x": 1584,
              "y": 184
            }
          ]
        },
        {
          "source": {
            "block": "da8cb295-4804-4b0b-9ff6-f9630e1a77b2",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "23e2160f-a2e8-4cc6-8d07-565957b56d20",
            "port": "3943e194-090b-4553-9df3-88bc4b17abc2"
          },
          "vertices": [
            {
              "x": 1584,
              "y": -40
            },
            {
              "x": 2160,
              "y": 48
            }
          ]
        },
        {
          "source": {
            "block": "da8cb295-4804-4b0b-9ff6-f9630e1a77b2",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "d80f1419-7efe-41e8-93a4-823c22ee09e1",
            "port": "3943e194-090b-4553-9df3-88bc4b17abc2"
          },
          "vertices": [
            {
              "x": 2160,
              "y": 312
            }
          ]
        },
        {
          "source": {
            "block": "a3a27bf0-05db-460a-b488-c7a9bb7badd5",
            "port": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78"
          },
          "target": {
            "block": "23e2160f-a2e8-4cc6-8d07-565957b56d20",
            "port": "bf2f0c53-2d04-4cba-aa70-2df85502d24f"
          }
        },
        {
          "source": {
            "block": "ee067046-2e52-4339-b335-f51fcb4f192a",
            "port": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78"
          },
          "target": {
            "block": "d80f1419-7efe-41e8-93a4-823c22ee09e1",
            "port": "bf2f0c53-2d04-4cba-aa70-2df85502d24f"
          }
        },
        {
          "source": {
            "block": "a3a27bf0-05db-460a-b488-c7a9bb7badd5",
            "port": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78"
          },
          "target": {
            "block": "5e1e5ed2-fa18-4a39-a075-674dd728d1a5",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          },
          "vertices": [
            {
              "x": 2248,
              "y": 32
            }
          ]
        },
        {
          "source": {
            "block": "d80f1419-7efe-41e8-93a4-823c22ee09e1",
            "port": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78"
          },
          "target": {
            "block": "a0340a07-13f4-4b37-9728-698140331427",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          },
          "vertices": [
            {
              "x": 2464,
              "y": 296
            }
          ]
        },
        {
          "source": {
            "block": "d80f1419-7efe-41e8-93a4-823c22ee09e1",
            "port": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78"
          },
          "target": {
            "block": "5e1e5ed2-fa18-4a39-a075-674dd728d1a5",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          }
        },
        {
          "source": {
            "block": "23e2160f-a2e8-4cc6-8d07-565957b56d20",
            "port": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78"
          },
          "target": {
            "block": "a0340a07-13f4-4b37-9728-698140331427",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          },
          "vertices": [
            {
              "x": 2400,
              "y": 216
            }
          ]
        },
        {
          "source": {
            "block": "da8cb295-4804-4b0b-9ff6-f9630e1a77b2",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "377a1429-18d1-4e5b-bfb8-2e6294785605",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "a0340a07-13f4-4b37-9728-698140331427",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "377a1429-18d1-4e5b-bfb8-2e6294785605",
            "port": "up"
          },
          "vertices": [
            {
              "x": 2632,
              "y": 472
            }
          ]
        },
        {
          "source": {
            "block": "5e1e5ed2-fa18-4a39-a075-674dd728d1a5",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "377a1429-18d1-4e5b-bfb8-2e6294785605",
            "port": "dn"
          },
          "vertices": [
            {
              "x": 2720,
              "y": 256
            }
          ]
        },
        {
          "source": {
            "block": "2b5e1d19-ddf5-4245-a571-c60155b54ef9",
            "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
          },
          "target": {
            "block": "377a1429-18d1-4e5b-bfb8-2e6294785605",
            "port": "rst_n"
          }
        },
        {
          "source": {
            "block": "377a1429-18d1-4e5b-bfb8-2e6294785605",
            "port": "control_voltage_out"
          },
          "target": {
            "block": "fa49225d-d431-4a2e-a9ab-2b6dca73874c",
            "port": "in"
          },
          "vertices": [
            {
              "x": 3736,
              "y": 264
            },
            {
              "x": 3736,
              "y": 144
            }
          ],
          "size": 4
        },
        {
          "source": {
            "block": "fa49225d-d431-4a2e-a9ab-2b6dca73874c",
            "port": "out"
          },
          "target": {
            "block": "4bbf0658-33e0-4e30-98b0-d63255ba29fb",
            "port": "DYNAMICDELAY"
          },
          "vertices": [
            {
              "x": 1248,
              "y": -328
            },
            {
              "x": -24,
              "y": -104
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "b1ef3888-7c24-4439-ad2a-f539999308aa",
            "port": "out"
          },
          "target": {
            "block": "a3a27bf0-05db-460a-b488-c7a9bb7badd5",
            "port": "bf2f0c53-2d04-4cba-aa70-2df85502d24f"
          },
          "vertices": [
            {
              "x": 1736,
              "y": 24
            }
          ]
        },
        {
          "source": {
            "block": "b1ef3888-7c24-4439-ad2a-f539999308aa",
            "port": "out"
          },
          "target": {
            "block": "ee067046-2e52-4339-b335-f51fcb4f192a",
            "port": "bf2f0c53-2d04-4cba-aa70-2df85502d24f"
          },
          "vertices": [
            {
              "x": 1736,
              "y": 32
            },
            {
              "x": 1816,
              "y": 200
            }
          ]
        },
        {
          "source": {
            "block": "da8cb295-4804-4b0b-9ff6-f9630e1a77b2",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "51ab7c12-dc91-481d-86c3-74fe22375690",
            "port": "3943e194-090b-4553-9df3-88bc4b17abc2"
          }
        },
        {
          "source": {
            "block": "b1ef3888-7c24-4439-ad2a-f539999308aa",
            "port": "out"
          },
          "target": {
            "block": "51ab7c12-dc91-481d-86c3-74fe22375690",
            "port": "bf2f0c53-2d04-4cba-aa70-2df85502d24f"
          },
          "vertices": [
            {
              "x": 1464,
              "y": -80
            }
          ]
        },
        {
          "source": {
            "block": "3b54ba16-d6bb-4fb2-9aba-ccbcff31f91e",
            "port": "out"
          },
          "target": {
            "block": "4bbf0658-33e0-4e30-98b0-d63255ba29fb",
            "port": "REFERENCECLK"
          }
        },
        {
          "source": {
            "block": "da8cb295-4804-4b0b-9ff6-f9630e1a77b2",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "95c03322-21a1-4186-819f-23c1cff1abb5",
            "port": "in"
          },
          "vertices": [
            {
              "x": 1584,
              "y": 432
            }
          ]
        },
        {
          "source": {
            "block": "80eabf2f-34ac-4479-b3ac-4f07a1bd270a",
            "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
          },
          "target": {
            "block": "4b798e29-578b-4634-b4d3-8af0b57665ac",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "5e1e5ed2-fa18-4a39-a075-674dd728d1a5",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "d41d41fb-f7f2-497a-b579-d09608e6f9af",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "a0340a07-13f4-4b37-9728-698140331427",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "b4177922-d726-4239-bfc8-1f1e240c804f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "51ab7c12-dc91-481d-86c3-74fe22375690",
            "port": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78"
          },
          "target": {
            "block": "3d1f524f-2c1f-4905-a44e-d5585aa0f750",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {
    "febcfed8636b8ee9a98750b96ed9e53a165dd4a8": {
      "package": {
        "name": "bit-1",
        "version": "0.2",
        "description": "Constant bit 1",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2289.79%22%20height=%22185.093%22%20viewBox=%220%200%2084.179064%20173.52585%22%3E%3Cpath%20d=%22M7.702%2032.42L49.972%200l34.207%207.725-27.333%20116.736-26.607-6.01L51.26%2025.273%2020.023%2044.2z%22%20fill=%22green%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M46.13%20117.28l21.355%2028.258-17.91%2021.368%206.198%205.513m-14.033-54.45l-12.4%2028.26-28.242%205.512%202.067%208.959%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%222.196%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3d584b0a-29eb-47af-8c43-c0822282ef05",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 456,
                "y": 120
              }
            },
            {
              "id": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
              "type": "basic.code",
              "data": {
                "code": "//-- Constant bit-1\nassign q = 1'b1;\n\n",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 168,
                "y": 112
              },
              "size": {
                "width": 248,
                "height": 80
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
                "port": "q"
              },
              "target": {
                "block": "3d584b0a-29eb-47af-8c43-c0822282ef05",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "6a50747141af6d1cfb3bb9d0093fb94862ff5a65": {
      "package": {
        "name": "PrescalerN",
        "version": "0.1",
        "description": "Parametric N-bits prescaler",
        "author": "Juan Gonzalez (Obijuan)",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 0,
                "y": 256
              }
            },
            {
              "id": "7e07d449-6475-4839-b43e-8aead8be2aac",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 720,
                "y": 256
              }
            },
            {
              "id": "de2d8a2d-7908-48a2-9e35-7763a45886e4",
              "type": "basic.constant",
              "data": {
                "name": "N",
                "value": "22",
                "local": false
              },
              "position": {
                "x": 352,
                "y": 56
              }
            },
            {
              "id": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
              "type": "basic.code",
              "data": {
                "code": "//-- Number of bits of the prescaler\n//parameter N = 22;\n\n//-- divisor register\nreg [N-1:0] divcounter;\n\n//-- N bit counter\nalways @(posedge clk_in)\n  divcounter <= divcounter + 1;\n\n//-- Use the most significant bit as output\nassign clk_out = divcounter[N-1];",
                "params": [
                  {
                    "name": "N"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk_in"
                    }
                  ],
                  "out": [
                    {
                      "name": "clk_out"
                    }
                  ]
                }
              },
              "position": {
                "x": 176,
                "y": 176
              },
              "size": {
                "width": 448,
                "height": 224
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "clk_out"
              },
              "target": {
                "block": "7e07d449-6475-4839-b43e-8aead8be2aac",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
                "port": "out"
              },
              "target": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "clk_in"
              }
            },
            {
              "source": {
                "block": "de2d8a2d-7908-48a2-9e35-7763a45886e4",
                "port": "constant-out"
              },
              "target": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "N"
              }
            }
          ]
        }
      }
    },
    "58ed2b5c7e33e2f215ccba6c101d9ea4ff60f284": {
      "package": {
        "name": "sys-DFF-verilog",
        "version": "3",
        "description": "System - D Flip-flop. Capture data every system clock cycle. Verilog implementation",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20width=%22196.313%22%20height=%22216.83%22%20viewBox=%220%200%2051.941051%2057.369679%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cg%20transform=%22translate(-52.22%20-48.028)%22%3E%3Crect%20width=%2224.412%22%20height=%2213.185%22%20x=%2279.352%22%20y=%2253.67%22%20ry=%222.247%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%22.794%22%20stroke-linecap=%22round%22/%3E%3Cg%20stroke=%22#000%22%20stroke-width=%221.442%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%3E%3Cpath%20d=%22M77.902%2088.18l13.607%2016.672-6.918-20.534%22%20fill=%22#ccc%22%20stroke-width=%221.0924880399999999%22/%3E%3Cpath%20d=%22M70.517%2080.116l-9.232-19.613-6.45%203.725-2.07-3.584%2020.905-12.07%202.07%203.584-6.093%203.518%2012.03%2018.222s5.4-2.025%208.536.74c3.136%202.766%202.52%204.92%202.887%204.773L69.412%2093.049s-2.848-3.696-2.16-6.796c.687-3.1%203.265-6.137%203.265-6.137z%22%20fill=%22red%22%20stroke-width=%221.0924880399999999%22/%3E%3C/g%3E%3Ctext%20style=%22line-height:1.25%22%20x=%2281.296%22%20y=%2263.239%22%20font-weight=%22400%22%20font-size=%2210.583%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%22.265%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20x=%2281.296%22%20y=%2263.239%22%20font-weight=%22700%22%3ESys%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "54dbabeb-8aef-4184-8fdc-87528aca29a3",
              "type": "basic.output",
              "data": {
                "name": "nc"
              },
              "position": {
                "x": 816,
                "y": 112
              }
            },
            {
              "id": "3943e194-090b-4553-9df3-88bc4b17abc2",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 208,
                "y": 184
              }
            },
            {
              "id": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 816,
                "y": 232
              }
            },
            {
              "id": "bf2f0c53-2d04-4cba-aa70-2df85502d24f",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 208,
                "y": 280
              }
            },
            {
              "id": "65194b18-5d2a-41b2-bd86-01be99978ad6",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 512,
                "y": 64
              }
            },
            {
              "id": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
              "type": "basic.code",
              "data": {
                "code": "//-- Initial value\nreg qi = INI;\n\n//-- Capture the input data  \n//-- on the rising edge of  \n//-- the system clock\nalways @(posedge clk)\n  qi <= d;\n  \n//-- Connect the register with the\n//-- output\nassign q = qi;",
                "params": [
                  {
                    "name": "INI"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "d"
                    }
                  ],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 384,
                "y": 168
              },
              "size": {
                "width": 352,
                "height": 192
              }
            },
            {
              "id": "53d11290-50b3-40fb-b253-222cb296b075",
              "type": "basic.info",
              "data": {
                "info": "Parameter: Initial value",
                "readonly": true
              },
              "position": {
                "x": 488,
                "y": 32
              },
              "size": {
                "width": 208,
                "height": 40
              }
            },
            {
              "id": "c25a29cd-d5ed-435e-b375-e6d5557660d8",
              "type": "basic.info",
              "data": {
                "info": "System clock",
                "readonly": true
              },
              "position": {
                "x": 208,
                "y": 160
              },
              "size": {
                "width": 120,
                "height": 32
              }
            },
            {
              "id": "ecafc6fa-330b-4ba7-aa67-40b3ea48f1f1",
              "type": "basic.info",
              "data": {
                "info": "Input data",
                "readonly": true
              },
              "position": {
                "x": 224,
                "y": 256
              },
              "size": {
                "width": 112,
                "height": 40
              }
            },
            {
              "id": "df95c331-682d-4733-a62d-ad9fcd75f96a",
              "type": "basic.info",
              "data": {
                "info": "Output",
                "readonly": true
              },
              "position": {
                "x": 840,
                "y": 200
              },
              "size": {
                "width": 80,
                "height": 40
              }
            },
            {
              "id": "dd8217df-b56d-49a9-ae94-f5e0c96e1460",
              "type": "basic.info",
              "data": {
                "info": "# D Flip-Flop  (system)\n\nIt stores the input data that arrives at cycle n  \nIts output is shown in the cycle n+1",
                "readonly": true
              },
              "position": {
                "x": 144,
                "y": -136
              },
              "size": {
                "width": 488,
                "height": 104
              }
            },
            {
              "id": "92bfbcf5-6016-4ad8-963c-c5c7747304d0",
              "type": "basic.info",
              "data": {
                "info": "Not connected",
                "readonly": true
              },
              "position": {
                "x": 808,
                "y": 88
              },
              "size": {
                "width": 176,
                "height": 32
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "3943e194-090b-4553-9df3-88bc4b17abc2",
                "port": "out"
              },
              "target": {
                "block": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
                "port": "q"
              },
              "target": {
                "block": "aa84d31e-cd92-44c7-bb38-c7a4cd903a78",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "65194b18-5d2a-41b2-bd86-01be99978ad6",
                "port": "constant-out"
              },
              "target": {
                "block": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
                "port": "INI"
              }
            },
            {
              "source": {
                "block": "bf2f0c53-2d04-4cba-aa70-2df85502d24f",
                "port": "out"
              },
              "target": {
                "block": "bdc170f0-4468-4137-bd79-4624c9cadf2b",
                "port": "d"
              }
            }
          ]
        }
      }
    },
    "3676a00f3a70e406487ed14b901daf3e4984e63d": {
      "package": {
        "name": "NOT",
        "version": "2.0",
        "description": "NOT gate (Verilog implementation)",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22317.651%22%20height=%22194.058%22%20version=%221%22%3E%3Cpath%20d=%22M69.246%204l161.86%2093.027-161.86%2093.031V4z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%22253.352%22%20cy=%2296.736%22%20rx=%2221.393%22%20ry=%2221.893%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2097.49h65.262m205.796%200h38.48%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2281.112%22%20y=%22111.734%22%20transform=%22scale(.99532%201.0047)%22%20font-weight=%22400%22%20font-size=%2249.675%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2281.112%22%20y=%22111.734%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ENot%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 112,
                "y": 72
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 560,
                "y": 72
              }
            },
            {
              "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
              "type": "basic.code",
              "data": {
                "code": "//-- NOT Gate\nassign q = ~a;\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    }
                  ],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 256,
                "height": 104
              }
            },
            {
              "id": "e3bb41e3-1944-4946-9675-c2dbe2e49fcf",
              "type": "basic.info",
              "data": {
                "info": "Input",
                "readonly": true
              },
              "position": {
                "x": 128,
                "y": 32
              },
              "size": {
                "width": 80,
                "height": 40
              }
            },
            {
              "id": "8408dd5f-945f-4a89-9790-7752813d4e91",
              "type": "basic.info",
              "data": {
                "info": "Output",
                "readonly": true
              },
              "position": {
                "x": 576,
                "y": 40
              },
              "size": {
                "width": 80,
                "height": 40
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "q"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "18c17a0bdf143809e879682e77c7c4682afd9705": {
      "package": {
        "name": "XOR2-verilog",
        "version": "1.0.2",
        "description": "XOR gate: 2-bits input xor gate. Verilog implementation",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20height=%22193.047%22%20width=%22383.697%22%20version=%221%22%3E%3Cpath%20d=%22M175.56%20189.047H84.527s30.345-42.538%2031.086-94.03c.743-51.49-31.821-90.294-31.821-90.294l92.317-.394c46.445%201.948%20103.899%2053.44%20123.047%2093.678-32.601%2067.503-92.158%2089.79-123.596%2091.04z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2047.62h99.605M4.883%20145.497h100.981M298.57%2099.219h81.07%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20x=%22129.011%22%20y=%22115.285%22%20font-size=%2258.24%22%20font-weight=%22400%22%20style=%22line-height:125%25%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%20transform=%22translate(0%20.329)%22%3E%3Ctspan%20x=%22129.011%22%20y=%22115.285%22%20font-weight=%22700%22%3EXOR%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M54.321%20188.368s30.345-42.538%2031.086-94.03c.742-51.49-31.821-90.294-31.821-90.294%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 120,
                "y": 48
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 560,
                "y": 72
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 120,
                "y": 104
              }
            },
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "//-- XOR gate\n//-- Verilog implementation\n\nassign c = a ^ b;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    },
                    {
                      "name": "b"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 272,
                "height": 112
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "97b51945-d716-4b6c-9db9-970d08541249",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "b"
              }
            },
            {
              "source": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "d30ca9ee4f35f6cb76d5e5701447fc2b739bc640": {
      "package": {
        "name": "bit-0",
        "version": "0.2",
        "description": "Constant bit 0",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22125.776%22%20height=%22197.727%22%20viewBox=%220%200%20110.54641%20173.78236%22%3E%3Cpath%20d=%22M69.664%20107.353l13.494%2029.374L70.719%20168.5l13.788%204.283m-42.761-62.916S38.148%20136.825%2033.22%20139C28.298%20141.18%201%20161.403%201%20161.403l8.729%2010.636%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cg%20style=%22line-height:0%25%22%3E%3Cpath%20d=%22M65.536%2024.562q-9.493%200-15.876%208.251-6.303%208.156-8.855%2023.604-2.553%2015.448%201.037%2023.7%203.59%208.155%2013.084%208.155%209.334%200%2015.636-8.155%206.383-8.252%208.936-23.7%202.553-15.448-1.037-23.604-3.59-8.251-12.925-8.251zm4.07-24.564q23.056%200%2033.507%2014.969%2010.53%2014.968%206.143%2041.45-4.388%2026.482-19.865%2041.45-15.478%2014.968-38.534%2014.968-23.136%200-33.667-14.968Q6.659%2082.9%2011.047%2056.417q4.387-26.482%2019.865-41.45Q46.469-.002%2069.605-.002z%22%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold%20Italic'%22%20font-style=%22italic%22%20font-weight=%22700%22%20font-size=%22179.184%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3d584b0a-29eb-47af-8c43-c0822282ef05",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 456,
                "y": 120
              }
            },
            {
              "id": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
              "type": "basic.code",
              "data": {
                "code": "//-- Constant bit-0\nassign q = 1'b0;\n\n",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 168,
                "y": 112
              },
              "size": {
                "width": 248,
                "height": 80
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
                "port": "q"
              },
              "target": {
                "block": "3d584b0a-29eb-47af-8c43-c0822282ef05",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}
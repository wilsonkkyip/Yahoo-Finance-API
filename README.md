Yahoo Finance API
================

## Introduction

Yahoo Finance offers a list of free APIs to provide various data for the
financial markets and products in their
[website](https://finance.yahoo.com/). The official specification of the
APIs was never released. But recently, A website uses the name
`yahoofinanceapi` as domain name and provide the API service with
different subscription plan. They also provide their API specification
from their [website](https://www.yahoofinanceapi.com/). Below shows
their API specification JSON.

<details>
<summary>
Click to expend the specification JSON (very long)
</summary>

``` json
{
  "openapi": "3.0.3",
  "info": {
    "title": "Yahoo Finance API Specification",
    "description": "Real time low latency Yahoo Finance API for stock market, crypto currencies, and currency exchange",
    "version": "1.0.0"
  },
  "servers": [
    {
      "url": "https://yfapi.net",
      "description": "Base URL"
    }
  ],
  "tags": [
    {
      "name": "API"
    }
  ],
  "paths": {
    "/v6/finance/quote": {
      "get": {
        "tags": [
          "API"
        ],
        "parameters": [
          {
            "name": "region",
            "in": "query",
            "required": false,
            "description": "`US` `AU` `CA` `FR` `DE` `HK` `IT` `ES` `GB` `IN`",
            "schema": {
              "type": "string",
              "example": "US"
            }
          },
          {
            "name": "lang",
            "in": "query",
            "required": false,
            "description": "`en` `fr` `de` `it` `es` `zh`",
            "schema": {
              "type": "string",
              "example": "en"
            }
          },
          {
            "name": "symbols",
            "in": "query",
            "required": true,
            "description": "Multiple symbols separated by commas. Max is 10",
            "schema": {
              "type": "string",
              "example": "AAPL,BTC-USD,EURUSD=X"
            }
          }
        ],
        "operationId": "quotes",
        "description": "Real time quote data for stocks, ETFs, mutuals funds, etc…",
        "responses": {
          "200": {
                "content": {
                  "application/json": {
                    "examples": {
                      "Response": {
                        "description": "",
                        "summary": "response",
                        "value": {
                          "quoteResponse": {
                            "error": null,
                            "result": [
                              {
                                "ask": 117.27,
                                "askSize": 8,
                                "averageDailyVolume10Day": 233119800,
                                "averageDailyVolume3Month": 170533131,
                                "bid": 117.25,
                                "bidSize": 22,
                                "bookValue": 4.218,
                                "currency": "USD",
                                "displayName": "Apple",
                                "dividendDate": 1597276800,
                                "earningsTimestamp": 1596126600,
                                "earningsTimestampEnd": 1604318400,
                                "earningsTimestampStart": 1603882740,
                                "epsCurrentYear": 3.23,
                                "epsForward": 3.86,
                                "epsTrailingTwelveMonths": 3.296,
                                "esgPopulated": false,
                                "exchange": "NMS",
                                "exchangeDataDelayedBy": 0,
                                "exchangeTimezoneName": "America/New_York",
                                "exchangeTimezoneShortName": "EDT",
                                "fiftyDayAverage": 112.823425,
                                "fiftyDayAverageChange": 4.4965744,
                                "fiftyDayAverageChangePercent": 0.03985497,
                                "fiftyTwoWeekHigh": 137.98,
                                "fiftyTwoWeekHighChange": -20.659996,
                                "fiftyTwoWeekHighChangePercent": -0.14973181,
                                "fiftyTwoWeekLow": 53.1525,
                                "fiftyTwoWeekLowChange": 64.167496,
                                "fiftyTwoWeekLowChangePercent": 1.2072338,
                                "fiftyTwoWeekRange": "53.1525 - 137.98",
                                "financialCurrency": "USD",
                                "firstTradeDateMilliseconds": 345479400000,
                                "forwardPE": 30.393784,
                                "fullExchangeName": "NasdaqGS",
                                "gmtOffSetMilliseconds": -14400000,
                                "language": "en-US",
                                "longName": "Apple Inc.",
                                "market": "us_market",
                                "marketCap": 2006465249280,
                                "marketState": "POST",
                                "messageBoardId": "finmb_24937",
                                "postMarketChange": -0.25,
                                "postMarketChangePercent": -0.2130924,
                                "postMarketPrice": 117.07,
                                "postMarketTime": 1599686591,
                                "priceEpsCurrentYear": 36.32198,
                                "priceHint": 2,
                                "priceToBook": 27.81413,
                                "quoteSourceName": "Nasdaq Real Time Price",
                                "quoteType": "EQUITY",
                                "region": "US",
                                "regularMarketChange": 4.5,
                                "regularMarketChangePercent": 3.9886546,
                                "regularMarketDayHigh": 119.14,
                                "regularMarketDayLow": 115.26,
                                "regularMarketDayRange": "115.26 - 119.14",
                                "regularMarketOpen": 117.26,
                                "regularMarketPreviousClose": 112.82,
                                "regularMarketPrice": 117.32,
                                "regularMarketTime": 1599681602,
                                "regularMarketVolume": 168404235,
                                "sharesOutstanding": 17102499840,
                                "shortName": "Apple Inc.",
                                "sourceInterval": 15,
                                "symbol": "AAPL",
                                "tradeable": false,
                                "trailingAnnualDividendRate": 0.782,
                                "trailingAnnualDividendYield": 0.0069313953,
                                "trailingPE": 35.59466,
                                "triggerable": true,
                                "twoHundredDayAverage": 85.99835,
                                "twoHundredDayAverageChange": 31.321648,
                                "twoHundredDayAverageChangePercent": 0.3642122
                              },
                              {
                                "ask": 211.63,
                                "askSize": 9,
                                "averageDailyVolume10Day": 43250000,
                                "averageDailyVolume3Month": 35562815,
                                "bid": 211.25,
                                "bidSize": 9,
                                "bookValue": 15.626,
                                "currency": "USD",
                                "displayName": "Microsoft",
                                "dividendDate": 1599696000,
                                "earningsTimestamp": 1595434164,
                                "earningsTimestampEnd": 1603742400,
                                "earningsTimestampStart": 1603310400,
                                "epsCurrentYear": 6.46,
                                "epsForward": 7.34,
                                "epsTrailingTwelveMonths": 5.76,
                                "esgPopulated": false,
                                "exchange": "NMS",
                                "exchangeDataDelayedBy": 0,
                                "exchangeTimezoneName": "America/New_York",
                                "exchangeTimezoneShortName": "EDT",
                                "fiftyDayAverage": 212.50658,
                                "fiftyDayAverageChange": -1.2165833,
                                "fiftyDayAverageChangePercent": -0.0057249204,
                                "fiftyTwoWeekHigh": 232.86,
                                "fiftyTwoWeekHighChange": -21.570007,
                                "fiftyTwoWeekHighChangePercent": -0.092630796,
                                "fiftyTwoWeekLow": 132.52,
                                "fiftyTwoWeekLowChange": 78.76999,
                                "fiftyTwoWeekLowChangePercent": 0.59440076,
                                "fiftyTwoWeekRange": "132.52 - 232.86",
                                "financialCurrency": "USD",
                                "firstTradeDateMilliseconds": 511108200000,
                                "forwardPE": 28.786102,
                                "fullExchangeName": "NasdaqGS",
                                "gmtOffSetMilliseconds": -14400000,
                                "language": "en-US",
                                "longName": "Microsoft Corporation",
                                "market": "us_market",
                                "marketCap": 1598968692736,
                                "marketState": "POST",
                                "messageBoardId": "finmb_21835",
                                "postMarketChange": -61.5672,
                                "postMarketChangePercent": -29.13872,
                                "postMarketPrice": 149.7228,
                                "postMarketTime": 1599686588,
                                "priceEpsCurrentYear": 32.707428,
                                "priceHint": 2,
                                "priceToBook": 13.521694,
                                "quoteSourceName": "Nasdaq Real Time Price",
                                "quoteType": "EQUITY",
                                "region": "US",
                                "regularMarketChange": 8.62999,
                                "regularMarketChangePercent": 4.2583585,
                                "regularMarketDayHigh": 214.8399,
                                "regularMarketDayLow": 206.7,
                                "regularMarketDayRange": "206.7 - 214.8399",
                                "regularMarketOpen": 207.6,
                                "regularMarketPreviousClose": 202.66,
                                "regularMarketPrice": 211.29,
                                "regularMarketTime": 1599681601,
                                "regularMarketVolume": 43764495,
                                "sharesOutstanding": 7567649792,
                                "shortName": "Microsoft Corporation",
                                "sourceInterval": 15,
                                "symbol": "MSFT",
                                "tradeable": false,
                                "trailingAnnualDividendRate": 2.04,
                                "trailingAnnualDividendYield": 0.01006612,
                                "trailingPE": 36.68229,
                                "triggerable": true,
                                "twoHundredDayAverage": 186.7529,
                                "twoHundredDayAverageChange": 24.537094,
                                "twoHundredDayAverageChangePercent": 0.13138802
                              }
                            ]
                          }
                        }
                      }
                    }
                  }
                },
                "description": ""
              }
        }
      }
    },
    "/v7/finance/options/{symbol}": {
      "get": {
        "tags": [
          "API"
        ],
        "parameters": [
          {
            "name": "date",
            "in": "query",
            "required": false,
            "description": "example: 1510876800",
            "schema": {
              "type": "number"
            }
          },
          {
            "name": "symbol",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string",
              "example": "AAPL",
              "properties": {
                "symbol": {
                  "type": "string",
                  "example": "AAPL"
                }
              }
            }
          }
        ],
        "operationId": "options",
        "description": "Get option chain for a particular symbol",
        "responses": {
          "200": {
                "content": {
                  "application/json": {
                    "examples": {
                      "Response": {
                        "description": "",
                        "summary": "response",
                        "value": {
                          "optionChain": {
                            "error": null,
                            "result": [
                              {
                                "expirationDates": [
                                  1599782400,
                                  1600387200,
                                  1600992000,
                                  1601596800,
                                  1602201600,
                                  1602806400,
                                  1603411200,
                                  1605830400,
                                  1608249600,
                                  1610668800,
                                  1616112000,
                                  1618531200,
                                  1623974400,
                                  1631836800,
                                  1642723200,
                                  1655424000,
                                  1663286400
                                ],
                                "hasMiniOptions": false,
                                "options": [
                                  {
                                    "calls": [
                                      {
                                        "ask": 65.15,
                                        "bid": 64.35,
                                        "change": 3.3999977,
                                        "contractSize": "REGULAR",
                                        "contractSymbol": "AAPL200911C00052500",
                                        "currency": "USD",
                                        "expiration": 1599782400,
                                        "impliedVolatility": 4.597660502929687,
                                        "inTheMoney": true,
                                        "lastPrice": 64.6,
                                        "lastTradeDate": 1599680842,
                                        "openInterest": 275,
                                        "percentChange": 5.555552,
                                        "strike": 52.5,
                                        "volume": 143
                                      },
                                      {
                                        "ask": 63.9,
                                        "bid": 63.1,
                                        "change": 4.199997,
                                        "contractSize": "REGULAR",
                                        "contractSymbol": "AAPL200911C00053750",
                                        "currency": "USD",
                                        "expiration": 1599782400,
                                        "impliedVolatility": 4.476566904296874,
                                        "inTheMoney": true,
                                        "lastPrice": 64.2,
                                        "lastTradeDate": 1599681239,
                                        "openInterest": 261,
                                        "percentChange": 6.9999948,
                                        "strike": 53.75,
                                        "volume": 147
                                      }
                                    ],
                                    "expirationDate": 1599782400,
                                    "hasMiniOptions": false,
                                    "puts": [
                                      {
                                        "ask": 0.01,
                                        "bid": 0,
                                        "change": 0,
                                        "contractSize": "REGULAR",
                                        "contractSymbol": "AAPL200911P00052500",
                                        "currency": "USD",
                                        "expiration": 1599782400,
                                        "impliedVolatility": 2.8750028125,
                                        "inTheMoney": false,
                                        "lastPrice": 0.01,
                                        "lastTradeDate": 1599589974,
                                        "openInterest": 1143,
                                        "percentChange": 0,
                                        "strike": 52.5,
                                        "volume": 53
                                      },
                                      {
                                        "ask": 0.01,
                                        "bid": 0,
                                        "change": 0,
                                        "contractSize": "REGULAR",
                                        "contractSymbol": "AAPL200911P00053750",
                                        "currency": "USD",
                                        "expiration": 1599782400,
                                        "impliedVolatility": 2.750003125,
                                        "inTheMoney": false,
                                        "lastPrice": 0.01,
                                        "lastTradeDate": 1599246781,
                                        "openInterest": 40,
                                        "percentChange": 0,
                                        "strike": 53.75,
                                        "volume": 28
                                      }
                                    ]
                                  }
                                ],
                                "quote": {
                                  "ask": 117.27,
                                  "askSize": 8,
                                  "averageDailyVolume10Day": 233119800,
                                  "averageDailyVolume3Month": 170533131,
                                  "bid": 117.25,
                                  "bidSize": 22,
                                  "bookValue": 4.218,
                                  "currency": "USD",
                                  "displayName": "Apple",
                                  "dividendDate": 1597276800,
                                  "earningsTimestamp": 1596126600,
                                  "earningsTimestampEnd": 1604318400,
                                  "earningsTimestampStart": 1603882740,
                                  "epsCurrentYear": 3.23,
                                  "epsForward": 3.86,
                                  "epsTrailingTwelveMonths": 3.296,
                                  "esgPopulated": false,
                                  "exchange": "NMS",
                                  "exchangeDataDelayedBy": 0,
                                  "exchangeTimezoneName": "America/New_York",
                                  "exchangeTimezoneShortName": "EDT",
                                  "fiftyDayAverage": 112.823425,
                                  "fiftyDayAverageChange": 4.4965744,
                                  "fiftyDayAverageChangePercent": 0.03985497,
                                  "fiftyTwoWeekHigh": 137.98,
                                  "fiftyTwoWeekHighChange": -20.659996,
                                  "fiftyTwoWeekHighChangePercent": -0.14973181,
                                  "fiftyTwoWeekLow": 53.1525,
                                  "fiftyTwoWeekLowChange": 64.167496,
                                  "fiftyTwoWeekLowChangePercent": 1.2072338,
                                  "fiftyTwoWeekRange": "53.1525 - 137.98",
                                  "financialCurrency": "USD",
                                  "firstTradeDateMilliseconds": 345479400000,
                                  "forwardPE": 30.393784,
                                  "fullExchangeName": "NasdaqGS",
                                  "gmtOffSetMilliseconds": -14400000,
                                  "language": "en-US",
                                  "longName": "Apple Inc.",
                                  "market": "us_market",
                                  "marketCap": 2006465249280,
                                  "marketState": "POST",
                                  "messageBoardId": "finmb_24937",
                                  "postMarketChange": -0.20999908,
                                  "postMarketChangePercent": -0.17899683,
                                  "postMarketPrice": 117.11,
                                  "postMarketTime": 1599686868,
                                  "priceEpsCurrentYear": 36.32198,
                                  "priceHint": 2,
                                  "priceToBook": 27.81413,
                                  "quoteSourceName": "Nasdaq Real Time Price",
                                  "quoteType": "EQUITY",
                                  "region": "US",
                                  "regularMarketChange": 4.5,
                                  "regularMarketChangePercent": 3.9886546,
                                  "regularMarketDayHigh": 119.14,
                                  "regularMarketDayLow": 115.26,
                                  "regularMarketDayRange": "115.26 - 119.14",
                                  "regularMarketOpen": 117.26,
                                  "regularMarketPreviousClose": 112.82,
                                  "regularMarketPrice": 117.32,
                                  "regularMarketTime": 1599681602,
                                  "regularMarketVolume": 168404235,
                                  "sharesOutstanding": 17102499840,
                                  "shortName": "Apple Inc.",
                                  "sourceInterval": 15,
                                  "symbol": "AAPL",
                                  "tradeable": false,
                                  "trailingAnnualDividendRate": 0.782,
                                  "trailingAnnualDividendYield": 0.0069313953,
                                  "trailingPE": 35.59466,
                                  "triggerable": true,
                                  "twoHundredDayAverage": 85.99835,
                                  "twoHundredDayAverageChange": 31.321648,
                                  "twoHundredDayAverageChangePercent": 0.3642122
                                },
                                "strikes": [
                                  52.5,
                                  53.75,
                                  55,
                                  56.25,
                                  57.5,
                                  58.75,
                                  60,
                                  61.25,
                                  62.5,
                                  63.75,
                                  65,
                                  66.25,
                                  67.5,
                                  68.75,
                                  70,
                                  71.25,
                                  72.5,
                                  73.75,
                                  75,
                                  76.25,
                                  77.5,
                                  78.75,
                                  80,
                                  81.25,
                                  82.5,
                                  83.75,
                                  85,
                                  86.25,
                                  87.5,
                                  88.75,
                                  90,
                                  91.25,
                                  92.5,
                                  93.75,
                                  95,
                                  96.25,
                                  97.5,
                                  98.75,
                                  100,
                                  101.25,
                                  102.5,
                                  103.75,
                                  105,
                                  106.25,
                                  107.5,
                                  108.75,
                                  110,
                                  111.25,
                                  112.5,
                                  113.75,
                                  115,
                                  116.25,
                                  117.5,
                                  118.75,
                                  120,
                                  121.25,
                                  122.5,
                                  123.75,
                                  125,
                                  126.25,
                                  127.5,
                                  128.75,
                                  130,
                                  131.25,
                                  132.5,
                                  133.75,
                                  135,
                                  136.25,
                                  137.5,
                                  138.75,
                                  140,
                                  141.25,
                                  142.5,
                                  143.75,
                                  145,
                                  146,
                                  147.5,
                                  149,
                                  150,
                                  152.5,
                                  155,
                                  157.5,
                                  160,
                                  162.5,
                                  165,
                                  167.5,
                                  170,
                                  172.5,
                                  175,
                                  177.5,
                                  180,
                                  182.5,
                                  185,
                                  190,
                                  210,
                                  215,
                                  220,
                                  225,
                                  230,
                                  235,
                                  240,
                                  245,
                                  250,
                                  255,
                                  260,
                                  265,
                                  270,
                                  275,
                                  280,
                                  285,
                                  290,
                                  295,
                                  300,
                                  305,
                                  310,
                                  315,
                                  320,
                                  325,
                                  330,
                                  335,
                                  340,
                                  345,
                                  350,
                                  355,
                                  360,
                                  365,
                                  370,
                                  375,
                                  380,
                                  385,
                                  390,
                                  395,
                                  400,
                                  405,
                                  410,
                                  415,
                                  420,
                                  425,
                                  430,
                                  435,
                                  440,
                                  445,
                                  450,
                                  455,
                                  460,
                                  465,
                                  470,
                                  475,
                                  480,
                                  485,
                                  490,
                                  495,
                                  500,
                                  505,
                                  510,
                                  515,
                                  520,
                                  525,
                                  530,
                                  535,
                                  540,
                                  545,
                                  550,
                                  555,
                                  560,
                                  565,
                                  570,
                                  575,
                                  580,
                                  590,
                                  600,
                                  610,
                                  620,
                                  630,
                                  640,
                                  650,
                                  660,
                                  670,
                                  680,
                                  690,
                                  700,
                                  710,
                                  720,
                                  730
                                ],
                                "underlyingSymbol": "AAPL"
                              }
                            ]
                          }
                        }
                      }
                    }
                  }
                },
                "description": ""
              }
        }
      }
    },
    "/v8/finance/spark": {
      "get": {
        "tags": [
          "API"
        ],
        "parameters": [
          {
            "name": "interval",
            "in": "query",
            "required": false,
            "description": "`1m` `5m` `15m` `1d` `1wk` `1mo`",
            "schema": {
              "type": "string",
              "example": "1d"
            }
          },
          {
            "name": "range",
            "in": "query",
            "required": false,
            "description": "`1d` `5d` `1mo` `3mo` `6mo` `1y` `5y` `max`",
            "schema": {
              "type": "string",
              "example": "1mo"
            }
          },
          {
            "name": "symbols",
            "in": "query",
            "required": true,
            "description": "Separated by comm. Max 10",
            "schema": {
              "type": "string",
              "example": "AAPL,MSFT"
            }
          }
        ],
        "operationId": "history",
        "description": "Stock history",
        "responses": {
          "200": {
                "content": {
                  "application/json": {
                    "examples": {
                      "Response": {
                        "description": "",
                        "summary": "response",
                        "value": {
                          "MSFT": {
                            "previousClose": null,
                            "symbol": "MSFT",
                            "chartPreviousClose": 252.46,
                            "timestamp": [
                              1620653400,
                              1620739800,
                              1620826200,
                              1620912600,
                              1620999000,
                              1621258200,
                              1621344600,
                              1621431000,
                              1621517400,
                              1621603800,
                              1621863000,
                              1621949400,
                              1622035800,
                              1622122200,
                              1622208600,
                              1622554200,
                              1622640600,
                              1622727000,
                              1622813400,
                              1623072600,
                              1623182402
                            ],
                            "close": [
                              247.18,
                              246.23,
                              239,
                              243.03,
                              248.15,
                              245.18,
                              243.08,
                              243.12,
                              246.48,
                              245.17,
                              250.78,
                              251.72,
                              251.49,
                              249.31,
                              249.68,
                              247.4,
                              247.3,
                              245.71,
                              250.79,
                              253.81,
                              252.57
                            ],
                            "end": null,
                            "start": null,
                            "dataGranularity": 300
                          },
                          "AAPL": {
                            "previousClose": null,
                            "symbol": "AAPL",
                            "chartPreviousClose": 130.21,
                            "timestamp": [
                              1620653400,
                              1620739800,
                              1620826200,
                              1620912600,
                              1620999000,
                              1621258200,
                              1621344600,
                              1621431000,
                              1621517400,
                              1621603800,
                              1621863000,
                              1621949400,
                              1622035800,
                              1622122200,
                              1622208600,
                              1622554200,
                              1622640600,
                              1622727000,
                              1622813400,
                              1623072600,
                              1623182403
                            ],
                            "close": [
                              126.85,
                              125.91,
                              122.77,
                              124.97,
                              127.45,
                              126.27,
                              124.85,
                              124.69,
                              127.31,
                              125.43,
                              127.1,
                              126.9,
                              126.85,
                              125.28,
                              124.61,
                              124.28,
                              125.06,
                              123.54,
                              125.89,
                              125.9,
                              126.74
                            ],
                            "end": null,
                            "start": null,
                            "dataGranularity": 300
                          }
                        }
                      }
                    }
                  }
                },
                "description": ""
              }
        }
      }
    },
    "/v11/finance/quoteSummary/{symbol}": {
      "get": {
        "tags": [
          "API"
        ],
        "parameters": [
          {
            "name": "lang",
            "in": "query",
            "required": false,
            "description": "`en` `fr` `de` `it` `es` `zh`",
            "schema": {
              "type": "string",
              "example": "en"
            }
          },
          {
            "name": "region",
            "in": "query",
            "required": false,
            "description": "`US` `AU` `CA` `FR` `DE` `HK` `US` `IT` `ES` `GB` `IN`",
            "schema": {
              "type": "string",
              "example": "US"
            }
          },
          {
            "name": "modules",
            "in": "query",
            "required": true,
            "description": "`summaryDetail` `assetProfile` `fundProfile` `financialData` `defaultKeyStatistics` `calendarEvents` `incomeStatementHistory` `incomeStatementHistoryQuarterly` `cashflowStatementHistory` `balanceSheetHistory` `earnings` `earningsHistory` `insiderHolders` `cashflowStatementHistory` `cashflowStatementHistoryQuarterly` `insiderTransactions` `secFilings` `indexTrend` `sectorTrend` `earningsTrend` `netSharePurchaseActivity` `upgradeDowngradeHistory` `institutionOwnership` `recommendationTrend` `balanceSheetHistory` `balanceSheetHistoryQuarterly` `fundOwnership` `majorDirectHolders` `majorHoldersBreakdown`, `price`, `quoteType`, `esgScores`",
            "schema": {
              "type": "string",
              "example": "defaultKeyStatistics,assetProfile"
            }
          },
          {
            "name": "symbol",
            "in": "path",
            "required": true,
            "description": "A single symbol",
            "schema": {
              "type": "string",
              "example": "AAPL"
            }
          }
        ],
        "operationId": "stock details",
        "description": "Get very detailed information for a particular stock.\n\nThe next portions of data can be retrieved with the service:\n`summaryDetail` `assetProfile` `fundProfile` `financialData` `defaultKeyStatistics` `calendarEvents` `incomeStatementHistory` `incomeStatementHistoryQuarterly` `cashflowStatementHistory` `balanceSheetHistory` `earnings` `earningsHistory` `insiderHolders` `cashflowStatementHistory` `cashflowStatementHistoryQuarterly` `insiderTransactions` `secFilings` `indexTrend` `sectorTrend` `earningsTrend` `netSharePurchaseActivity` `upgradeDowngradeHistory` `institutionOwnership` `recommendationTrend` `balanceSheetHistory` `balanceSheetHistoryQuarterly` `fundOwnership` `majorDirectHolders` `majorHoldersBreakdown`, `price`, `quoteType`, `esgScores`",
        "responses": {
          "200": {
                "content": {
                  "application/json": {
                    "examples": {
                      "Response": {
                        "description": "",
                        "summary": "response",
                        "value": {
                          "quoteSummary": {
                            "error": null,
                            "result": [
                              {
                                "assetProfile": {
                                  "address1": "One Apple Park Way",
                                  "auditRisk": 1,
                                  "boardRisk": 1,
                                  "city": "Cupertino",
                                  "companyOfficers": [
                                    {
                                      "age": 58,
                                      "exercisedValue": {
                                        "fmt": null,
                                        "longFmt": "0",
                                        "raw": 0
                                      },
                                      "fiscalYear": 2019,
                                      "maxAge": 1,
                                      "name": "Mr. Timothy D. Cook",
                                      "title": "CEO & Director",
                                      "totalPay": {
                                        "fmt": "11.56M",
                                        "longFmt": "11,555,466",
                                        "raw": 11555466
                                      },
                                      "unexercisedValue": {
                                        "fmt": null,
                                        "longFmt": "0",
                                        "raw": 0
                                      },
                                      "yearBorn": 1961
                                    },
                                    {
                                      "age": 55,
                                      "exercisedValue": {
                                        "fmt": null,
                                        "longFmt": "0",
                                        "raw": 0
                                      },
                                      "fiscalYear": 2019,
                                      "maxAge": 1,
                                      "name": "Mr. Luca  Maestri",
                                      "title": "CFO & Sr. VP",
                                      "totalPay": {
                                        "fmt": "3.58M",
                                        "longFmt": "3,576,221",
                                        "raw": 3576221
                                      },
                                      "unexercisedValue": {
                                        "fmt": null,
                                        "longFmt": "0",
                                        "raw": 0
                                      },
                                      "yearBorn": 1964
                                    },
                                    {
                                      "age": 55,
                                      "exercisedValue": {
                                        "fmt": null,
                                        "longFmt": "0",
                                        "raw": 0
                                      },
                                      "fiscalYear": 2019,
                                      "maxAge": 1,
                                      "name": "Mr. Jeffrey E. Williams",
                                      "title": "Chief Operating Officer",
                                      "totalPay": {
                                        "fmt": "3.57M",
                                        "longFmt": "3,574,503",
                                        "raw": 3574503
                                      },
                                      "unexercisedValue": {
                                        "fmt": null,
                                        "longFmt": "0",
                                        "raw": 0
                                      },
                                      "yearBorn": 1964
                                    },
                                    {
                                      "age": 55,
                                      "exercisedValue": {
                                        "fmt": null,
                                        "longFmt": "0",
                                        "raw": 0
                                      },
                                      "fiscalYear": 2019,
                                      "maxAge": 1,
                                      "name": "Ms. Katherine L. Adams",
                                      "title": "Sr. VP, Gen. Counsel & Sec.",
                                      "totalPay": {
                                        "fmt": "3.6M",
                                        "longFmt": "3,598,384",
                                        "raw": 3598384
                                      },
                                      "unexercisedValue": {
                                        "fmt": null,
                                        "longFmt": "0",
                                        "raw": 0
                                      },
                                      "yearBorn": 1964
                                    },
                                    {
                                      "age": 52,
                                      "exercisedValue": {
                                        "fmt": null,
                                        "longFmt": "0",
                                        "raw": 0
                                      },
                                      "fiscalYear": 2019,
                                      "maxAge": 1,
                                      "name": "Ms. Deirdre  O'Brien",
                                      "title": "Sr. VP of People & Retail",
                                      "totalPay": {
                                        "fmt": "2.69M",
                                        "longFmt": "2,690,253",
                                        "raw": 2690253
                                      },
                                      "unexercisedValue": {
                                        "fmt": null,
                                        "longFmt": "0",
                                        "raw": 0
                                      },
                                      "yearBorn": 1967
                                    }
                                  ],
                                  "compensationAsOfEpochDate": 1577750400,
                                  "compensationRisk": 3,
                                  "country": "United States",
                                  "fullTimeEmployees": 137000,
                                  "governanceEpochDate": 1575849600,
                                  "industry": "Consumer Electronics",
                                  "longBusinessSummary": "Apple Inc. designs, manufactures, and markets smartphones, personal computers, tablets, wearables, and accessories worldwide. It also sells various related services. The company offers iPhone, a line of smartphones; Mac, a line of personal computers; iPad, a line of multi-purpose tablets; and wearables, home, and accessories comprising AirPods, Apple TV, Apple Watch, Beats products, HomePod, iPod touch, and other Apple-branded and third-party accessories. It also provides digital content stores and streaming services; AppleCare support services; and iCloud, a cloud service, which stores music, photos, contacts, calendars, mail, documents, and others. In addition, the company offers various service, such as Apple Arcade, a game subscription service; Apple Card, a co-branded credit card; Apple News+, a subscription news and magazine service; and Apple Pay, a cashless payment service, as well as licenses its intellectual property, and provides other related services. The company serves consumers, and small and mid-sized businesses; and the education, enterprise, and government markets. It sells and delivers third-party applications for its products through the App Store, Mac App Store, and Watch App Store. The company also sells its products through its retail and online stores, and direct sales force; and third-party cellular network carriers, wholesalers, retailers, and resellers. Apple Inc. has a collaboration with Google to develop COVID-19 tracking system for Android and iOS devices. Apple Inc. was founded in 1977 and is headquartered in Cupertino, California.",
                                  "maxAge": 86400,
                                  "overallRisk": 1,
                                  "phone": "408-996-1010",
                                  "sector": "Technology",
                                  "shareHolderRightsRisk": 1,
                                  "state": "CA",
                                  "website": "http://www.apple.com",
                                  "zip": "95014"
                                },
                                "defaultKeyStatistics": {
                                  "52WeekChange": {
                                    "fmt": "101.83%",
                                    "raw": 1.0183372
                                  },
                                  "SandP52WeekChange": {
                                    "fmt": "11.03%",
                                    "raw": 0.11026919
                                  },
                                  "annualHoldingsTurnover": {},
                                  "annualReportExpenseRatio": {},
                                  "beta": {
                                    "fmt": "1.28",
                                    "raw": 1.284838
                                  },
                                  "beta3Year": {},
                                  "bookValue": {
                                    "fmt": "4.22",
                                    "raw": 4.218
                                  },
                                  "category": null,
                                  "dateShortInterest": {
                                    "fmt": "2020-08-14",
                                    "raw": 1597363200
                                  },
                                  "earningsQuarterlyGrowth": {
                                    "fmt": "12.00%",
                                    "raw": 0.12
                                  },
                                  "enterpriseToEbitda": {
                                    "fmt": "24.90",
                                    "raw": 24.897
                                  },
                                  "enterpriseToRevenue": {
                                    "fmt": "7.15",
                                    "raw": 7.152
                                  },
                                  "enterpriseValue": {
                                    "fmt": "1.96T",
                                    "longFmt": "1,958,669,058,048",
                                    "raw": 1958669058048
                                  },
                                  "fiveYearAverageReturn": {},
                                  "floatShares": {
                                    "fmt": "17.09B",
                                    "longFmt": "17,085,433,464",
                                    "raw": 17085433464
                                  },
                                  "forwardEps": {
                                    "fmt": "3.86",
                                    "raw": 3.86
                                  },
                                  "forwardPE": {
                                    "fmt": "30.39",
                                    "raw": 30.393784
                                  },
                                  "fundFamily": null,
                                  "fundInceptionDate": {},
                                  "heldPercentInsiders": {
                                    "fmt": "0.07%",
                                    "raw": 0.00066
                                  },
                                  "heldPercentInstitutions": {
                                    "fmt": "62.12%",
                                    "raw": 0.62115
                                  },
                                  "lastCapGain": {},
                                  "lastDividendValue": {},
                                  "lastFiscalYearEnd": {
                                    "fmt": "2019-09-28",
                                    "raw": 1569628800
                                  },
                                  "lastSplitDate": {
                                    "fmt": "2020-08-31",
                                    "raw": 1598832000
                                  },
                                  "lastSplitFactor": "4:1",
                                  "legalType": null,
                                  "maxAge": 1,
                                  "morningStarOverallRating": {},
                                  "morningStarRiskRating": {},
                                  "mostRecentQuarter": {
                                    "fmt": "2020-06-27",
                                    "raw": 1593216000
                                  },
                                  "netIncomeToCommon": {
                                    "fmt": "58.42B",
                                    "longFmt": "58,424,000,512",
                                    "raw": 58424000512
                                  },
                                  "nextFiscalYearEnd": {
                                    "fmt": "2021-09-28",
                                    "raw": 1632787200
                                  },
                                  "pegRatio": {
                                    "fmt": "2.80",
                                    "raw": 2.8
                                  },
                                  "priceHint": {
                                    "fmt": "2",
                                    "longFmt": "2",
                                    "raw": 2
                                  },
                                  "priceToBook": {
                                    "fmt": "27.81",
                                    "raw": 27.81413
                                  },
                                  "priceToSalesTrailing12Months": {},
                                  "profitMargins": {
                                    "fmt": "21.33%",
                                    "raw": 0.21334
                                  },
                                  "revenueQuarterlyGrowth": {},
                                  "sharesOutstanding": {
                                    "fmt": "17.1B",
                                    "longFmt": "17,102,499,840",
                                    "raw": 17102499840
                                  },
                                  "sharesPercentSharesOut": {
                                    "fmt": "0.55%",
                                    "raw": 0.0055
                                  },
                                  "sharesShort": {
                                    "fmt": "94.64M",
                                    "longFmt": "94,635,016",
                                    "raw": 94635016
                                  },
                                  "sharesShortPreviousMonthDate": {
                                    "fmt": "2020-07-15",
                                    "raw": 1594771200
                                  },
                                  "sharesShortPriorMonth": {
                                    "fmt": "140.94M",
                                    "longFmt": "140,938,424",
                                    "raw": 140938424
                                  },
                                  "shortPercentOfFloat": {
                                    "fmt": "0.55%",
                                    "raw": 0.0055
                                  },
                                  "shortRatio": {
                                    "fmt": "0.57",
                                    "raw": 0.57
                                  },
                                  "threeYearAverageReturn": {},
                                  "totalAssets": {},
                                  "trailingEps": {
                                    "fmt": "3.30",
                                    "raw": 3.296
                                  },
                                  "yield": {},
                                  "ytdReturn": {}
                                }
                              }
                            ]
                          }
                        }
                      }
                    }
                  }
                },
                "description": ""
              }
        }
      }
    },
    "/v8/finance/chart/{ticker}": {
      "get": {
        "tags": [
          "API"
        ],
        "parameters": [
          {
            "name": "comparisons",
            "in": "query",
            "required": false,
            "description": "The tickers for comparison separated by comma. Max 10 tickers",
            "schema": {
              "type": "string",
              "example": "MSFT,^VIX"
            }
          },
          {
            "name": "range",
            "in": "query",
            "required": false,
            "description": "`1d` `5d` `1mo` `3mo` `6mo` `1y` `5y` `10y` `ytd` `max`",
            "schema": {
              "type": "string",
              "example": "1mo"
            }
          },
          {
            "name": "region",
            "in": "query",
            "required": false,
            "description": "`US` `AU` `CA` `FR` `DE` `HK` `US` `IT` `ES` `GB` `IN`",
            "schema": {
              "type": "string",
              "example": "US"
            }
          },
          {
            "name": "interval",
            "in": "query",
            "required": false,
            "description": "`1m` `5m` `15m` `1d` `1wk` `1mo`",
            "schema": {
              "type": "string",
              "example": "1d"
            }
          },
          {
            "name": "lang",
            "in": "query",
            "required": false,
            "description": "`en` `fr` `de` `it` `es` `zh`",
            "schema": {
              "type": "string",
              "example": "en"
            }
          },
          {
            "name": "events",
            "in": "query",
            "required": false,
            "schema": {
              "type": "string",
              "example": "div,split"
            }
          },
          {
            "name": "ticker",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string",
              "example": "AAPL"
            }
          }
        ],
        "operationId": "chart",
        "description": "Get chart data by ticker",
        "responses": {
          "200": {
                "description": "",
                "content": {
                  "application/json": {
                    "examples": {
                      "Response": {
                        "description": "",
                        "summary": "response",
                        "value": {
                          "chart": {
                            "result": [
                              {
                                "meta": {
                                  "currency": "USD",
                                  "symbol": "AAPL",
                                  "exchangeName": "NMS",
                                  "instrumentType": "EQUITY",
                                  "firstTradeDate": 345479400,
                                  "regularMarketTime": 1623182403,
                                  "gmtoffset": -14400,
                                  "timezone": "EDT",
                                  "exchangeTimezoneName": "America/New_York",
                                  "regularMarketPrice": 126.74,
                                  "chartPreviousClose": 130.21,
                                  "priceHint": 2,
                                  "currentTradingPeriod": {
                                    "pre": {
                                      "timezone": "EDT",
                                      "start": 1623139200,
                                      "end": 1623159000,
                                      "gmtoffset": -14400
                                    },
                                    "regular": {
                                      "timezone": "EDT",
                                      "start": 1623159000,
                                      "end": 1623182400,
                                      "gmtoffset": -14400
                                    },
                                    "post": {
                                      "timezone": "EDT",
                                      "start": 1623182400,
                                      "end": 1623196800,
                                      "gmtoffset": -14400
                                    }
                                  },
                                  "dataGranularity": "1d",
                                  "range": "1mo",
                                  "validRanges": [
                                    "5d",
                                    "1y",
                                    "6mo",
                                    "1d",
                                    "2y",
                                    "5y",
                                    "ytd",
                                    "1mo",
                                    "10y",
                                    "3mo",
                                    "max"
                                  ]
                                },
                                "timestamp": [
                                  1620653400,
                                  1620739800,
                                  1620826200,
                                  1620912600,
                                  1620999000,
                                  1621258200,
                                  1621344600,
                                  1621431000,
                                  1621517400,
                                  1621603800,
                                  1621863000,
                                  1621949400,
                                  1622035800,
                                  1622122200,
                                  1622208600,
                                  1622554200,
                                  1622640600,
                                  1622727000,
                                  1622813400,
                                  1623072600,
                                  1623182403
                                ],
                                "comparisons": [
                                  {
                                    "symbol": "MSFT",
                                    "high": [
                                      251.73,
                                      246.6,
                                      244.38,
                                      245.6,
                                      249.18,
                                      246.59,
                                      246.41,
                                      243.23,
                                      247.95,
                                      248.33,
                                      251.16,
                                      252.75,
                                      252.94,
                                      251.48,
                                      252.08,
                                      251.29,
                                      249.27,
                                      246.34,
                                      251.65,
                                      254.09,
                                      256.01
                                    ],
                                    "low": [
                                      247.12,
                                      242.57,
                                      238.07,
                                      241.42,
                                      245.49,
                                      243.52,
                                      242.9,
                                      238.6,
                                      243.86,
                                      244.74,
                                      247.51,
                                      250.82,
                                      250.75,
                                      249.25,
                                      249.56,
                                      246.96,
                                      245.84,
                                      243,
                                      247.51,
                                      249.81,
                                      252.515
                                    ],
                                    "chartPreviousClose": 252.46,
                                    "close": [
                                      247.18,
                                      246.23,
                                      239,
                                      243.03,
                                      248.15,
                                      245.18,
                                      243.08,
                                      243.12,
                                      246.48,
                                      245.17,
                                      250.78,
                                      251.72,
                                      251.49,
                                      249.31,
                                      249.68,
                                      247.4,
                                      247.3,
                                      245.71,
                                      250.79,
                                      253.81,
                                      252.57
                                    ],
                                    "open": [
                                      250.87,
                                      244.55,
                                      242.17,
                                      241.8,
                                      245.58,
                                      246.55,
                                      246.27,
                                      239.31,
                                      243.96,
                                      247.57,
                                      247.79,
                                      251.77,
                                      251.43,
                                      251.17,
                                      251,
                                      251.23,
                                      248.13,
                                      245.22,
                                      247.76,
                                      249.98,
                                      255.16
                                    ]
                                  },
                                  {
                                    "symbol": "^VIX",
                                    "high": [
                                      19.75,
                                      23.73,
                                      28.38,
                                      28.93,
                                      22.1,
                                      21.58,
                                      21.45,
                                      25.96,
                                      23.5,
                                      20.89,
                                      20.51,
                                      19.29,
                                      18.92,
                                      18.17,
                                      16.86,
                                      18.53,
                                      18.31,
                                      19.27,
                                      18.42,
                                      17.35,
                                      17.75
                                    ],
                                    "low": [
                                      17.07,
                                      20.71,
                                      21.66,
                                      22.23,
                                      18.66,
                                      19.67,
                                      18.81,
                                      21.88,
                                      20.19,
                                      19.53,
                                      18.38,
                                      16.87,
                                      17.35,
                                      16.52,
                                      15.9,
                                      15.68,
                                      16.74,
                                      17.45,
                                      16.18,
                                      15.78,
                                      15.15
                                    ],
                                    "chartPreviousClose": 16.69,
                                    "close": [
                                      19.66,
                                      21.84,
                                      27.59,
                                      23.13,
                                      18.81,
                                      19.72,
                                      21.34,
                                      22.18,
                                      20.67,
                                      20.15,
                                      18.4,
                                      18.84,
                                      17.36,
                                      16.74,
                                      16.76,
                                      17.9,
                                      17.48,
                                      18.04,
                                      16.42,
                                      16.42,
                                      17.07
                                    ],
                                    "open": [
                                      17.34,
                                      21.17,
                                      22.42,
                                      26.03,
                                      21.77,
                                      19.89,
                                      18.89,
                                      22.46,
                                      22.33,
                                      20.42,
                                      20.5,
                                      18.35,
                                      18.37,
                                      18.03,
                                      16.8,
                                      17.24,
                                      17.86,
                                      17.73,
                                      18.09,
                                      17.34,
                                      16.58
                                    ]
                                  }
                                ],
                                "indicators": {
                                  "quote": [
                                    {
                                      "low": [
                                        126.80999755859375,
                                        122.7699966430664,
                                        122.25,
                                        124.26000213623047,
                                        125.8499984741211,
                                        125.16999816894531,
                                        124.77999877929688,
                                        122.86000061035156,
                                        125.0999984741211,
                                        125.20999908447266,
                                        125.94000244140625,
                                        126.31999969482422,
                                        126.41999816894531,
                                        125.08000183105469,
                                        124.55000305175781,
                                        123.94000244140625,
                                        124.05000305175781,
                                        123.12999725341797,
                                        123.8499984741211,
                                        124.83000183105469,
                                        126.21009826660156
                                      ],
                                      "high": [
                                        129.5399932861328,
                                        126.2699966430664,
                                        124.63999938964844,
                                        126.1500015258789,
                                        127.88999938964844,
                                        126.93000030517578,
                                        126.98999786376953,
                                        124.91999816894531,
                                        127.72000122070312,
                                        128,
                                        127.94000244140625,
                                        128.32000732421875,
                                        127.38999938964844,
                                        127.63999938964844,
                                        125.80000305175781,
                                        125.3499984741211,
                                        125.23999786376953,
                                        124.8499984741211,
                                        126.16000366210938,
                                        126.31999969482422,
                                        128.4600067138672
                                      ],
                                      "open": [
                                        129.41000366210938,
                                        123.5,
                                        123.4000015258789,
                                        124.58000183105469,
                                        126.25,
                                        126.81999969482422,
                                        126.55999755859375,
                                        123.16000366210938,
                                        125.2300033569336,
                                        127.81999969482422,
                                        126.01000213623047,
                                        127.81999969482422,
                                        126.95999908447266,
                                        126.44000244140625,
                                        125.56999969482422,
                                        125.08000183105469,
                                        124.27999877929688,
                                        124.68000030517578,
                                        124.06999969482422,
                                        126.16999816894531,
                                        126.5999984741211
                                      ],
                                      "close": [
                                        126.8499984741211,
                                        125.91000366210938,
                                        122.7699966430664,
                                        124.97000122070312,
                                        127.44999694824219,
                                        126.2699966430664,
                                        124.8499984741211,
                                        124.69000244140625,
                                        127.30999755859375,
                                        125.43000030517578,
                                        127.0999984741211,
                                        126.9000015258789,
                                        126.8499984741211,
                                        125.27999877929688,
                                        124.61000061035156,
                                        124.27999877929688,
                                        125.05999755859375,
                                        123.54000091552734,
                                        125.88999938964844,
                                        125.9000015258789,
                                        126.73999786376953
                                      ],
                                      "volume": [
                                        88071200,
                                        126142800,
                                        112172300,
                                        105861300,
                                        81806500,
                                        74244600,
                                        63342900,
                                        92612000,
                                        76857100,
                                        79295400,
                                        63092900,
                                        72009500,
                                        56575900,
                                        94625600,
                                        71311100,
                                        67637100,
                                        59278900,
                                        76229200,
                                        75087300,
                                        70927000,
                                        72497627
                                      ]
                                    }
                                  ],
                                  "adjclose": [
                                    {
                                      "adjclose": [
                                        126.8499984741211,
                                        125.91000366210938,
                                        122.7699966430664,
                                        124.97000122070312,
                                        127.44999694824219,
                                        126.2699966430664,
                                        124.8499984741211,
                                        124.69000244140625,
                                        127.30999755859375,
                                        125.43000030517578,
                                        127.0999984741211,
                                        126.9000015258789,
                                        126.8499984741211,
                                        125.27999877929688,
                                        124.61000061035156,
                                        124.27999877929688,
                                        125.05999755859375,
                                        123.54000091552734,
                                        125.88999938964844,
                                        125.9000015258789,
                                        126.73999786376953
                                      ]
                                    }
                                  ]
                                }
                              }
                            ],
                            "error": null
                          }
                        }
                      }
                    }
                  }
                }
          }
        }
      }
    },
    "/v6/finance/recommendationsbysymbol/{symbol}": {
      "get": {
        "tags": [
          "API"
        ],
        "parameters": [
          {
            "name": "symbol",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string",
              "example": "AAPL"
            }
          }
        ],
        "operationId": "similar",
        "description": "List similar stocks",
        "responses": {
          "200": {
                "content": {
                  "application/json": {
                    "examples": {
                      "Response": {
                        "description": "",
                        "summary": "response",
                        "value": {
                          "finance": {
                            "error": null,
                            "result": [
                              {
                                "recommendedSymbols": [
                                  {
                                    "score": 0.284219,
                                    "symbol": "AMZN"
                                  },
                                  {
                                    "score": 0.277092,
                                    "symbol": "GOOG"
                                  },
                                  {
                                    "score": 0.276136,
                                    "symbol": "FB"
                                  },
                                  {
                                    "score": 0.248035,
                                    "symbol": "TSLA"
                                  },
                                  {
                                    "score": 0.208809,
                                    "symbol": "NFLX"
                                  }
                                ],
                                "symbol": "AAPL"
                              }
                            ]
                          }
                        }
                      }
                    }
                  }
                },
                "description": ""
              }
        }
      }
    },
    "/ws/screeners/v1/finance/screener/predefined/saved": {
      "get": {
        "tags": [
          "API"
        ],
        "parameters": [
          {
            "name": "count",
            "in": "query",
            "required": false,
            "schema": {
              "type": "number",
              "example": "25"
            }
          },
          {
            "name": "scrIds",
            "in": "query",
            "required": true,
            "schema": {
              "type": "string",
              "example": "day_gainers"
            }
          }
        ],
        "operationId": "popular",
        "description": "Most added to watchlist",
        "responses": {
          "200": {
                "description": "",
                "content": {
                  "application/json": {
                    "examples": {
                      "Response": {
                        "description": "",
                        "summary": "response",
                        "value": {
                            "finance": {
                              "result": [
                                {
                                  "id": "ec5bebb9-b7b2-4474-9e5c-3e258b61cbe6",
                                  "title": "Day Gainers - US",
                                  "description": "Stocks ordered in descending order by price percent change greater than 3% with respect to the previous close",
                                  "canonicalName": "DAY_GAINERS",
                                  "criteriaMeta": {
                                    "size": 1,
                                    "offset": 0,
                                    "sortField": "percentchange",
                                    "sortType": "DESC",
                                    "quoteType": "EQUITY",
                                    "topOperator": "AND",
                                    "criteria": [
                                      {
                                        "field": "percentchange",
                                        "operators": [
                                          "GT"
                                        ],
                                        "values": [
                                          3
                                        ],
                                        "labelsSelected": []
                                      },
                                      {
                                        "field": "region",
                                        "operators": [
                                          "EQ"
                                        ],
                                        "values": [],
                                        "labelsSelected": [
                                          53
                                        ]
                                      },
                                      {
                                        "field": "intradaymarketcap",
                                        "operators": [
                                          "EQ"
                                        ],
                                        "values": [],
                                        "labelsSelected": [
                                          1,
                                          2,
                                          3
                                        ]
                                      },
                                      {
                                        "field": "dayvolume",
                                        "operators": [
                                          "GT"
                                        ],
                                        "values": [
                                          15000
                                        ],
                                        "labelsSelected": []
                                      }
                                    ]
                                  },
                                  "rawCriteria": "{\"offset\":0,\"size\":1,\"sortField\":\"percentchange\",\"sortType\":\"DESC\",\"quoteType\":\"EQUITY\",\"query\":{\"operator\":\"AND\",\"operands\":[{\"operator\":\"GT\",\"operands\":[\"percentchange\",3.0]},{\"operator\":\"eq\",\"operands\":[\"region\",\"us\"]},{\"operator\":\"or\",\"operands\":[{\"operator\":\"BTWN\",\"operands\":[\"intradaymarketcap\",2000000000,10000000000]},{\"operator\":\"BTWN\",\"operands\":[\"intradaymarketcap\",10000000000,100000000000]},{\"operator\":\"GT\",\"operands\":[\"intradaymarketcap\",100000000000]}]},{\"operator\":\"gt\",\"operands\":[\"dayvolume\",15000]}]}}",
                                  "start": 0,
                                  "count": 1,
                                  "total": 229,
                                  "quotes": [
                                    {
                                      "language": "en-US",
                                      "region": "US",
                                      "quoteType": "EQUITY",
                                      "quoteSourceName": "Nasdaq Real Time Price",
                                      "triggerable": true,
                                      "currency": "USD",
                                      "regularMarketChangePercent": 85.82214,
                                      "sourceInterval": 15,
                                      "exchangeDataDelayedBy": 0,
                                      "exchangeTimezoneName": "America/New_York",
                                      "exchangeTimezoneShortName": "EDT",
                                      "gmtOffSetMilliseconds": -14400000,
                                      "averageAnalystRating": "2.5 - Buy",
                                      "esgPopulated": false,
                                      "tradeable": false,
                                      "firstTradeDateMilliseconds": 1591968600000,
                                      "priceHint": 2,
                                      "postMarketChangePercent": 7.44921,
                                      "postMarketTime": 1623196799,
                                      "postMarketPrice": 23.8,
                                      "postMarketChange": 1.65,
                                      "regularMarketChange": 10.23,
                                      "regularMarketTime": 1623182403,
                                      "regularMarketPrice": 22.15,
                                      "regularMarketDayHigh": 24.93,
                                      "regularMarketDayRange": "16.32 - 24.93",
                                      "regularMarketDayLow": 16.32,
                                      "regularMarketVolume": 725784974,
                                      "regularMarketPreviousClose": 11.92,
                                      "bid": 23.79,
                                      "ask": 23.8,
                                      "bidSize": 8,
                                      "askSize": 14,
                                      "exchange": "NMS",
                                      "market": "us_market",
                                      "messageBoardId": "finmb_321227313",
                                      "fullExchangeName": "NasdaqGS",
                                      "shortName": "Clover Health Investments, Corp",
                                      "longName": "Clover Health Investments, Corp.",
                                      "financialCurrency": "USD",
                                      "regularMarketOpen": 16.635,
                                      "averageDailyVolume3Month": 24400695,
                                      "averageDailyVolume10Day": 46232480,
                                      "fiftyTwoWeekLowChange": 15.84,
                                      "fiftyTwoWeekLowChangePercent": 2.510301,
                                      "fiftyTwoWeekRange": "6.31 - 24.93",
                                      "fiftyTwoWeekHighChange": -2.7800007,
                                      "fiftyTwoWeekHighChangePercent": -0.11151226,
                                      "fiftyTwoWeekLow": 6.31,
                                      "fiftyTwoWeekHigh": 24.93,
                                      "earningsTimestamp": 1621236632,
                                      "earningsTimestampStart": 1621236632,
                                      "earningsTimestampEnd": 1621236632,
                                      "marketState": "POSTPOST",
                                      "sharesOutstanding": 148279008,
                                      "fiftyDayAverage": 8.408286,
                                      "fiftyDayAverageChange": 13.741714,
                                      "fiftyDayAverageChangePercent": 1.6343061,
                                      "twoHundredDayAverage": 10.409445,
                                      "twoHundredDayAverageChange": 11.740555,
                                      "twoHundredDayAverageChangePercent": 1.1278752,
                                      "marketCap": 9039436800,
                                      "displayName": "Clover Health Investments",
                                      "symbol": "CLOV"
                                    }
                                  ],
                                  "predefinedScr": true,
                                  "versionId": 6,
                                  "creationDate": 1473796102800,
                                  "lastUpdated": 1531954019517
                                }
                              ],
                              "error": null
                            }
                          }
                        }
                      }
                    }
                  }
          }
        }
      }
    },
    "/ws/insights/v1/finance/insights": {
      "get": {
        "tags": [
          "API"
        ],
        "parameters": [
          {
            "name": "symbol",
            "in": "query",
            "required": true,
            "schema": {
              "type": "string",
              "example": "AAPL"
            }
          }
        ],
        "operationId": "insights",
        "description": "Research insights",
        "responses": {
          "200": {
                "content": {
                  "application/json": {
                    "examples": {
                      "Response": {
                        "description": "",
                        "summary": "response",
                        "value": {
                          "finance": {
                            "error": null,
                            "result": {
                              "companySnapshot": {
                                "company": {
                                  "dividends": 0.2519,
                                  "earningsReports": 0.855,
                                  "hiring": 0.966,
                                  "innovativeness": 0.9983,
                                  "insiderSentiments": 0.2217,
                                  "sustainability": 0.8412999999999999
                                },
                                "sector": {
                                  "dividends": 0.5,
                                  "earningsReports": 0.5,
                                  "hiring": 0.5,
                                  "innovativeness": 0.5,
                                  "insiderSentiments": 0.5,
                                  "sustainability": 0.5
                                },
                                "sectorInfo": "Technology"
                              },
                              "instrumentInfo": {
                                "keyTechnicals": {
                                  "provider": "Trading Central",
                                  "resistance": 113.9025,
                                  "stopLoss": 93.156809,
                                  "support": 50.9425
                                },
                                "recommendation": {
                                  "provider": "Argus Research",
                                  "rating": "BUY",
                                  "targetPrice": 150
                                },
                                "technicalEvents": {
                                  "longTerm": "up",
                                  "midTerm": "down",
                                  "provider": "Trading Central",
                                  "shortTerm": "down"
                                },
                                "valuation": {
                                  "color": 0,
                                  "description": "Overvalued",
                                  "discount": "11%",
                                  "provider": "Trading Central",
                                  "relativeValue": "Premium"
                                }
                              },
                              "reports": [
                                {
                                  "id": "27808_Market Summary_1598832000000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-08-31T00:00:00Z",
                                  "summary": "Stocks rose on Friday, finishing off a strong week that saw major indexes climb higher. Riskier equities outperformed blue chips, a trend that was commonplace during the early weeks of the recovery. On Friday, the Dow Jones Industrial Average gained 162 points, or 0.6%. The S&P 500 was up 0.7% and the Nasdaq Composite was up 0.6%. For the full week, the Dow was up 2.6%, the S&P 500 was up 3.3% and the Nasdaq gained 3.4%. Year-to-date, the DJIA crossed into positive territory this week, and is up 0.4%, the S&P is up 8.6%, and the Nasdaq is up 30.4%. Over the past 52 weeks, the Dow is up 8.5%, the S&P 500 is up 19.9%, and the Nasdaq is up 46.9%. ",
                                  "title": "Market Digest: ABC, AAPL, FSLR, HPQ, SPLK, TSLA"
                                },
                                {
                                  "id": "2660_Analyst Report_1598832000000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-08-31T00:00:00Z",
                                  "summary": "Apple manufactures Smartphones, tablets, PCs, software and peripherals for a worldwide customer base. Its products include Mac desktop and mobile PCs, iPhone, iPad, Apple Watch, and various consumer products, including AirPods, Beats headphones and Apple TV. Apple services include App Store, iTunes, iCloud, Apple TV+, Apple Arcade, Apple Music, Apple Pay, and more.",
                                  "title": "Analyst Report: Apple Inc"
                                },
                                {
                                  "id": "27759_Thematic Portfolio_1598227200000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-08-24T00:00:00Z",
                                  "summary": "Sustainable Impact Investing is gaining traction with the global investment community. In January, BlackRock CEO Lawrence Fink, who oversees approximately $7 trillion in assets, announced that his firm would be investing in companies that are making progress on sustainability. Mr. Fink's new focus follows rapid growth in sustainable assets in recent years. According to Opimas, a management consultancy focused on global capital markets, global assets under management in ESG strategies had grown to $40.5 trillion in 2020, doubling in four years and tripling in eight years. As assets have flowed in over the past 40 years, Sustainable Impact Investing has evolved. The discipline, originally known as Socially Responsible Investing, focused at first on excluding companies for various reasons. Now, the discipline promotes \"sustainable\" business practices across all industries that can have an \"impact\" on global issues.",
                                  "title": "The Argus ESG Model Portfolio"
                                },
                                {
                                  "id": "2660_Analyst Report_1596153600000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-07-31T00:00:00Z",
                                  "summary": "Apple manufactures Smartphones, tablets, PCs, software and peripherals for a worldwide customer base. Its products include Mac desktop and mobile PCs, iPhone, iPad, Apple Watch, and various consumer products, including AirPods, Beats headphones and Apple TV. Apple services include App Store, iTunes, iCloud, Apple TV+, Apple Arcade, Apple Music, Apple Pay, and more.",
                                  "title": "Analyst Report: Apple Inc"
                                },
                                {
                                  "id": "27573_Market Update_1596153600000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-07-31T00:00:00Z",
                                  "summary": "Stocks were mixed on Friday morning as investors weighed strong earnings reports from major technology companies and positive consumer spending data. The Commerce Department said that U.S. consumer spending rose 5.6% in June, down from 8.5% in May, but above the Reuters consensus forecast of 5.5% growth. The Dow fell 0.5%, the S&P fell 0.1%, and the Nasdaq rose 0.7%. Crude oil rose slightly to $40 per barrel, while gold jumped $28 to $1970 per ounce.",
                                  "title": "Market Update: AAPL, AMZN, BA, BX, CAKE, HOLX, MAS, NOC, GM, NOW, SHOP"
                                },
                                {
                                  "id": "27519_Thematic Portfolio_1595548800000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-07-24T00:00:00Z",
                                  "summary": "Innovation may be hard to define but, to borrow from former U.S. Supreme Court Justice Potter Stewart, you know it when you see it. The United States economy is full of innovation. It has to be. Manufacturing industries that dominated the economy decades ago - textiles, televisions, even automobiles, to a large degree - have moved overseas, where costs are lower. Yet the U.S. economy, prior to the pandemic, had expanded to record levels. And now the U.S. Healthcare industry is mobilizing to improve COVID-19 testing, treatments and, ultimately, a vaccine. If U.S. corporations weren't innovating, creating new products and services and moving into new markets and applications, the domestic economy would not have recently completed a 10-year expansion phase before the coronavirus hit, and capital would not be flooding into the country. A couple of statistics should help illustrate our point. Consider that U.S. GDP was approximately $1 trillion in 1930 but nearly $22 trillion in 2019. That's growth of 22-times. Meanwhile, the U.S. population has grown less than 3-times during that time span, to 320 million from 120 million. The delta between GDP growth and population growth has been driven in large part by innovation. In addition, the value of listed corporations on U.S. stock exchanges at the end of 2018 was approximately $32 trillion, representing 41% of global equity market capitalization, while U.S. GDP represented only 25% of global GDP.",
                                  "title": "The Argus Innovation Model Portfolio"
                                },
                                {
                                  "id": "27374_Thematic Portfolio_1594166400000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-07-08T00:00:00Z",
                                  "summary": "We have published our latest version of the Argus Millennial Generation portfolio. This new generation of consumers - the Millennials - has recently become the largest demographic cohort in the country, and this group, with new lifestyle preferences and different career goals, is demanding a new menu of sustainable products and services. The intersection of important Millennial trends - sustainability, healthier living, an entrepreneurial spirit - has resulted in the emergence and growth of numerous companies well suited to the new generation. Many of these companies are expected to be future industry leaders and are included in the dynamic Argus Universe of Coverage. A diversified portfolio, of course, is more than just a list of companies linked to themes. To build the Argus Millennial Generation Portfolio, we applied financial concepts such as industry diversification, income generation, risk reduction and growth at a reasonable price.",
                                  "title": "The Argus Millennial Generation Model Portfolio"
                                },
                                {
                                  "id": "27282_Market Outlook_1593043200000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-06-25T00:00:00Z",
                                  "summary": "Investors had numerous economic reports to digest this morning before the market opened. The US Department of Commerce announced that its \"third\" estimate for 1Q20 GDP growth was a rate of -5.0%.  This was in line with the previous estimates and with the consensus outlook. The GDP report also includes an inflation gauge, the PCE price index. This index, excluding food and energy, increased at a 1.7% pace -- below the Federal Reserve's inflation target of 2.0%. Remember, these readings were for the first quarter; they will get worse in the second quarter. Still, the second quarter should be the bottom. This morning's Durable Goods report indicated an increase in spending on Durable Goods by 15.8% in May versus a decline of 17.7% in April. The Commerce Department also reported that the trade deficit in goods widened in May (bad for 2Q GDP) and that wholesale inventories declined (good for 3Q GDP, as inventories are replenished).  The U.S. Department of Labor reported that another 1.48 million people filed initial unemployment claims.  While still high, the readings have been declining from week to week.  Even so, the continuing claims number remained above 20 million. This typically has been a close approximation to the unemployment rate, which is likely to be at least 13% when reported next week.",
                                  "title": "Daily Spotlight: Economic Data Hits the Tape"
                                },
                                {
                                  "id": "2660_Analyst Report_1592870400000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-06-23T00:00:00Z",
                                  "summary": "Apple manufactures Smartphones, tablets, PCs, software and peripherals for a worldwide customer base. Its products include Mac desktop and mobile PCs, iPhone, iPad, Apple Watch, and various consumer products, including AirPods, Beats headphones and Apple TV. Apple services include App Store, iTunes, iCloud, Apple TV+, Apple Arcade, Apple Music, Apple Pay, and more.",
                                  "title": "Analyst Report: Apple Inc"
                                },
                                {
                                  "id": "27262_Market Update_1592870400000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-06-23T00:00:00Z",
                                  "summary": "Stocks rose on Tuesday morning amid improved business activity and housing market data, along with reassurances from President Trump that the U.S.-China trade deal was 'fully intact.' The president's comments came after White House trade adviser Peter Navarro suggested in a television interview that the deal was 'over.' Mr. Navarro said that his comments were taken 'wildly out of context.' On the housing front, the Commerce Department said that U.S. new home sales rose 16.6% to a seasonally adjusted annual rate of 676,000 units in May, above the Reuters consensus forecast of 640,000. The Dow rose 0.9%, the S&P 1.0%, and the Nasdaq 1.3%. Crude oil traded near $41 per barrel, while gold rose $18 to $1784 per ounce.",
                                  "title": "Market Update: AAPL, VNO, MAN, XEL"
                                },
                                {
                                  "id": "27246_Technical Analysis_1592784000000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-06-22T00:00:00Z",
                                  "summary": "When the pandemic hit, people waited for things to get back to normal. Now we realize that what lies ahead is a new normal, not the old normal. Investors also are living within a new normal, and the chief characteristic is volatility.",
                                  "title": "Technical Assessment: Bullish in the Intermediate-Term"
                                },
                                {
                                  "id": "26899_Stock Picks_1589155200000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-05-11T00:00:00Z",
                                  "summary": "The Technology sector has led the market recovery from the COVID-19 depths of late March.  Through April 30, the sector was flat for the year, compared to a 10% decline for the S&P 500. The sector is the largest in the U.S. market and now accounts for almost 26% of the S&P 500.  Over the long term, we expect the Tech sector to benefit from pervasive digitization across the economy, greater acceptance of transformative technologies, and the development of the Internet of Things (IoT). Healthy company and sector fundamentals are also positive. For individual companies, these include high cash levels, low debt, and broad international business exposure. We have an Over-Weight rating on the Tech sector and think investors should look to allocate up to 30% of their diversified portfolios to the group.  Here is how we use our analysts' Tech sector ideas in our Focus List and Model Portfolios.",
                                  "title": "Weekly Stock List"
                                },
                                {
                                  "id": "2660_Analyst Report_1588291200000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-05-01T00:00:00Z",
                                  "summary": "Apple manufactures Smartphones, tablets, PCs, software and peripherals for a worldwide customer base. Its products include Mac desktop and mobile PCs, iPhone, iPad, Apple Watch, and various consumer products, including AirPods, Beats headphones and Apple TV. Apple services include App Store, iTunes, iCloud, Apple TV+, Apple Arcade, Apple Music, Apple Pay, and more.",
                                  "title": "Analyst Report: Apple Inc"
                                },
                                {
                                  "id": "26834_Market Update_1588291200000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-05-01T00:00:00Z",
                                  "summary": "Stocks fell sharply on Friday morning after President Trump threatened to impose new tariffs on China for its handling of the coronavirus crisis. Manufacturing data was also weak. The Institute for Supply Management said that its factory index fell to 41.5 in April, the lowest level since April 2009, from 49.1 in March. Amazon shares fell more than 7% after the company warned that it could post a quarterly loss due to high expenses related to the pandemic. The S&P fell 2.8%, the Dow 2.4%, and the Nasdaq 3.1%. Crude oil rose slightly to $19 per barrel, while gold rose $14 to $1708 per ounce.",
                                  "title": "Market Update: AAPL, IQV, MSFT, NOK, PFE, TSLA, V, BA, IPG, LEN, RJF"
                                },
                                {
                                  "id": "26726_Technical Analysis_1587340800000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-04-20T00:00:00Z",
                                  "summary": "During the trading week ended 4/17/20, the stock market balanced horrific economic news (weekly unemployment claims, retail sales, industrial production) with hopeful medical news (positive results for GILD's remedesivir) and the government's three-stage plan to reopen the economy. Although the week was positive for stocks, investors are now realizing that the damage to the economy is extensive and will possibly take years to remediate.",
                                  "title": "Technical Assessment: Bearish in the Intermediate-Term"
                                },
                                {
                                  "id": "2660_Analyst Report_1586995200000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-04-16T00:00:00Z",
                                  "summary": "Apple manufactures Smartphones, tablets, PCs, software and peripherals for a worldwide customer base. Its products include Mac desktop and mobile PCs, iPhone, iPad, Apple Watch, and various consumer products, including AirPods, Beats headphones and Apple TV. Apple services include App Store, iTunes, iCloud, Apple TV+, Apple Arcade, Apple Music, Apple Pay, and more.",
                                  "title": "Analyst Report: Apple Inc"
                                },
                                {
                                  "id": "26711_Market Update_1586995200000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-04-16T00:00:00Z",
                                  "summary": "President Trump is preparing to announce new federal guidelines for reopening the pandemic-battered economy. Meanwhile, an additional 5.2 million people filed for unemployment benefits last week, bringing the total number to 22 million over just the past four weeks. Industries trading higher today include Multiline Retail, Biotechnology, and Internet & Direct Marketing Retail. Industries trading lower include Airlines, Energy Equipment & Services, and Consumer Finance. The VIX is up 0.38 at 41.20. The Dow fell 0.4%, the S&P rose 0.3%, and the Nasdaq rose 1.5%. Crude oil traded near $20 per barrel, while gold rose $11 to $1751 per ounce.",
                                  "title": "Market Update: ACC, AAPL, GOLD, BLK, CVS"
                                },
                                {
                                  "id": "2660_Analyst Report_1585699200000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-04-01T00:00:00Z",
                                  "summary": "Apple manufactures Smartphones, tablets, PCs, software and peripherals for a worldwide customer base. Its products include Mac desktop and mobile PCs, iPhone, iPad, Apple Watch, and various consumer products, including AirPods, Beats headphones and Apple TV. Apple services include App Store, iTunes, iCloud, Apple TV+, Apple Arcade, Apple Music, Apple Pay, and more.",
                                  "title": "Analyst Report: Apple Inc"
                                },
                                {
                                  "id": "26570_Market Summary_1585699200000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-04-01T00:00:00Z",
                                  "summary": "Stocks scored a win in the trading week ended March 27-- as in the best market week in 82 years, even as Friday of that week was a down day. The rally had some investors wondering if 'the low was in.' But in past big selloffs, the confirming low re-test has come months later.",
                                  "title": "Market Digest: EXPE, MRO, AAPL, LRCX, WWW, INCY"
                                },
                                {
                                  "id": "26563_Technical Analysis_1585612800000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-03-31T00:00:00Z",
                                  "summary": "Well we finally had a good Monday in March, as the S&P 500 rose a solid 3.4%. A 3%+ jump during less-volatile times would be phenomenal. Now it is just solid. On the last three Monday's in March, the index plunged 7.6%, crashed 12%, and then saw a \"minor\" decline of 2.9%. Does this mean that Turnaround Tuesday, which has seen gains of 4.9%, 6%, and 9.4% in the past three weeks, will see downside today?",
                                  "title": "Technical Assessment: Bearish in the Intermediate-Term"
                                },
                                {
                                  "id": "2660_Analyst Report_1582156800000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-02-20T00:00:00Z",
                                  "summary": "Apple manufactures Smartphones, tablets, PCs, software and peripherals for a worldwide customer base. Its products include Mac desktop and mobile PCs, iPhone, iPad, Apple Watch, and various consumer products, including AirPods, Beats headphones and Apple TV. Apple services include App Store, iTunes, iCloud, Apple TV+, Apple Arcade, Apple Music, Apple Pay, and more.",
                                  "title": "Analyst Report: Apple Inc"
                                },
                                {
                                  "id": "26239_Market Update_1582156800000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-02-20T00:00:00Z",
                                  "summary": "Stocks fell sharply on Thursday morning amid continued coronavirus uncertainty. However, Fed Vice Chair Richard Clarida said that U.S. economic fundamentals remained strong and that it was too soon to tell what impact the coronavirus would have on the economy or interest rate policy. In M&A news, Morgan Stanley said that it would acquire E*Trade Financial in a $13 billion deal. E*Trade shares jumped 24%, while MS fell nearly 4%. The Dow and the S&P were down 1.0%, while the Nasdaq fell 1.4%. Crude oil rose nearly 2% to $54 per barrel, while gold rose $14 to $1626 per ounce.",
                                  "title": "Market Update: AAPL, EXPE, MS, RSG, TOL"
                                },
                                {
                                  "id": "2660_Analyst Report_1580342400000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-01-30T00:00:00Z",
                                  "summary": "Apple manufactures Smartphones, tablets, PCs, software and peripherals for a worldwide customer base. Its products include Mac desktop and mobile PCs, iPhone, iPad, Apple Watch, and various consumer products, including AirPods, Beats headphones and Apple TV. Apple services include App Store, iTunes, iCloud, Apple TV+, Apple Arcade, Apple Music, Apple Pay, and more.",
                                  "title": "Analyst Report: Apple Inc"
                                },
                                {
                                  "id": "26067_Market Summary_1580342400000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-01-30T00:00:00Z",
                                  "summary": "Tepid 4Q Earnings Wrap a Lackluster Year for Profits",
                                  "title": "Market Digest: NSC, AAPL, ADP, IVZ, JNPR, MCD, T, DOW, GE"
                                },
                                {
                                  "id": "25999_Thematic Portfolio_1579651200000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-01-22T00:00:00Z",
                                  "summary": "Sustainable Impact Investing is gaining traction not only with Argus Research clients, but also with the global investment community. According to the Forum for Sustainable and Responsible Investment, global assets under management in the strategy have grown to $11.6 trillion in 2018 from $178 billion in 2005. The UN Principles for Responsible Investing -- to which Argus Research is a signatory -- now represents more than 1,750 signatories with assets of US$70 trillion, according to BMO Global Asset Management. As assets have flowed in over the past 40 years, Sustainable Impact Investing has evolved. The discipline, originally known as Socially Responsible Investing, focused at first on excluding companies that conducted business in South Africa, or participated in industries such as tobacco, alcohol and firearms. In time, the list of industries to avoid increased to include soft drinks, fast food, and oil and gas, among numerous others. Performance of these initial strategies lagged, and the approach has been modified. Now, instead of merely identifying industries to avoid, the discipline promotes \"sustainable\" business practices across all industries that can have an \"impact\" on global issues such as the climate, hunger, poverty, disease, shelter and workers' rights.",
                                  "title": "The Argus ESG Model Portfolio"
                                },
                                {
                                  "id": "2660_Analyst Report_1578614400000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-01-10T00:00:00Z",
                                  "summary": "Apple manufactures Smartphones, tablets, PCs, software and peripherals for a worldwide customer base. Its products include Mac desktop and mobile PCs, iPhone, iPad, Apple Watch, and various consumer products, including AirPods, Beats headphones and Apple TV. Apple services include App Store, iTunes, iCloud, Apple TV+, Apple Arcade, Apple Music, Apple Pay, and more.",
                                  "title": "Analyst Report: Apple Inc"
                                },
                                {
                                  "id": "25915_Market Update_1578614400000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-01-10T00:00:00Z",
                                  "summary": "U.S. equities were down on Friday morning following the announcement of new sanctions on Iran. On the economic front, the U.S. Bureau of Labor Statistics reported that nonfarm payroll employment rose by 145,000 in December, and the unemployment rate of 3.5% remained unchanged. Wall Street was expecting an increase of 165,000 jobs. Gains occurred in retail trade and health care, while mining lost jobs. Wages rose to $28.32 per hour in December, up 2.9% compared to a rise of 3.1% a year ago. The Dow Jones Industrial Average fell 0.3%, the S&P 500 0.07% and the Nasdaq Composite was down 0.06%. Crude oil traded at $59 per barrel, while gold rose $7 to $1561 per ounce.",
                                  "title": "Market Update: AAPL, PG, PPL"
                                },
                                {
                                  "id": "25867_Stock Picks_1578268800000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2020-01-06T00:00:00Z",
                                  "summary": "The major market indices all had solid performances for 2019, closing with raw price gains of 36% for the Nasdaq Composite, 24% for the Dow Jones Industrial Average and 29% for the S&P 500.  Growth stocks outperformed value, as the Russell 1000 Growth Index advanced 40% compared to the Russell 1000 Value Index's gain of 24%. Small-caps underperformed, with the Russell 2000 closing 25% higher.  International stocks underperformed domestic stocks, as the EAFE Index increased 19% and the MSCI Emerging Markets Index advanced 17%.",
                                  "title": "Weekly Stock List"
                                },
                                {
                                  "id": "25776_Stock Picks_1577059200000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-12-23T00:00:00Z",
                                  "summary": "Sustainable Impact investing continues to grow.  According to the Forum for Sustainable and Responsible Investment (SRI), assets under management in SRI funds have risen to $8.7 trillion in 2015 from $2.1 trillion in 2003. As assets have flowed in, SRI investing has evolved over the past 40 years.  Now, instead of merely identifying industries to avoid, the discipline promotes \"sustainable\" business practices across all businesses that can have an \"impact\" on global issues such as workers' rights, poverty, hunger and the climate. Based on numerous requests from clients, we have compiled a list of companies followed by Argus Research that are in position to have this type of \"sustainable impact\" on the environment, workplace and community. These firms have exemplary records not only in delivering on the bottom line, but also in improving the environment, contributing to community relations, and showing respect for employees. We derived our list by identifying companies that are either BUY-rated or HOLD-rated by Argus analysts, and also score highly on ESG (Environmental, Social and Governance) criteria established by the JUST Capital Foundation. JUST Capital utilizes a combination of polling, data-driven research, and strategic engagement to shift behaviors and activities in corporate America and the financial markets. JUST Capital's mission is to drive measurable corporate change to create a stakeholder-centric, inclusive form of capitalism that reflects the priorities of the American public.  JUST ranks the Russell 1000 on these criteria against a scale of 1-100. Here are the companies in the Argus Universe that score highest on the scale.",
                                  "title": "Weekly Stock List"
                                },
                                {
                                  "id": "25770_Market Outlook_1576800000000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-12-20T00:00:00Z",
                                  "summary": "The U.S. Department of Commerce announced that its \"third\" estimate for 3Q19 GDP growth was a rate of 2.1%. This was in line with the previous estimates and with the consensus outlook. The report reflects positive trends in the economy, including the all-important personal consumption expenditures (+3.2%), capital investments into intellectual property products (+4.7%) and residential construction (+4.6%), and even federal government spending (+3.3%, led by nondefense spending, which rose at a 5.0% rate). The segments that lagged were capital investment into equipment (-3.8%, which we think is a fall-out from the trade debate) and exports (up only 1.0% and also affected by trade). In short, the headline number looked positive, but the economy is not showing strength across the board. We expect growth in the balance of 2019 and 2020 to fall into the 1.5%-2.3% range, as ongoing trade and tariff uncertainty weigh on business and consumer confidence. The GDP report also includes an inflation gauge, the PCE price index. This index, excluding food and energy, increased at a 2.1% pace, in line with the Federal Reserve's targets.",
                                  "title": "Daily Spotlight: 3Q GDP Growth Final at 2.1%"
                                },
                                {
                                  "id": "25716_Technical Analysis_1576454400000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-12-16T00:00:00Z",
                                  "summary": "Washington is as turbulent as ever, buffeted by impeachment proceedings, the trade process, an interim government-spending bill, and the drug-pricing wrangle. On Wall Street, the S&P 500 is quietly grinding higher in small moves with few down days.",
                                  "title": "Technical Assessment: Bullish in the Intermediate-Term"
                                },
                                {
                                  "id": "25599_Stock Picks_1575244800000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-12-02T00:00:00Z",
                                  "summary": "In a volatile period for stocks, we saw increased demand for information from our website, www.ArgusResearch.com.  The most-popular reports are the stock-based Argus Analyst Reports, followed by the daily reports Market Watch, Market Digest and Market Movers. The daily reports contain, in addition to stock picks, information about the latest market and economic trends as well as Argus' forecasts. The homepage of our website also features updates and outlooks.  Here are the stocks in Argus' fundamental coverage that clients viewed the most in the month of November.",
                                  "title": "Weekly Stock List"
                                },
                                {
                                  "id": "25531_Thematic Portfolio_1574294400000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-11-21T00:00:00Z",
                                  "summary": "We have published our latest version of the Argus Millennial Generation portfolio. This new generation of consumers - the Millennials - has recently become the largest demographic cohort in the country, and this group, with new lifestyle preferences and different career goals, is demanding a new menu of sustainable products and services. The intersection of important Millennial trends - sustainability, healthier living, an entrepreneurial spirit - has resulted in the emergence and growth of numerous companies well suited to the new generation. Many of these companies are expected to be future industry leaders and are included in the dynamic Argus Universe of Coverage. A diversified portfolio, of course, is more than just a list of companies linked to themes. To build the Argus Millennial Generation Portfolio, we applied financial concepts such as industry diversification, income generation, risk reduction and growth at a reasonable price.",
                                  "title": "The Argus Millennial Generation Model Portfolio"
                                },
                                {
                                  "id": "2660_Analyst Report_1572480000000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-10-31T00:00:00Z",
                                  "summary": "Apple manufactures Smartphones, tablets, PCs, software and peripherals for a worldwide customer base. Its products include Macintosh desktop and mobile PCs, iPhone, iPad, Apple Watch, and various consumer products, including AirPods, Beats headphones and Apple TV. Apple also owns and operates iTunes, the world's largest vendor of recorded music. Apple derives 42%-45% of its revenue from the Americas, 22%-25% from Europe/MEA, and 24%-30% from the Asia-Pacific region.",
                                  "title": "Analyst Report: Apple Inc"
                                },
                                {
                                  "id": "25357_Market Update_1572480000000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-10-31T00:00:00Z",
                                  "summary": "The major indices are down at midday on Thursday on reports that China does not expect to finalize a full trade deal with the Trump administration. Fiat Chrysler (FCAU) announced a merger with French automaker Peugeot that will create the world's fourth-largest auto manufacturer. Industries doing well today include Food Products and Interactive Media & Services. Industries showing weakness include Personal Products, Machinery, and Trading Companies & Distributors. The VIX is up 1.03 to 13.36 after the previous close of 12.33. The Dow fell 0.7%, the S&P 0.6%, and the Nasdaq 0.4%. Crude oil traded near $54 per barrel, while gold rose $15 to $1511 per ounce.",
                                  "title": "Market Update: AWK, AAPL, CME, MAT, RSG, SBUX, T"
                                },
                                {
                                  "id": "25321_Stock Picks_1572220800000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-10-28T00:00:00Z",
                                  "summary": "The Technology sector has led equity markets higher in 2019.  The sector has gained 30% this year, compared to 19% for the S&P 500. The Nasdaq Composite, comprised largely of Tech stocks, is about 1% below an all-time high. The sector is the largest in the U.S. market and now accounts for almost 22% of the S&P 500.  Over the long term, we expect the Tech sector to benefit from pervasive digitization across the economy, greater acceptance of transformative technologies, and the development of the Internet of Things (IoT). Healthy company and sector fundamentals are also positive. For individual companies, these include high cash levels, low debt, and broad international business exposure. We have an Over-Weight ranking on the Tech sector and think investors should look to allocate 22%-25% of their diversified portfolios to the group. Here is how we use our Tech sector ideas in our Focus List and Model Portfolios.",
                                  "title": "Weekly Stock List"
                                },
                                {
                                  "id": "25266_Stock Picks_1571616000000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-10-21T00:00:00Z",
                                  "summary": "This is among our most-important themes for 2019, and stretches across industries. We think companies that raise their dividends consistently at a double-digit rate are sending off three important signals amid all the recent market volatility: 1) the company's balance sheet is strong enough to pay a dividend; 2) management is focused on providing shareholder returns; and 3) management is confident enough in the near-term outlook to raise the payout aggressively. This third factor is especially important as the economy cools off into 2020 and earnings growth slows. Here are 11 stocks that meet our double-digit dividend test and are on the Argus BUY List. They are also core holdings in our Dividend Growth Separately Managed Account and in the Dividend Growers Total Return Trust, a Unit Investment Trust sponsored by SmartTrust.",
                                  "title": "Weekly Stock List"
                                },
                                {
                                  "id": "24936_Market Update_1568160000000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-09-11T00:00:00Z",
                                  "summary": "U.S. equity markets were up on Wednesday morning following news that China was suspending additional tariffs on some American imports. The Labor Department reported that its producer price index rose 0.1% in August, following a 0.2% gain in July. The cost of services offset the largest fall in the price of goods in seven months. The Dow gained 0.3%, the S&P 0.3%, and the Nasdaq was up 0.7%. Crude oil traded near $58 per barrel, while gold rose $3 to $1502 per ounce.",
                                  "title": "Market Update: AAPL, SBUX"
                                },
                                {
                                  "id": "2660_Analyst Report_1568160000000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-09-11T00:00:00Z",
                                  "summary": "Apple manufactures Smartphones, tablets, PCs, software and peripherals for a worldwide customer base. Its products include Macintosh desktop and mobile PCs, iPhone, iPad, Apple Watch, and various consumer products, including AirPods, Beats headphones and Apple TV. Apple also owns and operates iTunes, the world's largest vendor of recorded music. Apple derives 42%-45% of its revenue from the Americas, 22%-25% from Europe/MEA, and 24%-30% from the Asia-Pacific region.",
                                  "title": "Analyst Report: Apple Inc"
                                },
                                {
                                  "id": "2660_Analyst Report_1564531200000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-07-31T00:00:00Z",
                                  "summary": "Apple manufactures Smartphones, tablets, PCs, software and peripherals for a worldwide customer base. Its products include Macintosh desktop and mobile PCs, iPhone, iPad, Apple Watch, and various consumer products, including AirPods, Beats headphones and Apple TV. Apple also owns and operates iTunes, the world's largest vendor of recorded music. Apple derives 42%-45% of its revenue from the Americas, 22%-25% from Europe/MEA, and 24%-30% from the Asia-Pacific region.",
                                  "title": "Upside surprise, good guidance; reiterating BUY"
                                },
                                {
                                  "id": "24597_Market Update_1564531200000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-07-31T00:00:00Z",
                                  "summary": "Stocks edged higher on Wednesday morning as investors awaited a widely expected interest rate cut by the Federal Reserve, along with comments from Fed Chair Jerome Powell. On the earnings front, Apple shares rose more than 4% after the company posted better-than-expected fiscal 3Q results and provided positive sales guidance for fiscal 4Q. The Dow rose 0.1%, the S&P 0.1%, and the Nasdaq 0.3%. Crude oil rose slightly to about $58 per barrel, while gold fell $2 to $1440 per ounce.",
                                  "title": "Market Update: AAPL, BYD, CME, PFE, MO, BP, CHKP"
                                },
                                {
                                  "id": "24361_Stock Picks_1562025600000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-07-02T00:00:00Z",
                                  "summary": "The G20 summit in Osaka, Japan, ended on a positive note for investors, as President Trump and China's President Xi Jinping scaled back trade and tariff demands over the weekend.  President Trump said he would refrain from imposing additional tariffs on $300 billion worth of Chinese goods, and the U.S. also lifted the technology-transfer ban on companies that had been working with Chinese telcom company Huawei. The two countries are also continuing to renegotiate the tariffs already imposed.  The sectors that had borne the brunt of the trade wars included Information Technology and Industrials.  Here are five BUY-rated stocks that we think are poised to benefit from the cooling trade tensions.",
                                  "title": "Weekly Stock List"
                                },
                                {
                                  "id": "24333_Market Outlook_1561680000000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-06-28T00:00:00Z",
                                  "summary": "The U.S. Department of Commerce announced that its third estimate for 1Q19 GDP growth was a rate of 3.1%. This was in line with the previous estimates and the consensus outlook. There were positive trends in the economy, including capital investments into Intellectual Products (+12%), Structured (+4.3%), Exports (+5.4%) even Federal Government Spending (+2.8%, led by Defense spending, which rose at a 4.0% rate and State and Government spending, which rose at a 4.6% rate). Segments that lagged were Housing (-2.0%), capital investment into Equipment (-1.0%) and the all-important Personal Consumption Expenditures (up only 0.9%).  In short, the headline number looked positive, but some of the details were sketchy. We expect growth in the balance of 2019 to fall into the 2.0%-2.5% range, as trade and tariff concerns weigh on confidence. The GDP report also includes an inflation gauge, the PCE price index. This index, excluding food and energy, increased a paltry 0.5%. That alone may play into the Fed's plans for cutting rates.",
                                  "title": "Daily Spotlight: 1Q GDP Growth Final at 3.1%"
                                },
                                {
                                  "id": "24256_Technical Analysis_1560902400000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-06-19T00:00:00Z",
                                  "summary": "We are raising our intermediate-term outlook to bullish, which now aligns with our long-term outlook. All the major indices have finally recaptured their key 200-day moving averages, with the laggard Russell 2000 (RUT) just retaking this average on Tuesday. The average stock in the S&P 500 is now above its 50-day average (56%) for the first time since early May.",
                                  "title": "Technical Assessment: Bullish in the Intermediate-Term"
                                },
                                {
                                  "id": "24025_Thematic Portfolio_1558396800000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-05-21T00:00:00Z",
                                  "summary": "Sustainable Impact Investing is gaining traction with the global investment community. According to the Forum for Sustainable and Responsible Investment, global assets under management in the strategy have grown to $11.6 trillion in 2018 from $178 billion in 2005. The UN Principles for Responsible Investing now represents more than 1,750 signatories with assets of US $70 trillion, according to BMO Global Asset Management. As assets have flowed in over the past 40 years, Sustainable Impact Investing has evolved. The discipline, originally known as Socially Responsible Investing, focused at first on excluding companies that conducted business in South Africa, or participated in industries such as tobacco, alcohol and firearms. In time, the list of industries to avoid increased to include soft drinks, fast food, and oil and gas, among numerous others. Performance of these initial strategies lagged, and the approach subsequently has been modified. Now, instead of merely identifying industries to avoid, the discipline promotes \"sustainable\" business practices across all industries that can have an \"impact\" on global issues such as the climate, hunger, poverty, disease, shelter and workers' rights.",
                                  "title": "The Argus Sustainable ESG Model Portfolio"
                                },
                                {
                                  "id": "23865_Market Summary_1556755200000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-05-02T00:00:00Z",
                                  "summary": "Rally On: Our Monthly Survey of the Economy, Interest Rates, and Markets",
                                  "title": "Market Digest: AAPL, CMCSA, GLW, IPG, IR, MRK, JCI, WBA, GRUB"
                                },
                                {
                                  "id": "2660_Analyst Report_1556755200000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-05-02T00:00:00Z",
                                  "summary": "Apple manufactures Smartphones, tablets, PCs, software and peripherals for a worldwide customer base. Its products include Macintosh desktop and mobile PCs, iPhone, iPad, Apple Watch, and various consumer products, including AirPods, Beats headphones and Apple TV. Apple also owns and operates iTunes, the world's largest vendor of recorded music. Apple derives 42%-45% of its revenue from the Americas, 22%-25% from Europe/MEA, and 24%-30% from the Asia-Pacific region.",
                                  "title": "Raising target to $250"
                                },
                                {
                                  "id": "23750_Market Summary_1555545600000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-04-18T00:00:00Z",
                                  "summary": "Economic Data Continues to Send Mixed Signals",
                                  "title": "Market Digest: AAPL, BK, ERIC, FAST, JNJ, NFLX, PEP, USB"
                                },
                                {
                                  "id": "2660_Analyst Report_1555545600000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-04-18T00:00:00Z",
                                  "summary": "Apple manufactures Smartphones, tablets, PCs, software and peripherals for a worldwide customer base. Its products include Macintosh desktop and mobile PCs, iPhone, iPad, Apple Watch, and various consumer products, including AirPods, Beats headphones and Apple TV. Apple also owns and operates iTunes, the world's largest vendor of recorded music. Apple derives 42%-45% of its revenue from the Americas, 22%-25% from Europe/MEA, and 24%-30% from the Asia-Pacific region.",
                                  "title": "QCOM settlement a relief - for AAPL investors; reiterating BUY"
                                },
                                {
                                  "id": "23629_Thematic Portfolio_1554249600000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-04-03T00:00:00Z",
                                  "summary": "A new generation of consumers - the Millennials - has become the largest demographic cohort in the",
                                  "title": "Millennial Generation Portfolio"
                                },
                                {
                                  "id": "23582_Market Outlook_1553731200000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-03-28T00:00:00Z",
                                  "summary": "The U.S. Department of Commerce announced its \"third\" and final estimate for 4Q18 GDP growth was 2.2%. This is down 40 basis points compared to the \"initial\" estimate of 2.6% and, as we had anticipated, is a further signal that the economy is cooling off from the unsustainable growth rate of 4.2% in 2Q. There were positive trends in the economy, including capital investments into Intellectual Products (+10.7%), Equipment (+6.6%), the all-important Personal Consumer Spending category (+2.5%) and even Federal Government Spending (+1.1%, led by Defense spending, which rose at a 6.4% rate). Segments that lagged were Housing (-4.7%), once again, and State & Local Government Spending (-1.3%).  Exports rebounded from a sharp decline in 3Q that was attributed to tariff talks; but the strong dollar capped export growth at a below-trend 1.8%. The 4Q results benefited from tax cuts, which helped drive consumer spending. But that \"sugar high\" is now in the rear-view mirror. We expect growth in 1H19 in the 1.5%-2.0% range, reflecting disruption in the economy from the government shutdown.  The GDP report also includes an inflation gauge, the PCE price index.  This index, excluding food and energy, increased at a modest 1.8% pace. This report will not likely lead the Fed to alter its current stance.",
                                  "title": "Daily Spotlight: 4Q GDP Growth Final at 2.2%"
                                },
                                {
                                  "id": "2660_Analyst Report_1553644800000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-03-27T00:00:00Z",
                                  "summary": "Apple manufactures Smartphones, tablets, PCs, software and peripherals for a worldwide customer base. Its products include Macintosh desktop and mobile PCs, iPhone, iPad, Apple Watch, and various consumer products, including AirPods, Beats headphones and Apple TV. Apple also owns and operates iTunes, the world's largest vendor of recorded music. Apple derives 42%-45% of its revenue from the Americas, 22%-25% from Europe/MEA, and 24%-30% from the Asia-Pacific region.",
                                  "title": "Mixed reviews for streaming ignore still-powerful ecosystem; reiterating BUY"
                                },
                                {
                                  "id": "23573_Market Update_1553644800000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-03-27T00:00:00Z",
                                  "summary": "Stocks fell on Wednesday morning amid continued concerns about global growth, with all sectors moving lower. The U.S. trade deficit was narrower than expected. The Commerce Department said that the trade gap narrowed by 14.6% to $51.8 billion in January, reflecting higher exports of soybeans, motor vehicles and parts and lower imports. The Reuters consensus forecast had called for a smaller decline to $57.0 billion. The Dow fell 0.8%, the S&P 1.0%, and the Nasdaq 1.3%. Crude oil fell slightly to just under $60 per barrel, while gold fell $6 to $1309 per ounce.",
                                  "title": "Market Update: AAPL, TPR, INFO, KO, BUD"
                                },
                                {
                                  "id": "2660_Analyst Report_1551916800000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-03-07T00:00:00Z",
                                  "summary": "Apple manufactures Smartphones, tablets, PCs, software and peripherals for a worldwide customer base. Its products include Macintosh desktop and mobile PCs, iPhone, iPad, Apple Watch, and various consumer products, including AirPods, Beats headphones and Apple TV. Apple also owns and operates iTunes, the world's largest vendor of recorded music. Apple derives 42%-45% of its revenue from the Americas, 22%-25% from Europe/MEA, and 24%-30% from the Asia-Pacific region.",
                                  "title": "Attractive price points; reiterating BUY"
                                },
                                {
                                  "id": "23412_Market Update_1551916800000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-03-07T00:00:00Z",
                                  "summary": "Stocks fell sharply on Thursday morning, led by the Basic Materials and Financial sectors, as concerns about a slowing global economy led the European Central Bank to announce new stimulus measures. The ECB cut its global growth and inflation targets and also said that it would delay any interest rate hikes until at least 2020. The Dow fell 1.0%, the S&P 1.2%, and the Nasdaq 1.1%. Crude oil rose slightly to about $56 per barrel, while gold fell $1.50 to $1286 per ounce.",
                                  "title": "Market Update: AAPL, AVB, HUM, NJR, ZTS"
                                },
                                {
                                  "id": "2660_Analyst Report_1548806400000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-01-30T00:00:00Z",
                                  "summary": "Apple manufactures Smartphones, tablets, PCs, software and peripherals for a worldwide customer base. Its products include Macintosh desktop and mobile PCs, iPhone, iPad, Apple Watch, and various consumer products, including AirPods, Beats headphones and Apple TV. Apple also owns and operates iTunes, the world's largest vendor of recorded music. Apple derives 42%-45% of its revenue from the Americas, 22%-25% from Europe/MEA, and 24%-30% from Asia-Pacific.",
                                  "title": "Relief rally as services revenue rise; reiterating BUY"
                                },
                                {
                                  "id": "23110_Market Update_1548806400000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-01-30T00:00:00Z",
                                  "summary": "The major indices are 0up at midday on Wednesday. FAANG stocks are some of the early-session leaders, trading up in sympathy with Apple after yesterday's well-received earnings call, and ahead of earnings from Microsoft and Facebook this afternoon. With no rate change expected at today's Federal Reserve meeting, investors will be looking for hints of what the future may hold when Fed Chair Jerome Powell speaks with the media. Industries doing well today include Technology Hardware, Storage & Peripherals, Internet & Direct Marketing Retail, and Health Care Providers & Services. Industries showing weakness include Diversified Telecommunication Services, Media, and Biotechnology. The VIX is down 0.01 to 19.12 after the previous close of 19.13. The Dow rose 1.5%, the S&P 1.0%, and the Nasdaq 1.3%. Crude oil rose nearly 3% to about $55 per barrel, while gold rose slightly to trade near $1316 per ounce.",
                                  "title": "Market Update: AAPL, BA, DHI, HOG, NUE, PKG"
                                },
                                {
                                  "id": "22899_Market Update_1546473600000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-01-03T00:00:00Z",
                                  "summary": "Stocks plunged on Thursday morning following reduced revenue guidance from Apple, which cited slower demand for iPhones, and disappointing manufacturing data. The Institute for Supply Management said that its manufacturing index fell to 54.1 in December, below the Reuters consensus forecast of 57.9 and down sharply from November. The Dow fell 2.5%, the S&P 2.0%, and the Nasdaq 2.2%. Crude oil fell 1% to about $46 per barrel, while gold rose $8 to $1292 per ounce.",
                                  "title": "Market Update: AAPL, BMY, OGE"
                                },
                                {
                                  "id": "2660_Analyst Report_1546473600000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2019-01-03T00:00:00Z",
                                  "summary": "Apple manufactures Smartphones, tablets, PCs, software and peripherals for a worldwide customer base. Its products include Macintosh desktop and mobile PCs, iPhone, iPad, Apple Watch, and various consumer products, including AirPods, Beats headphones and Apple TV. Apple also owns and operates iTunes, the world's largest vendor of recorded music. Apple derives 42%-45% of its revenue from the Americas, 22%-25% from Europe/MEA, and 24%-30% from Asia-Pacific.",
                                  "title": "Cutting estimates on iPhone weakness; reiterating BUY"
                                },
                                {
                                  "id": "22812_Market Outlook_1545350400000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2018-12-21T00:00:00Z",
                                  "summary": "The U.S. Department of Commerce announced that its third and final estimate for 3Q18 GDP growth was a strong rate of 3.4%. This was down 10 basis points compared to the previous estimate and, as we had anticipated, was lower than the impressive-but-unsustainable rate of 4.2% in 2Q.  Even so, growth was broad-based, including capital investments into Intellectual Products (+5.6%), Equipment (+3.4%), the all-important Personal Consumer Spending category (+3.5%) and even Federal Government Spending (+3.5%, led by Defense spending).  The segments that lagged were Housing (-3.6%), once again, and Exports (-4.9% and reflecting tariff turmoil as well as a strong dollar). The 3Q results benefited from the Trump tax cuts, which helped drive consumer spending. But the tax-cut \"sugar high\" will be winding down after one more quarter. We expect growth in 4Q in the 3% range, but look for a further slowdown into 2019-2020 as housing and exports continue to weigh. As the slowdown progresses, we anticipate that the Federal Reserve will slow down its pace of interest-rate hikes.",
                                  "title": "Daily Spotlight: 3Q GDP Growth Final at 3.4%"
                                },
                                {
                                  "id": "22622_Market Update_1543363200000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2018-11-28T00:00:00Z",
                                  "summary": "Stocks rallied on Wednesday, led by the Technology and Consumer Discretionary sectors, after Fed Chair Jerome Powell lowered concerns about aggressive interest rate hikes next year. Meanwhile, the Commerce Department said that the U.S. economy grew at a 3.5% annualized rate in the third quarter, unchanged from its prior estimate but down from 4.2% growth in 2Q. The Dow rose 1.9%, the S&P 1.6%, and the Nasdaq 1.9%. Crude oil rose slightly to about $52 per barrel, while gold traded near $1223 per ounce.",
                                  "title": "Market Update: BHP, AAPL"
                                },
                                {
                                  "id": "2660_Analyst Report_1543363200000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2018-11-28T00:00:00Z",
                                  "summary": "Apple manufactures PCs, MP3 players, smartphones, tablet computers, software and peripherals for a worldwide customer base. Its products include the Macintosh line of desktop and mobile PCs, the iPod MP3 line, the iPhone, the iPad, and various consumer products, including Apple TV. Apple also owns and operates iTunes, the world's largest vendor of recorded music. Apple derives 40%-45% of its revenue from the Americas, 20%-25% from Europe/MEA, 12%-16% from Asia-Pacific, and 15%-18% from its own retail stores.",
                                  "title": "Under pressure from tariffs and demand concerns"
                                },
                                {
                                  "id": "22599_Stock Picks_1543190400000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2018-11-26T00:00:00Z",
                                  "summary": "The FAANG Stocks - Facebook, Apple, Amazon, Netflix and Google - had been leading the broad market higher over the past two years. And, in the past month, these five Wall Street darlings have led the broad market into correction territory. In August, Apple crossed the trillion-dollar market cap line, and Amazon followed in October. Now, in late November, these five stocks have lost over $1 trillion in market cap collectively. Here are our views on the near-term status of these stocks.",
                                  "title": "Weekly Stock List"
                                },
                                {
                                  "id": "2660_Analyst Report_1541116800000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2018-11-02T00:00:00Z",
                                  "summary": "Apple manufactures PCs, MP3 players, smartphones, tablet computers, software and peripherals for a worldwide customer base. Its products include the Macintosh line of desktop and mobile PCs, the iPod MP3 line, the iPhone, the iPad, and various consumer products, including Apple TV. Apple also owns and operates iTunes, the world's largest vendor of recorded music. Apple derives 40%-45% of its revenue from the Americas, 20%-25% from Europe/MEA, 12%-16% from Asia-Pacific, and 15%-18% from its own retail stores.",
                                  "title": "High phone ASPs reinforce margins; reiterating BUY"
                                },
                                {
                                  "id": "22421_Market Update_1541116800000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2018-11-02T00:00:00Z",
                                  "summary": "Stocks fell on Friday morning following the October employment report, as strong wage growth raised the likelihood of a Fed interest rate hike in December. The Labor Department said that the U.S. economy added 250,000 payroll jobs last month, up from a revised 118,000 in September and above the Reuters consensus forecast of 190,000. The official unemployment rate held steady at 3.7%, while average hourly wages rose 3.1% from the prior year. The S&P fell 0.9%, the Dow 0.7%, and the Nasdaq 1.3%. Crude oil traded near $63 per barrel, while gold fell $7 to $1232 per ounce.",
                                  "title": "Market Update: AAPL, APC, CERN, HFC, LUV, NYT, TMUS, PFE, CC, ANET"
                                },
                                {
                                  "id": "22317_Thematic Portfolio_1539820800000",
                                  "provider": "Argus Research",
                                  "publishedOn": "2018-10-18T00:00:00Z",
                                  "summary": "With the stock market racing to new highs earlier this year, most mainstream investors were either looking to get aboard or stay aboard the galloping bull. As the market was lifted higher by the FAANG stocks, many investors likely became over-allocated to a couple of high risk-reward sectors. Even while riding the rally � and the recent ups and downs � some investors are considering end-of-rally strategies. Minimum volatility, or �Min Vol,� often falls into that defensive category.",
                                  "title": "Min Vol Model Portfolio"
                                }
                              ],
                              "symbol": "AAPL"
                            }
                          }
                        }
                      }
                    }
                  }
                },
                "description": ""
              }
        }
      }
    },
    "/v6/finance/autocomplete": {
      "get": {
        "tags": [
          "API"
        ],
        "parameters": [
          {
            "name": "region",
            "in": "query",
            "required": false,
            "description": "`US` `AU` `CA` `FR` `DE` `HK` `US` `IT` `ES` `GB` `IN`",
            "schema": {
              "type": "string",
              "example": "US"
            }
          },
          {
            "name": "lang",
            "in": "query",
            "required": false,
            "description": "`en` `fr` `de` `it` `es` `zh`",
            "schema": {
              "type": "string",
              "example": "en"
            }
          },
          {
            "name": "query",
            "in": "query",
            "required": true,
            "schema": {
              "type": "string",
              "example": "apple"
            }
          }
        ],
        "operationId": "autocomplete",
        "description": "Get auto complete stock suggestions",
        "responses": {
          "200": {
                "content": {
                  "application/json": {
                    "examples": {
                      "Response": {
                        "description": "",
                        "summary": "response",
                        "value": {
                          "ResultSet": {
                            "Query": "apple",
                            "Result": [
                              {
                                "exch": "NMS",
                                "exchDisp": "NASDAQ",
                                "name": "Apple Inc.",
                                "symbol": "AAPL",
                                "type": "S",
                                "typeDisp": "Equity"
                              },
                              {
                                "exch": "NYQ",
                                "exchDisp": "NYSE",
                                "name": "Apple Hospitality REIT, Inc.",
                                "symbol": "APLE",
                                "type": "S",
                                "typeDisp": "Equity"
                              },
                              {
                                "exch": "PNK",
                                "exchDisp": "OTC Markets",
                                "name": "Apple Rush Company, Inc.",
                                "symbol": "APRU",
                                "type": "S",
                                "typeDisp": "Equity"
                              },
                              {
                                "exch": "NAS",
                                "exchDisp": "NASDAQ",
                                "name": "Appleseed Fund Investor Share",
                                "symbol": "APPLX",
                                "type": "M",
                                "typeDisp": "Fund"
                              },
                              {
                                "exch": "NAS",
                                "exchDisp": "NASDAQ",
                                "name": "Appleseed Fund Institutional Share",
                                "symbol": "APPIX",
                                "type": "M",
                                "typeDisp": "Fund"
                              },
                              {
                                "exch": "PNK",
                                "exchDisp": "OTC Markets",
                                "name": "Golden Apple Oil & Gas Inc.",
                                "symbol": "GAPJ",
                                "type": "S",
                                "typeDisp": "Equity"
                              },
                              {
                                "exch": "WCB",
                                "exchDisp": "Chicago Board Options Exchange",
                                "name": "CBOE EQUITY VIXON APPLE",
                                "symbol": "^VXAPL",
                                "type": "I",
                                "typeDisp": "Index"
                              },
                              {
                                "exch": "PNK",
                                "exchDisp": "OTC Markets",
                                "name": "Apple Green Holding, Inc.",
                                "symbol": "AGPL",
                                "type": "S",
                                "typeDisp": "Equity"
                              },
                              {
                                "exch": "BUE",
                                "exchDisp": "Buenos Aires",
                                "name": "Apple Inc.",
                                "symbol": "AAPL.BA",
                                "type": "S",
                                "typeDisp": "Equity"
                              }
                            ]
                          }
                        }
                      }
                    }
                  }
                },
                "description": ""
              }
        }
      }
    },
    "/v6/finance/quote/marketSummary": {
      "get": {
        "tags": [
          "API"
        ],
        "parameters": [
          {
            "name": "lang",
            "in": "query",
            "required": false,
            "description": "`en` `fr` `de` `it` `es` `zh`",
            "schema": {
              "type": "string",
              "example": "en"
            }
          },
          {
            "name": "region",
            "in": "query",
            "required": false,
            "description": "`US` `AU` `CA` `FR` `DE` `HK` `US` `IT` `ES` `GB` `IN`",
            "schema": {
              "type": "string",
              "example": "US"
            }
          }
        ],
        "operationId": "summary",
        "description": "Get live market summary information at the request time",
        "responses": {
          "200": {
                "content": {
                  "application/json": {
                    "examples": {
                      "Response": {
                        "description": "",
                        "summary": "response",
                        "value": {
                          "marketSummaryResponse": {
                            "error": null,
                            "result": [
                              {
                                "exchange": "SNP",
                                "exchangeDataDelayedBy": 0,
                                "exchangeTimezoneName": "America/New_York",
                                "exchangeTimezoneShortName": "EDT",
                                "firstTradeDateMilliseconds": -1325583000000,
                                "fullExchangeName": "SNP",
                                "gmtOffSetMilliseconds": -14400000,
                                "language": "en-US",
                                "market": "us_market",
                                "marketState": "POST",
                                "priceHint": 2,
                                "quoteSourceName": "Delayed Quote",
                                "quoteType": "INDEX",
                                "region": "US",
                                "regularMarketChange": {
                                  "fmt": "67.12",
                                  "raw": 67.11987
                                },
                                "regularMarketChangePercent": {
                                  "fmt": "2.01%",
                                  "raw": 2.0144987
                                },
                                "regularMarketPreviousClose": {
                                  "fmt": "3,331.84",
                                  "raw": 3331.84
                                },
                                "regularMarketPrice": {
                                  "fmt": "3,398.96",
                                  "raw": 3398.96
                                },
                                "regularMarketTime": {
                                  "fmt": "5:12PM EDT",
                                  "raw": 1599685935
                                },
                                "shortName": "S&P 500",
                                "sourceInterval": 15,
                                "symbol": "^GSPC",
                                "tradeable": false,
                                "triggerable": false
                              },
                              {
                                "exchange": "DJI",
                                "exchangeDataDelayedBy": 0,
                                "exchangeTimezoneName": "America/New_York",
                                "exchangeTimezoneShortName": "EDT",
                                "firstTradeDateMilliseconds": 475857000000,
                                "fullExchangeName": "DJI",
                                "gmtOffSetMilliseconds": -14400000,
                                "language": "en-US",
                                "market": "us_market",
                                "marketState": "POST",
                                "priceHint": 2,
                                "quoteSourceName": "Delayed Quote",
                                "quoteType": "INDEX",
                                "region": "US",
                                "regularMarketChange": {
                                  "fmt": "439.58",
                                  "raw": 439.58008
                                },
                                "regularMarketChangePercent": {
                                  "fmt": "1.60%",
                                  "raw": 1.5984213
                                },
                                "regularMarketPreviousClose": {
                                  "fmt": "27,500.89",
                                  "raw": 27500.89
                                },
                                "regularMarketPrice": {
                                  "fmt": "27,940.47",
                                  "raw": 27940.47
                                },
                                "regularMarketTime": {
                                  "fmt": "5:12PM EDT",
                                  "raw": 1599685935
                                },
                                "shortName": "Dow 30",
                                "sourceInterval": 120,
                                "symbol": "^DJI",
                                "tradeable": false,
                                "triggerable": false
                              },
                              {
                                "exchange": "NIM",
                                "exchangeDataDelayedBy": 0,
                                "exchangeTimezoneName": "America/New_York",
                                "exchangeTimezoneShortName": "EDT",
                                "firstTradeDateMilliseconds": 34612200000,
                                "fullExchangeName": "Nasdaq GIDS",
                                "gmtOffSetMilliseconds": -14400000,
                                "language": "en-US",
                                "market": "us_market",
                                "marketState": "POST",
                                "priceHint": 2,
                                "quoteSourceName": "Delayed Quote",
                                "quoteType": "INDEX",
                                "region": "US",
                                "regularMarketChange": {
                                  "fmt": "293.87",
                                  "raw": 293.87402
                                },
                                "regularMarketChangePercent": {
                                  "fmt": "2.71%",
                                  "raw": 2.709093
                                },
                                "regularMarketPreviousClose": {
                                  "fmt": "10,847.70",
                                  "raw": 10847.7
                                },
                                "regularMarketPrice": {
                                  "fmt": "11,141.56",
                                  "raw": 11141.564
                                },
                                "regularMarketTime": {
                                  "fmt": "5:15PM EDT",
                                  "raw": 1599686159
                                },
                                "shortName": "Nasdaq",
                                "sourceInterval": 15,
                                "symbol": "^IXIC",
                                "tradeable": false,
                                "triggerable": false
                              },
                              {
                                "exchange": "WCB",
                                "exchangeDataDelayedBy": 20,
                                "exchangeTimezoneName": "America/New_York",
                                "exchangeTimezoneShortName": "EDT",
                                "firstTradeDateMilliseconds": 558279000000,
                                "fullExchangeName": "Chicago Options",
                                "gmtOffSetMilliseconds": -14400000,
                                "language": "en-US",
                                "market": "us_market",
                                "marketState": "POST",
                                "priceHint": 2,
                                "quoteType": "INDEX",
                                "region": "US",
                                "regularMarketChange": {
                                  "fmt": "21.89",
                                  "raw": 21.888916
                                },
                                "regularMarketChangePercent": {
                                  "fmt": "1.45%",
                                  "raw": 1.4548081
                                },
                                "regularMarketPreviousClose": {
                                  "fmt": "1,504.59",
                                  "raw": 1504.5913
                                },
                                "regularMarketPrice": {
                                  "fmt": "1,526.48",
                                  "raw": 1526.4802
                                },
                                "regularMarketTime": {
                                  "fmt": "4:30PM EDT",
                                  "raw": 1599683408
                                },
                                "shortName": "Russell 2000",
                                "sourceInterval": 15,
                                "symbol": "^RUT",
                                "tradeable": false,
                                "triggerable": false
                              },
                              {
                                "contractSymbol": false,
                                "exchange": "NYM",
                                "exchangeDataDelayedBy": 30,
                                "exchangeTimezoneName": "America/New_York",
                                "exchangeTimezoneShortName": "EDT",
                                "firstTradeDateMilliseconds": 967003200000,
                                "fullExchangeName": "NY Mercantile",
                                "gmtOffSetMilliseconds": -14400000,
                                "headSymbol": true,
                                "headSymbolAsString": "CL=F",
                                "language": "en-US",
                                "market": "us24_market",
                                "marketState": "REGULAR",
                                "quoteType": "FUTURE",
                                "region": "US",
                                "regularMarketChange": {
                                  "fmt": "-0.22",
                                  "raw": -0.2199974
                                },
                                "regularMarketChangePercent": {
                                  "fmt": "-0.58%",
                                  "raw": -0.5781798
                                },
                                "regularMarketPreviousClose": {
                                  "fmt": "38.05",
                                  "raw": 38.05
                                },
                                "regularMarketPrice": {
                                  "fmt": "37.83",
                                  "raw": 37.83
                                },
                                "regularMarketTime": {
                                  "fmt": "6:00PM EDT",
                                  "raw": 1599688818
                                },
                                "shortName": "Crude Oil",
                                "sourceInterval": 30,
                                "symbol": "CL=F",
                                "tradeable": false,
                                "triggerable": false
                              },
                              {
                                "contractSymbol": false,
                                "exchange": "CMX",
                                "exchangeDataDelayedBy": 30,
                                "exchangeTimezoneName": "America/New_York",
                                "exchangeTimezoneShortName": "EDT",
                                "firstTradeDateMilliseconds": 967608000000,
                                "fullExchangeName": "COMEX",
                                "gmtOffSetMilliseconds": -14400000,
                                "headSymbol": true,
                                "headSymbolAsString": "GC=F",
                                "language": "en-US",
                                "market": "us24_market",
                                "marketState": "REGULAR",
                                "quoteType": "FUTURE",
                                "region": "US",
                                "regularMarketChange": {
                                  "fmt": "-0.70",
                                  "raw": -0.70007324
                                },
                                "regularMarketChangePercent": {
                                  "fmt": "-0.04%",
                                  "raw": -0.035811204
                                },
                                "regularMarketPreviousClose": {
                                  "fmt": "1,954.90",
                                  "raw": 1954.9
                                },
                                "regularMarketPrice": {
                                  "fmt": "1,954.20",
                                  "raw": 1954.2
                                },
                                "regularMarketTime": {
                                  "fmt": "6:00PM EDT",
                                  "raw": 1599688818
                                },
                                "shortName": "Gold",
                                "sourceInterval": 15,
                                "symbol": "GC=F",
                                "tradeable": false,
                                "triggerable": false
                              },
                              {
                                "contractSymbol": false,
                                "exchange": "CMX",
                                "exchangeDataDelayedBy": 30,
                                "exchangeTimezoneName": "America/New_York",
                                "exchangeTimezoneShortName": "EDT",
                                "firstTradeDateMilliseconds": 967608000000,
                                "fullExchangeName": "COMEX",
                                "gmtOffSetMilliseconds": -14400000,
                                "headSymbol": true,
                                "headSymbolAsString": "SI=F",
                                "language": "en-US",
                                "market": "us24_market",
                                "marketState": "REGULAR",
                                "quoteType": "FUTURE",
                                "region": "US",
                                "regularMarketChange": {
                                  "fmt": "0.10",
                                  "raw": 0.10199928
                                },
                                "regularMarketChangePercent": {
                                  "fmt": "0.38%",
                                  "raw": 0.37661737
                                },
                                "regularMarketPreviousClose": {
                                  "fmt": "27.08",
                                  "raw": 27.083
                                },
                                "regularMarketPrice": {
                                  "fmt": "27.18",
                                  "raw": 27.185
                                },
                                "regularMarketTime": {
                                  "fmt": "6:00PM EDT",
                                  "raw": 1599688819
                                },
                                "shortName": "Silver",
                                "sourceInterval": 15,
                                "symbol": "SI=F",
                                "tradeable": false,
                                "triggerable": false
                              },
                              {
                                "currency": "USD",
                                "exchange": "CCY",
                                "exchangeDataDelayedBy": 0,
                                "exchangeTimezoneName": "Europe/London",
                                "exchangeTimezoneShortName": "BST",
                                "firstTradeDateMilliseconds": 1070236800000,
                                "fullExchangeName": "CCY",
                                "gmtOffSetMilliseconds": 3600000,
                                "language": "en-US",
                                "market": "ccy_market",
                                "marketState": "REGULAR",
                                "priceHint": 4,
                                "quoteSourceName": "Delayed Quote",
                                "quoteType": "CURRENCY",
                                "region": "US",
                                "regularMarketChange": {
                                  "fmt": "0.0032",
                                  "raw": 0.0031987429
                                },
                                "regularMarketChangePercent": {
                                  "fmt": "0.27%",
                                  "raw": 0.2716066
                                },
                                "regularMarketPreviousClose": {
                                  "fmt": "1.1777",
                                  "raw": 1.1777176
                                },
                                "regularMarketPrice": {
                                  "fmt": "1.1809",
                                  "raw": 1.1809163
                                },
                                "regularMarketTime": {
                                  "fmt": "11:09PM BST",
                                  "raw": 1599689363
                                },
                                "shortName": "EUR/USD",
                                "sourceInterval": 15,
                                "symbol": "EURUSD=X",
                                "tradeable": false,
                                "triggerable": false
                              },
                              {
                                "exchange": "NYB",
                                "exchangeDataDelayedBy": 30,
                                "exchangeTimezoneName": "America/New_York",
                                "exchangeTimezoneShortName": "EDT",
                                "firstTradeDateMilliseconds": -252356400000,
                                "fullExchangeName": "NYBOT",
                                "gmtOffSetMilliseconds": -14400000,
                                "language": "en-US",
                                "longName": "Treasury Yield 10 Years",
                                "market": "us24_market",
                                "marketState": "REGULAR",
                                "priceHint": 4,
                                "quoteType": "INDEX",
                                "region": "US",
                                "regularMarketChange": {
                                  "fmt": "0.0190",
                                  "raw": 0.018999994
                                },
                                "regularMarketChangePercent": {
                                  "fmt": "2.78%",
                                  "raw": 2.777777
                                },
                                "regularMarketPreviousClose": {
                                  "fmt": "0.6840",
                                  "raw": 0.684
                                },
                                "regularMarketPrice": {
                                  "fmt": "0.7030",
                                  "raw": 0.703
                                },
                                "regularMarketTime": {
                                  "fmt": "2:59PM EDT",
                                  "raw": 1599677994
                                },
                                "shortName": "10-Yr Bond",
                                "sourceInterval": 30,
                                "symbol": "^TNX",
                                "tradeable": false,
                                "triggerable": false
                              },
                              {
                                "exchange": "WCB",
                                "exchangeDataDelayedBy": 20,
                                "exchangeTimezoneName": "America/New_York",
                                "exchangeTimezoneShortName": "EDT",
                                "firstTradeDateMilliseconds": 631290600000,
                                "fullExchangeName": "Chicago Options",
                                "gmtOffSetMilliseconds": -14400000,
                                "language": "en-US",
                                "market": "us_market",
                                "marketState": "POST",
                                "priceHint": 2,
                                "quoteType": "INDEX",
                                "region": "US",
                                "regularMarketChange": {
                                  "fmt": "-2.65",
                                  "raw": -2.6499996
                                },
                                "regularMarketChangePercent": {
                                  "fmt": "-8.42%",
                                  "raw": -8.423394
                                },
                                "regularMarketPreviousClose": {
                                  "fmt": "31.46",
                                  "raw": 31.46
                                },
                                "regularMarketPrice": {
                                  "fmt": "28.81",
                                  "raw": 28.81
                                },
                                "regularMarketTime": {
                                  "fmt": "4:14PM EDT",
                                  "raw": 1599682489
                                },
                                "shortName": "Vix",
                                "sourceInterval": 15,
                                "symbol": "^VIX",
                                "tradeable": false,
                                "triggerable": false
                              },
                              {
                                "currency": "USD",
                                "exchange": "CCY",
                                "exchangeDataDelayedBy": 0,
                                "exchangeTimezoneName": "Europe/London",
                                "exchangeTimezoneShortName": "BST",
                                "firstTradeDateMilliseconds": 1070236800000,
                                "fullExchangeName": "CCY",
                                "gmtOffSetMilliseconds": 3600000,
                                "language": "en-US",
                                "market": "ccy_market",
                                "marketState": "REGULAR",
                                "priceHint": 4,
                                "quoteSourceName": "Delayed Quote",
                                "quoteType": "CURRENCY",
                                "region": "US",
                                "regularMarketChange": {
                                  "fmt": "0.0029",
                                  "raw": 0.0029371977
                                },
                                "regularMarketChangePercent": {
                                  "fmt": "0.23%",
                                  "raw": 0.22632584
                                },
                                "regularMarketPreviousClose": {
                                  "fmt": "1.2978",
                                  "raw": 1.2977574
                                },
                                "regularMarketPrice": {
                                  "fmt": "1.3007",
                                  "raw": 1.3006946
                                },
                                "regularMarketTime": {
                                  "fmt": "11:09PM BST",
                                  "raw": 1599689363
                                },
                                "shortName": "GBP/USD",
                                "sourceInterval": 15,
                                "symbol": "GBPUSD=X",
                                "tradeable": false,
                                "triggerable": false
                              },
                              {
                                "currency": "JPY",
                                "exchange": "CCY",
                                "exchangeDataDelayedBy": 0,
                                "exchangeTimezoneName": "Europe/London",
                                "exchangeTimezoneShortName": "BST",
                                "firstTradeDateMilliseconds": 846633600000,
                                "fullExchangeName": "CCY",
                                "gmtOffSetMilliseconds": 3600000,
                                "language": "en-US",
                                "market": "ccy_market",
                                "marketState": "REGULAR",
                                "priceHint": 4,
                                "quoteSourceName": "Delayed Quote",
                                "quoteType": "CURRENCY",
                                "region": "US",
                                "regularMarketChange": {
                                  "fmt": "0.2060",
                                  "raw": 0.20599365
                                },
                                "regularMarketChangePercent": {
                                  "fmt": "0.19%",
                                  "raw": 0.19442166
                                },
                                "regularMarketPreviousClose": {
                                  "fmt": "105.9520",
                                  "raw": 105.952
                                },
                                "regularMarketPrice": {
                                  "fmt": "106.1580",
                                  "raw": 106.158
                                },
                                "regularMarketTime": {
                                  "fmt": "11:10PM BST",
                                  "raw": 1599689420
                                },
                                "shortName": "USD/JPY",
                                "sourceInterval": 15,
                                "symbol": "JPY=X",
                                "tradeable": false,
                                "triggerable": false
                              },
                              {
                                "exchange": "CCC",
                                "exchangeDataDelayedBy": 0,
                                "exchangeTimezoneName": "Europe/London",
                                "exchangeTimezoneShortName": "BST",
                                "firstTradeDateMilliseconds": 1410908400000,
                                "fullExchangeName": "CCC",
                                "gmtOffSetMilliseconds": 3600000,
                                "language": "en-US",
                                "market": "ccc_market",
                                "marketState": "REGULAR",
                                "quoteSourceName": "CryptoCompare",
                                "quoteType": "CRYPTOCURRENCY",
                                "region": "US",
                                "regularMarketChange": {
                                  "fmt": "141.08",
                                  "raw": 141.07715
                                },
                                "regularMarketChangePercent": {
                                  "fmt": "1.39%",
                                  "raw": 1.3925841
                                },
                                "regularMarketPreviousClose": {
                                  "fmt": "10,130.60",
                                  "raw": 10130.602
                                },
                                "regularMarketPrice": {
                                  "fmt": "10,271.68",
                                  "raw": 10271.679
                                },
                                "regularMarketTime": {
                                  "fmt": "11:08PM BST",
                                  "raw": 1599689310
                                },
                                "sourceInterval": 15,
                                "symbol": "BTC-USD",
                                "tradeable": true,
                                "triggerable": false
                              },
                              {
                                "exchange": "NIM",
                                "exchangeDataDelayedBy": 0,
                                "exchangeTimezoneName": "America/New_York",
                                "exchangeTimezoneShortName": "EDT",
                                "firstTradeDateMilliseconds": 1546266600000,
                                "fullExchangeName": "Nasdaq GIDS",
                                "gmtOffSetMilliseconds": -14400000,
                                "language": "en-US",
                                "market": "us_market",
                                "marketState": "POST",
                                "priceHint": 2,
                                "quoteSourceName": "Delayed Quote",
                                "quoteType": "INDEX",
                                "region": "US",
                                "regularMarketChange": {
                                  "fmt": "6.75",
                                  "raw": 6.754898
                                },
                                "regularMarketChangePercent": {
                                  "fmt": "3.11%",
                                  "raw": 3.105599
                                },
                                "regularMarketPreviousClose": {
                                  "fmt": "217.51",
                                  "raw": 217.507
                                },
                                "regularMarketPrice": {
                                  "fmt": "224.26",
                                  "raw": 224.262
                                },
                                "regularMarketTime": {
                                  "fmt": "5:57PM EDT",
                                  "raw": 1599688629
                                },
                                "shortName": "CMC Crypto 200",
                                "sourceInterval": 15,
                                "symbol": "^CMC200",
                                "tradeable": false,
                                "triggerable": false
                              },
                              {
                                "exchange": "FGI",
                                "exchangeDataDelayedBy": 15,
                                "exchangeTimezoneName": "Europe/London",
                                "exchangeTimezoneShortName": "BST",
                                "firstTradeDateMilliseconds": 441964800000,
                                "fullExchangeName": "FTSE Index",
                                "gmtOffSetMilliseconds": 3600000,
                                "language": "en-US",
                                "market": "gb_market",
                                "marketState": "POSTPOST",
                                "priceHint": 2,
                                "quoteType": "INDEX",
                                "region": "US",
                                "regularMarketChange": {
                                  "fmt": "82.54",
                                  "raw": 82.54004
                                },
                                "regularMarketChangePercent": {
                                  "fmt": "1.39%",
                                  "raw": 1.3918359
                                },
                                "regularMarketPreviousClose": {
                                  "fmt": "5,930.30",
                                  "raw": 5930.3
                                },
                                "regularMarketPrice": {
                                  "fmt": "6,012.84",
                                  "raw": 6012.84
                                },
                                "regularMarketTime": {
                                  "fmt": "4:35PM BST",
                                  "raw": 1599665729
                                },
                                "shortName": "FTSE 100",
                                "sourceInterval": 15,
                                "symbol": "^FTSE",
                                "tradeable": false,
                                "triggerable": false
                              },
                              {
                                "exchange": "OSA",
                                "exchangeDataDelayedBy": 0,
                                "exchangeTimezoneName": "Asia/Tokyo",
                                "exchangeTimezoneShortName": "JST",
                                "firstTradeDateMilliseconds": -157420800000,
                                "fullExchangeName": "Osaka",
                                "gmtOffSetMilliseconds": 32400000,
                                "language": "en-US",
                                "market": "jp_market",
                                "marketState": "PREPRE",
                                "priceHint": 2,
                                "quoteType": "INDEX",
                                "region": "US",
                                "regularMarketChange": {
                                  "fmt": "-241.59",
                                  "raw": -241.5918
                                },
                                "regularMarketChangePercent": {
                                  "fmt": "-1.04%",
                                  "raw": -1.0380272
                                },
                                "regularMarketPreviousClose": {
                                  "fmt": "23,274.13",
                                  "raw": 23274.13
                                },
                                "regularMarketPrice": {
                                  "fmt": "23,032.54",
                                  "raw": 23032.54
                                },
                                "regularMarketTime": {
                                  "fmt": "3:15PM JST",
                                  "raw": 1599632102
                                },
                                "shortName": "Nikkei 225",
                                "sourceInterval": 20,
                                "symbol": "^N225",
                                "tradeable": false,
                                "triggerable": false
                              }
                            ]
                          }
                        }
                      }
                    }
                  }
                },
                "description": ""
              }
        }
      }
    },
    "/v1/finance/trending/{region}": {
      "get": {
        "tags": [
          "API"
        ],
        "parameters": [
          {
            "name": "region",
            "in": "path",
            "required": true,
            "description": "`US` `AU` `CA` `FR` `DE` `HK` `US` `IT` `ES` `GB` `IN`",
            "schema": {
              "type": "string",
              "example": "US"
            }
          }
        ],
        "operationId": "trending",
        "description": "Trending stocks",
        "responses": {
          "200": {
                "content": {
                  "application/json": {
                    "examples": {
                      "Response": {
                        "description": "",
                        "summary": "response",
                        "value": {
                          "finance": {
                            "error": null,
                            "result": [
                              {
                                "count": 20,
                                "jobTimestamp": 1599686343574,
                                "quotes": [
                                  {
                                    "symbol": "ITCI"
                                  },
                                  {
                                    "symbol": "BIGC"
                                  },
                                  {
                                    "symbol": "ZS"
                                  },
                                  {
                                    "symbol": "AZN"
                                  },
                                  {
                                    "symbol": "RH"
                                  },
                                  {
                                    "symbol": "JCPNQ"
                                  },
                                  {
                                    "symbol": "GME"
                                  },
                                  {
                                    "symbol": "TRIL"
                                  },
                                  {
                                    "symbol": "WKHS"
                                  },
                                  {
                                    "symbol": "DKNG"
                                  },
                                  {
                                    "symbol": "FCX"
                                  },
                                  {
                                    "symbol": "LAKE"
                                  },
                                  {
                                    "symbol": "TIF"
                                  },
                                  {
                                    "symbol": "PRPO"
                                  },
                                  {
                                    "symbol": "NCNO"
                                  },
                                  {
                                    "symbol": "DPHC"
                                  },
                                  {
                                    "symbol": "IBIO"
                                  },
                                  {
                                    "symbol": "OTRK"
                                  },
                                  {
                                    "symbol": "SLQT"
                                  },
                                  {
                                    "symbol": "LCA"
                                  }
                                ],
                                "startInterval": 202009092000
                              }
                            ]
                          }
                        }
                      }
                    }
                  }
                },
                "description": ""
              }
        }
      }
    }
  },
  "components":{
    "securitySchemes":{
      "ApiKeyAuth":{
        "type":"apiKey",
        "in":"header",
        "name":"X-API-KEY"
      }
    }
  },
  "security":[
    {
      "ApiKeyAuth":"[]"
    }
  ]
}
```

</details>

While they are charging the API service, the official Yahoo Finance
offers free access to their API. We just need to switch the server url
back to `https://query1.finance.yahoo.com` and use the same endpoint to
obtain the desired data. Hence, with these specifications, this document
aims to provide two functions to extract the OHLC and the price quotes
from the API using both Python and R.

## Extraction of OHLC Price

### Using Python

``` python
def getfromyahoo(symbol, interval, starttime, endtime, printUrl = False):
    """Extracting stock data from Yahoo Financa API
    
    Arguments:
        symbol      String     Stock symbol for Yahoo Finance. 
        
        interval    String     Data interval between two consective rows. 
                               Should be one of the following values:
                               ["1m", "2m", "5m", "10m", "15m", "30m",
                                "60m", "90m", "1h", "1d", "1wk", "1mo"].
                                
        startime    Integer    The epoch time indicating the starttime 
                               of the data.
        
        endtime     Integer    The epoch time indicating the endtime 
                               of the data.
    """
    import pandas as pd
    import numpy as np
    from functools import reduce
    import warnings, requests, json, sys, datetime
    
    starttime = int(starttime)
    endtime = int(endtime)
    
    baseurl = "https://query1.finance.yahoo.com/v8/finance/chart"
    url = "%s/%s?interval=%s&period1=%s&period2=%s" % (baseurl, symbol, interval, starttime, endtime)

    if printUrl: print(url)
    
    # GET response from API
    try:
        response = requests.get(url, timeout = 5, headers = {"User-Agent":""})
    except requests.exceptions.Timeout as e:
        warnings.warn('Timeout')
        print("Msg: " + str(e))
        return(None)
    except:
        e = sys.exc_info()[0]
        warnings.warn("Unknown error")
        print("Msg: " + str(e))
        return(None)
    
    
    if response != None:
        if response.status_code == 200:
            content = json.loads(response.content).get("chart").get("result")
            
            if len(content[0].get("indicators").get("quote")[0]) > 0:
                currency = np.nan if content[0].get("meta").get("currency") == None else content[0].get("meta").get("currency")
                
                timestamp = content[0].get("timestamp")
                
                quotes = content[0]["indicators"]["quote"][0]
                
                valid_cell = {key: set(i for i, x in enumerate(value) if x != None) for key, value in quotes.items()}
                valid_cell = list(reduce(set().union, valid_cell.values()))
                
                timestamp = {"datetime": [datetime.datetime.fromtimestamp(timestamp[i]) for i in valid_cell]}
                quotes = {key: [value[i] for i in valid_cell] for key, value in quotes.items()}
                
                outdf = pd.DataFrame.from_dict({**timestamp, **{"symbol": symbol}, **quotes, **{"currency": currency}})
                outdf = outdf[["datetime", "symbol", "open", "low", "high", "close", "volume", "currency"]]
                
                return(outdf)
                
            else: return(None)
        
        else:
            content = response.text
            msg = "\nsymbol: %s\nstatus: %s\ncontent: %s" % (symbol, response.status_code, content)
            warnings.warn(msg)
            return(None)
```

Below shows the result of the above function.

``` python
from datetime import datetime
from datetime import timedelta
response = getfromyahoo(
    "AAPL", 
    "1h", 
    int((datetime.today() - timedelta(days = 1)).timestamp()), 
    int(datetime.today().timestamp())
)
```

| datetime            | symbol |     open |     low |   high |    close |   volume | currency |
|:--------------------|:-------|---------:|--------:|-------:|---------:|---------:|:---------|
| 2021-12-21 14:30:00 | AAPL   | 171.5550 | 169.350 | 172.28 | 169.5729 | 21794239 | USD      |
| 2021-12-21 15:30:00 | AAPL   | 169.5850 | 169.120 | 170.70 | 170.2991 | 10926527 | USD      |
| 2021-12-21 16:30:00 | AAPL   | 170.3000 | 170.140 | 171.54 | 171.4850 |  9628582 | USD      |
| 2021-12-21 17:30:00 | AAPL   | 171.4900 | 170.660 | 171.53 | 170.9612 |  7513019 | USD      |
| 2021-12-21 18:30:00 | AAPL   | 170.9751 | 170.810 | 172.09 | 172.0800 |  8356597 | USD      |
| 2021-12-21 19:30:00 | AAPL   | 172.0800 | 172.020 | 173.04 | 172.5770 | 11188689 | USD      |
| 2021-12-21 20:30:00 | AAPL   | 172.5750 | 172.191 | 173.20 | 172.9800 |  8215740 | USD      |

### Using R

``` r
getfromyahoo <- function(symbol, interval, starttime, endtime, printUrl = FALSE){
    # The symbol can be found in https://finance.yahoo.com/
    # Valid intervals are 1m, 2m, 5m, 15m, 30m, 60m, 90m, 1h, 1d, 5d, 1wk, 1mo, 3mo
    # Starttime and endtime are in epoch format and should be in integer form correct to the nearest second
    
    starttime <- as.integer(as.numeric(starttime))
    endtime <- as.integer(as.numeric(endtime))
    
    baseurl <- "https://query1.finance.yahoo.com/v8/finance/chart"
    url <- sprintf("%s/%s?interval=%s&period1=%s&period2=%s", baseurl, symbol, interval, starttime, endtime)
    
    if (printUrl) print(url)
    
    # GET response from API
    response <- tryCatch(
        expr = httr::GET(url, httr::timeout(5)), 
        error = function(e) if (substr(e$message, 1, 7) == "Timeout") {
            return(list(status = "Timeout", error = e))
        } else {
            return(list(status = "Unknown error", error = e))
        }
    )
    
    if (class(response) == "response"){
        # Check the status
        if (response$status_code == 200){
            content <- httr::content(response)$chart$result
            
            # Double check if the content contains the quotes
            if (length(content[[1]]$indicators$quote[[1]]) > 0){
                currency <- ifelse(is.null(content[[1]]$meta$currency), NA, content[[1]]$meta$currency)
                
                # Extract the timestamp
                timestamp <- content[[1]]$timestamp
                
                # Extract the quotes
                eval(parse(text = sprintf("%1$s <- content[[1]]$indicators$quote[[1]]$%1$s", c("open", "low", "high", "close", "volume"))))
                
                # There are some nulls in the quotes. Identify the valid cells
                eval(parse(text = sprintf("%1$s.valid <- which(!sapply(%1$s, is.null))", c("open", "low", "high", "close", "volume"))))
                
                valid_cell <- Reduce(union, list(open.valid, low.valid, high.valid, close.valid, volume.valid))
                
                # Remove the entire rows if every quotes in those rows are nulls
                eval(parse(text = sprintf("%1$s <- unlist(%1$s[valid_cell])", c("timestamp", "open", "low", "high", "close", "volume"))))
                
                # Create the dataframe
                outdf <- data.frame(datetime = as.POSIXct(timestamp, origin = "1970-01-01"),
                                    symbol = symbol,
                                    open = open, 
                                    low = low, 
                                    high = high, 
                                    close = close,
                                    volume = volume,
                                    currency = currency)
                return(outdf)
            } else return(NA)
        } else {
            content <- httr::content(response)
            msg <- sprintf("\nsymbol: %s\nstatus: %s\ncontent: %s", symbol, response$status_code, content)
            warning(msg)
            return(NA)
        }
    } else {
        msg <- sprintf("\nsymbol: %s\nstatus: %s\nerror: %s", symbol, response$status, response$error)
        warning(msg)
        return(NA)
    }
}
```

Below shows the result of the above function.

``` r
response <- getfromyahoo("AAPL", "1h", Sys.time() - 24*60*60, Sys.time())
```

| datetime            | symbol |     open |     low |   high |    close |   volume | currency |
|:--------------------|:-------|---------:|--------:|-------:|---------:|---------:|:---------|
| 2021-12-21 14:30:00 | AAPL   | 171.5550 | 169.350 | 172.28 | 169.5729 | 21794239 | USD      |
| 2021-12-21 15:30:00 | AAPL   | 169.5850 | 169.120 | 170.70 | 170.2991 | 10926527 | USD      |
| 2021-12-21 16:30:00 | AAPL   | 170.3000 | 170.140 | 171.54 | 171.4850 |  9628582 | USD      |
| 2021-12-21 17:30:00 | AAPL   | 171.4900 | 170.660 | 171.53 | 170.9612 |  7513019 | USD      |
| 2021-12-21 18:30:00 | AAPL   | 170.9751 | 170.810 | 172.09 | 172.0800 |  8356597 | USD      |
| 2021-12-21 19:30:00 | AAPL   | 172.0800 | 172.020 | 173.04 | 172.5770 | 11188689 | USD      |
| 2021-12-21 20:30:00 | AAPL   | 172.5750 | 172.191 | 173.20 | 172.9800 |  8215740 | USD      |

## Extraction of Price Quote

### Using Python

``` python
def yahooQuotes(symbols):
    import requests
    import json
    import pandas as pd
    if isinstance(symbols, list): symbol = ",".join(symbols)
    if isinstance(symbols, str): symbol = symbols
    url = "https://query1.finance.yahoo.com/v6/finance/quote?symbols=" + symbol
    response = requests.get(url, headers = {"User-Agent":""})
    if response.ok:
        content = json.loads(response.content)
        result = content["quoteResponse"]["result"]
        if len(result) > 0:
            if len(result) == 1: return(result[0])
            result = pd.DataFrame(result)
            return(result)
    else:
        return(None)
```

Below shows the result of the above function.

``` python
response = yahooQuotes(["0001.HK", "AAPL"])
```

| language | region | quoteType | quoteSourceName | triggerable | currency | shortName    | marketState | firstTradeDateMilliseconds | priceHint | regularMarketChange | regularMarketChangePercent | regularMarketTime | regularMarketPrice | regularMarketDayHigh | regularMarketDayRange | regularMarketDayLow | regularMarketVolume | regularMarketPreviousClose |  bid |   ask | bidSize | askSize | fullExchangeName | financialCurrency | regularMarketOpen | averageDailyVolume3Month | averageDailyVolume10Day | fiftyTwoWeekLowChange | fiftyTwoWeekLowChangePercent | fiftyTwoWeekRange | fiftyTwoWeekHighChange | fiftyTwoWeekHighChangePercent | fiftyTwoWeekLow | fiftyTwoWeekHigh | earningsTimestamp | earningsTimestampStart | earningsTimestampEnd | trailingAnnualDividendRate | trailingPE | trailingAnnualDividendYield | epsTrailingTwelveMonths | epsForward | sharesOutstanding | bookValue | fiftyDayAverage | fiftyDayAverageChange | fiftyDayAverageChangePercent | twoHundredDayAverage | twoHundredDayAverageChange | twoHundredDayAverageChangePercent |    marketCap | forwardPE | priceToBook | sourceInterval | exchangeDataDelayedBy | averageAnalystRating | tradeable | exchange | longName                      | messageBoardId | exchangeTimezoneName | exchangeTimezoneShortName | gmtOffSetMilliseconds | market    | esgPopulated | symbol  | postMarketChangePercent | postMarketTime | postMarketPrice | postMarketChange | dividendDate | epsCurrentYear | priceEpsCurrentYear | pageViewGrowthWeekly | displayName |
|:---------|:-------|:----------|:----------------|:------------|:---------|:-------------|:------------|---------------------------:|----------:|--------------------:|---------------------------:|------------------:|-------------------:|---------------------:|:----------------------|--------------------:|--------------------:|---------------------------:|-----:|------:|--------:|--------:|:-----------------|:------------------|------------------:|-------------------------:|------------------------:|----------------------:|-----------------------------:|:------------------|-----------------------:|------------------------------:|----------------:|-----------------:|------------------:|-----------------------:|---------------------:|---------------------------:|-----------:|----------------------------:|------------------------:|-----------:|------------------:|----------:|----------------:|----------------------:|-----------------------------:|---------------------:|---------------------------:|----------------------------------:|-------------:|----------:|------------:|---------------:|----------------------:|:---------------------|:----------|:---------|:------------------------------|:---------------|:---------------------|:--------------------------|----------------------:|:----------|:-------------|:--------|------------------------:|---------------:|----------------:|-----------------:|-------------:|---------------:|--------------------:|---------------------:|:------------|
| en-US    | US     | EQUITY    | Delayed Quote   | FALSE       | HKD      | CKH HOLDINGS | REGULAR     |               946949400000 |         3 |          -0.1000023 |                 -0.2024338 |        1640150916 |              49.30 |                 49.6 | 49.15 - 49.6          |               49.15 |             1621059 |                      49.40 | 49.3 | 49.35 |       0 |       0 | HKSE             | HKD               |            49.400 |                  4074951 |                 4302830 |               0.50000 |                    0.0102459 | 48.8 - 65.8       |             -16.500004 |                    -0.2507599 |           48.80 |            65.80 |        1628161140 |             1647428340 |           1647864000 |                       2.50 |   4.772507 |                   0.0506073 |                   10.33 |      10.81 |        3834720000 |   136.695 |          51.634 |              -2.33400 |                   -0.0452028 |             57.31175 |                  -8.011749 |                        -0.1397924 | 1.890517e+11 |  4.560592 |   0.3606569 |             15 |                     0 | 1.7 - Buy            | FALSE     | HKG      | CK Hutchison Holdings Limited | finmb_411322   | Asia/Hong_Kong       | HKT                       |              28800000 | hk_market | FALSE        | 0001.HK |                     NaN |            NaN |             NaN |              NaN |          NaN |            NaN |                 NaN |                  NaN | NaN         |
| en-US    | US     | EQUITY    | Delayed Quote   | TRUE        | USD      | Apple Inc.   | PREPRE      |               345479400000 |         2 |           3.2400055 |                  1.9086925 |        1640120403 |             172.99 |                173.2 | 169.12 - 173.2        |              169.12 |            83331194 |                     169.75 |  0.0 |  0.00 |      13 |       8 | NasdaqGS         | USD               |           171.555 |                 89890835 |               133835440 |              56.78001 |                    0.4885983 | 116.21 - 182.13   |              -9.139999 |                    -0.0501839 |          116.21 |           182.13 |        1635438600 |             1643144400 |           1643662800 |                       0.85 |  30.836008 |                   0.0050074 |                    5.61 |       6.18 |       16406400000 |     3.841 |         156.872 |              16.11801 |                    0.1027463 |            141.74980 |                  31.240204 |                         0.2203898 | 2.838143e+12 | 27.991910 |  45.0377500 |             15 |                     0 | 1.8 - Buy            | FALSE     | NMS      | Apple Inc.                    | finmb_24937    | America/New_York     | EST                       |             -18000000 | us_market | FALSE        | AAPL    |              -0.2427875 |     1640134793 |          172.57 |       -0.4199982 |   1636588800 |           5.74 |            30.13763 |             0.034105 | Apple       |

### Using R

``` r
yahooQuotes <- function(symbols) {
    symbol <- paste0(symbols, collapse = ",")
    url <- paste0("https://query1.finance.yahoo.com/v6/finance/quote?symbols=", symbol)
    response <- httr::GET(url)
    if (response$status_code == 200) {
        content <- httr::content(response)
        if (length(content$quoteResponse$result) > 0){
        if (length(content$quoteResponse$result) == 1) result <- content$quoteResponse$result[[1]]
        result <- plyr::rbind.fill(lapply(content$quoteResponse$result, as.data.frame))
        if (length(symbols) > length(result$symbol)) {
            missingSymbols <- setdiff(symbols, result$symbol)
            warning(sprintf("The following symbol(s) are missing from the result: %s", paste(missingSymbols, collapse = ", ")))
        }
        return(result)
        } else {
        warning("No result found, returning NA")
        return(NA)
        }
    }
}
```

Below shows the result of the above function.

``` r
knitr::kable(yahooQuotes(c("0001.HK", "AAPL")))
```

| language | region | quoteType | quoteSourceName | triggerable | currency | regularMarketChange | regularMarketChangePercent | regularMarketTime | regularMarketPrice | regularMarketDayHigh | regularMarketDayRange | regularMarketDayLow | regularMarketVolume | regularMarketPreviousClose |  bid |   ask | bidSize | askSize | fullExchangeName | financialCurrency | regularMarketOpen | averageDailyVolume3Month | averageDailyVolume10Day | fiftyTwoWeekLowChange | fiftyTwoWeekLowChangePercent | fiftyTwoWeekRange | fiftyTwoWeekHighChange | fiftyTwoWeekHighChangePercent | fiftyTwoWeekLow | fiftyTwoWeekHigh | firstTradeDateMilliseconds | priceHint | market    | shortName    | earningsTimestamp | earningsTimestampStart | earningsTimestampEnd | trailingAnnualDividendRate | trailingPE | trailingAnnualDividendYield | epsTrailingTwelveMonths | epsForward | sharesOutstanding | bookValue | fiftyDayAverage | fiftyDayAverageChange | fiftyDayAverageChangePercent | twoHundredDayAverage | twoHundredDayAverageChange | twoHundredDayAverageChangePercent |    marketCap | forwardPE | priceToBook | sourceInterval | exchangeDataDelayedBy | averageAnalystRating | exchange | longName                      | messageBoardId | exchangeTimezoneName | marketState | exchangeTimezoneShortName | gmtOffSetMilliseconds | esgPopulated | tradeable | symbol  | postMarketChangePercent | postMarketTime | postMarketPrice | postMarketChange | dividendDate | epsCurrentYear | priceEpsCurrentYear | pageViewGrowthWeekly | displayName |
|:---------|:-------|:----------|:----------------|:------------|:---------|--------------------:|---------------------------:|------------------:|-------------------:|---------------------:|:----------------------|--------------------:|--------------------:|---------------------------:|-----:|------:|--------:|--------:|:-----------------|:------------------|------------------:|-------------------------:|------------------------:|----------------------:|-----------------------------:|:------------------|-----------------------:|------------------------------:|----------------:|-----------------:|---------------------------:|----------:|:----------|:-------------|------------------:|-----------------------:|---------------------:|---------------------------:|-----------:|----------------------------:|------------------------:|-----------:|------------------:|----------:|----------------:|----------------------:|-----------------------------:|---------------------:|---------------------------:|----------------------------------:|-------------:|----------:|------------:|---------------:|----------------------:|:---------------------|:---------|:------------------------------|:---------------|:---------------------|:------------|:--------------------------|----------------------:|:-------------|:----------|:--------|------------------------:|---------------:|----------------:|-----------------:|-------------:|---------------:|--------------------:|---------------------:|:------------|
| en-US    | US     | EQUITY    | Delayed Quote   | FALSE       | HKD      |          -0.1000023 |                 -0.2024338 |        1640150916 |              49.30 |                 49.6 | 49.15 - 49.6          |               49.15 |             1621059 |                      49.40 | 49.3 | 49.35 |       0 |       0 | HKSE             | HKD               |            49.400 |                  4074951 |                 4302830 |               0.50000 |                    0.0102459 | 48.8 - 65.8       |             -16.500004 |                    -0.2507599 |           48.80 |            65.80 |               946949400000 |         3 | hk_market | CKH HOLDINGS |        1628161140 |             1647428340 |           1647864000 |                       2.50 |   4.772507 |                   0.0506073 |                   10.33 |      10.81 |        3834720000 |   136.695 |          51.634 |              -2.33400 |                   -0.0452028 |             57.31175 |                  -8.011749 |                        -0.1397924 | 1.890517e+11 |  4.560592 |   0.3606569 |             15 |                     0 | 1.7 - Buy            | HKG      | CK Hutchison Holdings Limited | finmb_411322   | Asia/Hong_Kong       | REGULAR     | HKT                       |              28800000 | FALSE        | FALSE     | 0001.HK |                      NA |             NA |              NA |               NA |           NA |             NA |                  NA |                   NA | NA          |
| en-US    | US     | EQUITY    | Delayed Quote   | TRUE        | USD      |           3.2400055 |                  1.9086925 |        1640120403 |             172.99 |                173.2 | 169.12 - 173.2        |              169.12 |            83331194 |                     169.75 |  0.0 |  0.00 |      13 |       8 | NasdaqGS         | USD               |           171.555 |                 89890835 |               133835440 |              56.78001 |                    0.4885983 | 116.21 - 182.13   |              -9.139999 |                    -0.0501839 |          116.21 |           182.13 |               345479400000 |         2 | us_market | Apple Inc.   |        1635438600 |             1643144400 |           1643662800 |                       0.85 |  30.836008 |                   0.0050074 |                    5.61 |       6.18 |       16406400000 |     3.841 |         156.872 |              16.11801 |                    0.1027463 |            141.74980 |                  31.240204 |                         0.2203898 | 2.838143e+12 | 27.991910 |  45.0377500 |             15 |                     0 | 1.8 - Buy            | NMS      | Apple Inc.                    | finmb_24937    | America/New_York     | PREPRE      | EST                       |             -18000000 | FALSE        | FALSE     | AAPL    |              -0.2427875 |     1640134793 |          172.57 |       -0.4199982 |   1636588800 |           5.74 |            30.13763 |             0.034105 | Apple       |

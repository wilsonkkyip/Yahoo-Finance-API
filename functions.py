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
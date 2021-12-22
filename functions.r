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

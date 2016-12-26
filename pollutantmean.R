pollutantmean <- function(directory, pollutant, id) {
      
      polldata <- numeric()
      
      for (key in id) {
            id <- sprintf("%03d", key)
            a <- read.csv(paste(directory, '/' , id, '.csv', sep=''))
            b <- a[, pollutant]
            polldata <- append(polldata, b)
      }
      
      return(mean(polldata, na.rm = TRUE))
}
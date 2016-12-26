complete <- function(directory, id) {
      
      nobs <- numeric()
      
      for (key in id) {
            
            id_new <- sprintf("%03d", key)
            
            a <- read.csv(paste(directory, '/' , id_new, '.csv', sep=''))
            
            b <- sum((!is.na(a$sulfate)) & (!is.na(a$nitrate)))
            
            nobs <- append(nobs, b)
            
      }
      df <- data.frame(id, nobs)
      return(df)      
}
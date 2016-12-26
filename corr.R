corr <- function(directory, threshold = 0) {
      
      corre <- numeric()
      
      for (key in 1:332) {
            
            id_new <- sprintf("%03d", key)
            
            a <- read.csv(paste(directory, '/' , id_new, '.csv', sep=''))
            
            b <- sum((!is.na(a$sulfate)) & (!is.na(a$nitrate)))
            
            if (b>threshold) {
                  c <- cor(a$sulfate, a$nitrate, use="complete")
                  corre <- append(corre, c)
            }
      }
      return(corre)      
}
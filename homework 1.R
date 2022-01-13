rm(list = ls())
library(SciViews)
BBMerton <- function(S0, K, r, sigma, T, optType){
  
  if(optType=='c'){
    d1 <- (log(S0/K) + (r + sigma^2/2) * T) / sigma * sqrt(T)
    d2 <- d1 - sigma * sqrt(T)
    
    call <- S0*pnorm(d1) - K * exp(-r*T) * pnorm(d2)
    return(call)}
  
  if(optType=='p'){
    d1 <- (log(S0/K) + (r + sigma^2/2) * T) / sigma * sqrt(T)
    d2 <- d1 - sigma * sqrt(T)
    
    put <- -S0*pnorm(-d1) + K * exp(-r*T) * pnorm(-d2)
    return(put)}
  
  output <- list('European_call' = call, 'European_put' = put)
  return(output)
}

## Q1   Variables for the European Call and Put Option
K <- 50       # Strike Price
S0 <- 50      # Current Price
r <- 0.05     # Risk Free rate
sigma <- 0.40 # Volatility <- 1  


#     Q2  Pricing Option Prices
##    The European prices
Europeran_call<- BBMerton(50, 50, 0.05, 0.40, 1, 'c')
European_put <- BBMerton(50, 50, 0.05, 0.40, 1, 'p')

##    Printing results with Description
sprintf('The price of the call option is $%5.2f', Europeran_call)
sprintf('The rice of the put option is $%5.2f' , European_put)


########################################################
###   Q3 with changing variables with K=$40
K <- seq(40, 60)       # Strike Price
S0 <- 50      # Current Price
r <- 0.05     # Risk Free rate
sigma <- 0.40 # Volatility
T <- 1 

Europeran_call.2<- BBMerton(40, 50, 0.05, 0.40, 1, 'c')
European_put.2 <- BBMerton(40, 50, 0.05, 0.40, 1, 'p')

##    Printing results with Description
sprintf('The price of the call option is $%5.2f', Europeran_call.2)
sprintf('The rice of the put option is $%5.2f' , European_put.2)


###   Q3 with changing variables with K=$60
K <- 60       # Strike Price
S0 <- 50      # Current Price
r <- 0.05     # Risk Free rate
sigma <- 0.40 # Volatility
T <- 1 

Europeran_call.3<- BBMerton(60, 50, 0.05, 0.40, 1, 'c')
European_put.3 <- BBMerton(60, 50, 0.05, 0.40, 1, 'p')

##    Printing results with Description
sprintf('The price of the call option is $%5.2f', Europeran_call.3)
sprintf('The rice of the put option is $%5.2f' , European_put.3)

###     Saving the results in Data Frame

Prices <- c(9.01, 6.57, 3.79, 11.35, 16.12, 3.68)
opt_type <- c('European_call', 'European_put', 'European_call.2', 'European_put.2', 
              'European_call.3', 'European_put.3')
df <- data.frame(opt_type, Prices)
df


Q4 <- matrix(NA,
             nrow = length(European_put),
             ncol = 6)
Q4 <- as.data.frame(Q4)

names(Q4) <- c('European_call', 'European_put', 'European_call.2', 'European_put.2', 
               'European_call.3', 'European_put.3') 

Q4$European_call <- European_call
Q4$European_put <- European_put
Q4$European_call.2 <- European_call.2
Q4$European_put.2 <- European_put.2
Q4$European_call.3 <- European_call.3
Q4$European_put.3 <- European_put.3


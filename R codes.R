# Session 8

# Create vector of possible Q values
q <- seq(from = 1000, to = 50000, by = 1000)
# ^ from 1000 to 50000, incremented by 1000

cost <- (0.24*q) + (37500000/q)
plot(q, cost)
min(cost)

# add to a dataframe: df <- data.frame(q, cost)
cost == min(cost) # Test
# Tell index of the true value
index <- which(cost == min(cost))
q[index] # Get value at index of min value

# Inverse Normal Probabilities in R
# dnorm()
qnorm(p =, mean =, sd =) # Inverse normal probability 
qnorm(p=0.60, mean=200, sd=15)
qnorm(p=0.8666, mean=8000, sd=500)

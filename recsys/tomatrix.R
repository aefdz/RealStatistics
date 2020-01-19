# Package necessary for transaction analysis

install.packages("arules")

require(arules)

# Load data

Shopping_Cart <- read.transactions("groceries.csv", sep=",")

# Database checking

summary(Shopping_Cart)

itemFrequencyPlot(Shopping_Cart, topN=20)

# Convert data to a numeric matrix

as(Shopping_Cart, "matrix")

aux<-as(Shopping_Cart, "matrix")*1

# Save results to file

write.csv((as(Shopping_Cart, "matrix")*1), file = "Shopping_Cart.csv", row.names=FALSE)
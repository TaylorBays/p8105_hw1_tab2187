install.packages("palmerpenguins")
data("penguins", package = "palmerpenguins")
p8105_hw1_tab2187 = read.table("penguins", header = TRUE)
###########Problem 1##########################
#to look at the first 10 or 20 rows of data
head(penguins, 20)
#Number of Rows
nrow(penguins)
#Number of Columns
ncol(penguins)
#Excluding Values that are NA
na.rm = TRUE
#Mean of Flipper Length
flipperlength =penguins$flipper_length_mm
mean(flipperlength, na.rm = TRUE)
#show a five number summary of flipperlength
fivenum(flipperlength, na.rm = TRUE)
#with a five number summary with annotation
summary(flipperlength, na.rm= TRUE)
#Mean of Bill Length
billlength =penguins$bill_length_mm
mean(billlength, na.rm = TRUE)
#show a five number summary of billlength
fivenum(billlength, na.rm = TRUE)
#with a five number summary with annotation
summary(billlength, na.rm= TRUE)
#look for summary with each variable in data set
summary(penguins, na.rm= TRUE)

###Simple Scatterplot########

#make a scatterplot using the data in flipperlength and billlength
# Simple Scatterplot
plot(flipperlength, billlength, main="Scatterplot",
     xlab="Bill Length ", ylab="Flipper Length ", pch=19)
##Adding Color to Plot
library(ggplot2)
ggplot(penguins,aes(x=billlength,y=flipperlength))+ geom_point(color="blue")


##############Problem 2############################
#Creating a Normal Distribution
library(tibble)
example_df = tibble(
  vec_numeric = 5:8,
  vec_char = c("My", "name", "is", "Jeff"),
  vec_logical = c(TRUE, TRUE, TRUE, FALSE),
  vec_factor = factor(c("male", "male", "female", "female"))
)

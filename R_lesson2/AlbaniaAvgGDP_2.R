#   This script computes the average GDP for Albania using the gapminder dataset

# location of the data
filename <- '../Data/gapminder.txt'

# read the data file
gapminder <- read.table (filename, header = TRUE)

# create a variable to store a country name
countryName <- 'Albania'

# select the rows where the country is (Albania) and store albaniaData
albaniaData <- gapminder[gapminder$country == "Albania",]

# select the column containing the GDP per capita from our Albania data
albaniaGDP <- albaniaData$gdpPercap

# computing the average GDP value
albaniaAverageGdp <- mean(albaniaGDP)

# print a message with the result
print(paste("The average GDP of", countryName, 'is', albaniaAverageGdp))

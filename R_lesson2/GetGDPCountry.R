# This script computes GDP for a country using the gapminder data

# clear all variables
rm(list=ls())

# location of the data
filename <- "../Data/gapminder.txt"

#read the data file
gapminder <- read.table(filename, header = TRUE)

# extract gdpPercap from the gapminder data, using a specific country
getAverageGdpPerCapita <- function(country,gapminder) {
  selectedCountryData <- gapminder[gapminder$country == country, "gdpPercap"]
  mean(selectedCountryData)
}

gdpUSA <- getAverageGdpPerCapita("United_States",gapminder)
gdpMexico <- getAverageGdpPerCapita("Mexico",gapminder)
gdpCanada <- getAverageGdpPerCapita("Canda",gapminder)



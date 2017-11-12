## This is life expectancy across years script ##

myDataFull <- read.table("Data/gapminder.txt", header = TRUE)

# Extracting only the country Canada
Canada <- myDataFull[myDataFull$country == "Canada",]

### Plot life expectancy over the years

plot(Canada$year, Canada$lifeExp, col = "blue", type = "l")

## Open the file
png("Canada.png")

plot(Canada$year, Canada$lifeExp, col = "blue", type = "l")

# Close the device
dev.off()

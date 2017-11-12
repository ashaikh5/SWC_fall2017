
fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * 5/9) + 273.15
    kelvin
}

fahr_to_kelvin(32)
print(paste("Boiling point of water", fahr_to_kelvin(212)))

kelvin_to_celsius <- function(temp) {
  celsius <- temp - 273.15
  celsius
}

  fahr_to_celsius <- function(temp) {
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  result
  }
  
  print(paste("Boiling point of water in celsius", fahr_to_celsius(212)))
  fahr_to_celsius(212)

 
  
 
  

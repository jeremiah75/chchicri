setwd("C:/Users/olego/Desktop/New")
soil <- read.table("LosadaSuelos.csv",header=T,sep=",")

if (soil$pHCaCl2 < 4.5) { 
  soil$Acidez == "Extrema"
} else {
  soil$Acidez[i] == "Moderada"
}

# [1] FALSE
# Warning message:
#   In if (soil$pHCaCl2 < 4.5) { :
#       the condition has length > 1 and only the first element will be used

# You get the error because if can only evaluate a logical vector of length 1!!!!!!!!!!!!!!!

for ( i in 1:nrow(soil)) {
  if (soil$pHCaCl2[i] < 4.5) { 
    soil$Acidez[i] <- "Extrema"
    } else {
      soil$Acidez[i] <- "Moderada"
    }
}


start_time <- Sys.time()
for ( i in 1:nrow(soil)) {
  if (soil$pHCaCl2[i] < 4.5) { 
    soil$Acidez[i] <- "Extrema"
  } else {
    soil$Acidez[i] <- "Moderada"
  }
}
end_time <- Sys.time()
end_time - start_time
# Time difference of 1.045919 secs (very slow!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!)


start_time <- Sys.time()
for ( i in 1:nrow(soil)) {
  if (soil$pHCaCl2[i] < 4.5) { 
    soil$Acidez[i] <- "Extrema"
  } else if (soil$pHCaCl2[i] >= 4.5 & soil$pHCaCl2[i] < 5) {
    soil$Acidez[i] <- "Elevada"
  } else {
    soil$Acidez[i] <- "Moderada"
  }
}
end_time <- Sys.time()
end_time - start_time
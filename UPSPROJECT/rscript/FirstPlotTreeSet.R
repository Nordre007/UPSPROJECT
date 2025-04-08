system("Java -cp javatest/TreeSetTest")
#Uppdatera classpathen och vilka argument man ska köra

plotresult <- function(file, start = 1) {   
   data <- read.csv(file)
   data <- data[start:nrow(data),]
   plot(data, type = 'l',
      ylab = "tid i ns",
      xlab=  "iterationer")
}

#en start men inte klart, kommer inte gå att köra på skoldatorn pågrund av 
#förlite utrymme
plotresult("addInt.pdf") # plot to screen
pdf("addInt.txt")
plotresult("addInt.pdf") # plot to pdf file
dev.off()
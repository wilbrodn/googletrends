library(gtrendsR)
library(tidyverse)


ug<-gtrends("NSSF Uganda")

interest<-ug$interest_over_time
country<-ug$interest_by_country
dma<-ug$interest_by_dma
relatedTopics<-ug$related_topics
relatedQueries<-ug$related_queries

str(interest)

plot(data = interest, aes(x= date, y = hits, color=gprop)) + geom_col()

ugke <- plot(gtrends(c("NSSF Uganda", "NSSF Kenya"), time = "all"))
ugketz <- plot(gtrends(c("NSSF Uganda", "NSSF Kenya", "NSSF Tanzania"), time = "all"))

ugketzsa <- plot(gtrends(c("NSSF Uganda", "NSSF Kenya", "NSSF Tanzania", "SASSA South Africa"), time = "all"))




rm(list = ls())

library(gtrendsR)
library(tidyverse)
library(plotly)

ug<-gtrends("NSSF Uganda", time = "all")

interest<-ug$interest_over_time
country<-ug$interest_by_country
dma<-ug$interest_by_dma
relatedTopics<-ug$related_topics
relatedQueries<-ug$related_queries

str(interest)


ggplotly(ggplot(data = interest, aes(x= date, y = hits, fill=gprop)) + geom_col() + geom_smooth())

ugke <- plot(gtrends(c("NSSF Uganda", "NSSF Kenya"), time = "all"))
ugketz <- plot(gtrends(c("NSSF Uganda", "NSSF Kenya", "NSSF Tanzania"), time = "all"))

ugketzsa <- plot(gtrends(c("NSSF Uganda", "NSSF Kenya", "NSSF Tanzania", "SASSA South Africa"), time = "all"))



library(tidyverse)
library(dplyr)
library(naniar)
library(viridis)
library(visdat)
library(ggplot2)


df <- read.csv("Telco-Customer-Churn.csv")

#check is any null value
vis_dat(df)

#visual number of churn Yes and No
ggplot(data = df) +
  geom_bar(mapping = aes(x=Churn,fill = Churn)) +
  scale_fill_brewer(palette="Dark2")



#list column name 
#colnames(df)

# count the number of unique value in each columns
#as.data.frame(table(df_feature$Segment))
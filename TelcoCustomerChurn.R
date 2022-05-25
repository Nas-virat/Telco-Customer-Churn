library(tidyverse)
library(dplyr)
library(naniar)
library(viridis)
library(visdat)
library(ggplot2)
library(rpart)
library(rpart.plot)
library(caret)

df <- read.csv("Telco-Customer-Churn.csv")

#check is any null value
vis_dat(df)

#visual number of churn Yes and No
ggplot(data = df) +
  geom_bar(mapping = aes(x=Churn,fill = Churn)) +
  scale_fill_brewer(palette="Dark2")

#Distribution of tenure and Churn
# Is the longer tenure make less Churn 
ggplot(df,aes(x=tenure,fill = Churn))+
  geom_histogram(binwidth = 2 ,alpha=0.5, position="identity")+
  ggtitle("Distribution of tenure and Churn")+
  xlab("tenure (months)")+
  ylab("Number of Customer")

#Distrubution of TotalCharges and Churn
# Is TotalCharges tell us about the Churn of each customer
ggplot(df,aes(x=TotalCharges,fill = Churn))+
  geom_histogram(binwidth = 100 ,alpha=0.6, position="identity")+
  ggtitle("Distribution of TotalCharges and Churn")+
  xlab("TotalCharges (Dollar)")+
  ylab("Number of Customer")

# Is payment Method tell us about the Churn of each customer




#is the contract type related to tenure of the customer
as.data.frame(table(df$Contract))
ggplot(df,aes(x=TotalCharges,fill = Churn))+
  geom_histogram(binwidth = 100 ,alpha=0.6, position="identity")+
  ggtitle("Distribution of tenure and ")+
  xlab("TotalCharges (Dollar)")+
  ylab("Number of Customer")

#list column name 
#colnames(df)

# count the number of unique value in each columns
#as.data.frame(table(df_feature$Segment))

#model <- glm(Churn ~ )
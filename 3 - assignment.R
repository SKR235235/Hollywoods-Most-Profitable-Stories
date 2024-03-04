df<- read.csv("https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv")

View(df)

install.packages("tidyverse")

library(tidyverse)

str(df)

colSums(is.na(df))

df <- na.omit(df)

colSums(is.na(df))

summary(df)

ggplot(df, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + 
  geom_point()+ scale_y_continuous(labels = scales::comma)+
  coord_cartesian(ylim = c(0, 110))+theme(axis.text.x = element_text(angle = 90))

ggplot(df, aes(x=Year)) + geom_bar()

write.csv(df, "clean_df.csv")



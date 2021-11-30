library("tidyverse")
library("ggplot2")
library("plotly")
library("hrbrthemes")
library("fpp2")
library("repr")
library("viridisLite")
library("viridis")
library("lubridate")
library("scales")
options(repr.plot.width=10, repr.plot.height = 5)

sea_level <- read.csv("sea-level-rise.csv")
str(sea_level)


#Rename the columns
sea_level <- rename(sea_level, Date = Day)
sea_level <- sea_level %>% 
  select(Date,sea_level_rise_average) %>% 
  filter(Date >= as.Date("1993-01-01"))

#Set the column format to the international format
sea_level$Date = as.Date(sea_level$Date)

#Check for missing values
sea_level %>% summarise(na_Date = sum(is.na(Date)), na_sea_level_rise_average = sum(is.na(sea_level_rise_average)))

#Plot 
ggplot(data = sea_level, aes(x=Date, y=sea_level_rise_average))+
  # geom_area(fill="#006994", alpha=0.5)+
  geom_line(color = "#006994")+
  ylab("sea_level_rise_average")+
  theme_minimal()+
  scale_x_date(date_breaks = "2 year",   labels = date_format("%Y")) +
  labs(title= "Global Mean Sea Level", y = "Change in sea level compared to 1993-2008 average (mm)")+
  geom_smooth(method = lm, color="#404040",alpha=0.2,se=FALSE)

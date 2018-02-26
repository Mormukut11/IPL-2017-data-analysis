ipl<-read.csv(file.choose(),na.string='')
head(ipl)
str(ipl)
sum(is.na(ipl))
library("ggplot2")
ggplot(data=ipl,aes(x=dismissal_kind))+geom_bar(color='pink',fill='blue')
ipl2<-read.csv(file.choose(),na.string=NA)
head(ipl2)
str(ipl2)
sum(is.na(ipl2))
ipl2$umpire3<-NULL
ipl2$dl_applied
#player of match mismatch
ggplot(data=ipl2,aes(x=season,y=player_of_match))+geom_point(color='pink',fill='blue')

ggplot(data=ipl2,aes(x=win_by_runs,y=win_by_wickets))+geom_point(color='pink',fill='blue')
ggplot(data=ipl2,aes(x=city,y=season))+geom_point(aes(fill=winner))








ICC_WC_T20 <- c("Australia",
                "India",
                "South Africa",
                "New Zealand",
                "Sri Lanka",
                "England",
                "Bangladesh",
                "Pakistan",
                "West Indies",
                "Ireland",
                "Zimbabwe",
                "Afghanistan")

#extract geo location of these countries
library(ggmap)
countries <- geocode(ICC_WC_T20)

#map longitude and latitude in separate variables
nation.x <- countries$lon
nation.y <- countries$lat

#using ggplot to plot the world map
head(world)
mapWorld <- borders("world", colour="grey", fill="lightblue")
help(borders)
#add data points to the world map
ggplot() + mapWorld + geom_point(aes(x=nation.x, y=nation.y) ,color="#6d0610", size=3)

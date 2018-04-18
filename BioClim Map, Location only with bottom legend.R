library(ggplot2)
library(ggmap) # get map from google maps
library(rgdal)  
library(raster)
library(plyr)

Locations <- read.csv("file:///C:/Users/jeffc/Documents/MSc/MSc 2018 Courses/BIOL 812/Group Assignment/Climate data/metadata_apr_6 (JC V3, lat, long fixed).csv")
Locations <- Locations[c(2, 6:7)] # only keep species and lat, long

LocRange <- c(min(Locations$long)-1, min(Locations$lat)-1, max(Locations$long)+1, max(Locations$lat)+1 )

setwd("\\Users\\jeffc\\Documents\\MSc\\MSc 2018 Courses\\BIOL 812\\Group Assignment\\Climate data\\CM10_1975H_Bio_ESRI_V1.2")

Files <- list.files("./CM10_1975H_Bio_V1.2",pattern='w001001.adf',recursive=TRUE,full.names=TRUE)
Files


Predictors <- stack(Files) #load files 
names(Predictors)
Predictors2 <- Predictors #make a second predictor, for different condensed naming

Bioclimnames <- read.csv("file:///C:/Users/jeffc/Documents/MSc/MSc 2018 Courses/BIOL 812/Group Assignment/Climate data/BioClim Variable Names.csv")
names(Predictors) <- Bioclimnames$Variable[1:40] #using full names
names(Predictors2) <- Bioclimnames$Variable.Number[1:40]
names(Predictors2)

plot(Predictors2$Bio10,xlim=LocRange[c(1,3)], ylim=LocRange[c(2,4)],1,main="",xaxt="n",yaxt="n",legend=F)
BioDat <- extract(Predictors2, Locations[,c("long","lat")])
BioDat2<- extract(Predictors, Locations[,c("long","lat")])

head(BioDat)

any(is.na(BioDat))
any(is.na(BioDat2))

BioDatFull <- cbind(Locations, BioDat)
BioDatFull2 <- cbind(Locations, BioDat2)

BioDatFull <- rename(BioDatFull, c("folder"="Plant", "lat"="Lat", "long"="Long"))
BioDatFull2 <- rename(BioDatFull2, c("folder"="Plant", "lat"="Lat", "long"="Long"))

BioDatFull <- rename(BioDatFull, c("Bio36"="PC1", "Bio37"="PC2", "Bio38"="PC3","Bio39"="PC4", "Bio40"="PC5"))
BioDatFull <- rename(BioDatFull, c("Plant"="Species"))


str(BioDatFull)

# Map with bottom legend 
MyMap <- ggplot(aes(Long,Lat, group=Species),data=BioDatFull) + 
  borders("world", colour=NA, fill="black") + 
  theme_bw(base_size=15) + 
  coord_fixed(xlim=LocRange[c(1,3)], ylim=LocRange[c(2,4)]) +
  geom_point(aes(colour=Species,shape=Species), alpha= 0.8, size=4.5,data=BioDatFull) +
  scale_shape_manual(values=c(19,17,15,19,17,15,19,17,15,19,17,15,19,17,15,19,17))+
  xlab("Longitude") +
  ylab("Latitude") +
  theme(legend.position="bottom")

MyMap





# make the csv files with extracted BioClim variables
write.csv(BioDatFull, file = "BioDatFull.csv", row.names = FALSE)
write.csv(BioDatFull2, file = "BioDatFull2.csv", row.names = FALSE)


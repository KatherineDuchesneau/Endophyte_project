#############################
#                           #
# Assemble literature cited #
#                           #
#############################

setwd("C:/Users/Brody/Desktop/Murre spp. Population Genomics and Conservation/BIOL812 - Bioinformatics/Endophytes")

install.packages("dplyr")
library(dplyr)

install.packages("rcrossref")
library(rcrossref)

# base program
# cr_cn(dois = "10.1111/j.1469-8137.2006.01750.x",format = "text", style = "journal-of-evolutionary-biology")

# 4 articles from poster
# 10.1080/0735-260291044377
# 10.1038/srep40914
# 10.1111/j.1469-8137.2009.02773.x
# 10.1111/j.1365-2745.2012.01997.x

# first paper from manuscript - Rillig 2006 mycorrhizas and soil structure
# 10.1111/j.1469-8137.2006.01750.x

# QIIME
# 10.1038/nmeth.f.303

# picrust
# 10.1038/nbt.2676

# trimmomatic
# 10.1093/bioinformatics/btu170

# data papers
# Pinus flexilis 10.3389/fmicb.2014.00333
# Solanum 10.1111/1574-6968.12377
# Espeletia 10.1128/AEM.02781-15
# Pinus pinaster 10.1038/s41598-017-04141-6
# Santiria 10.1007/s00248-017-1002-2
# Paeonia spp. 10.1016/j.bjm.2017.02.009
# Oryza 10.1016/j.gdata.2017.02.010

# paper on ubiquitous nature of endophytes
# 10.1128/MMBR.67.4.491-502.2003

dois = c('10.1128/MMBR.67.4.491-502.2003','10.3389/fmicb.2014.00333','10.1111/1574-6968.12377','10.1128/AEM.02781-15','10.1038/s41598-017-04141-6','10.1007/s00248-017-1002-2','10.1016/j.bjm.2017.02.009','10.1016/j.gdata.2017.02.010','10.1080/0735-260291044377','10.1038/srep40914','10.1111/j.1469-8137.2009.02773.x','10.1111/j.1365-2745.2012.01997.x','10.1111/j.1469-8137.2006.01750.x','10.1038/nmeth.f.303','10.1038/nbt.2676','10.1093/bioinformatics/btu170')

poster_litcited = function(dois=""){
  write("",file = "literature_cited.txt")
  for (i in dois){
    ref = cr_cn(dois = i,format = "text", style = "journal-of-evolutionary-biology")
    write(ref,file="literature_cited.txt",append = TRUE)
  }
  write("",file="poster_literature_cited.txt")
  lit = read.delim("literature_cited.txt",sep="\t",fill=TRUE,header=FALSE,as.is=TRUE)
  for (line in lit){
    short_ref = gsub("(\\d\\d\\d\\d)(\\. .*)(\\. \\w*.*\\d+)(.*\\.).*\\.$","\\1\\3\\4", line)
    write(short_ref,file="poster_literature_cited.txt",append = TRUE)
  }
}

poster_litcited(dois)

#############################
#                           #
# Assemble literature cited #
#                           #
#############################

install.packages("dplyr")
library(dplyr)

install.packages("rcrossref")
library(rcrossref)

# base program
# cr_cn(dois = "10.1111/j.1469-8137.2006.01750.x",format = "text", style = "nature")

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

dois = c('10.1080/0735-260291044377','10.1038/srep40914','10.1111/j.1469-8137.2009.02773.x','10.1111/j.1365-2745.2012.01997.x','10.1111/j.1469-8137.2006.01750.x','10.1038/nmeth.f.303','10.1038/nbt.2676','10.1093/bioinformatics/btu170')

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
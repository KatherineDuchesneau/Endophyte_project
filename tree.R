######################################
#                                    #
# Visualizing host species phylogeny #
# and creating distance matrix       #
#                                    #
######################################


setwd("C:/Users/Brody/Desktop/Murre spp. Population Genomics and Conservation/BIOL812 - Bioinformatics/Endophytes")

install.packages("ape")
library(ape)

tree = read.tree(text = "((((((((Cladophora)Cladophoraceae)Cladophorales)Ulvophyceae)Chlorophyta,((((((((((Grimmia_pilifera)Grimmia)Grimmiaceae)Grimmiales)Dicranidae,((((Bryum)Bryaceae)Bryales)Bryanae,((((Cratoneuron_filicinum)Cratoneuron)Amblystegiaceae,((Pylaisia_polyantha)Pylaisia)Hypnaceae)Hypnales)Hypnanae)Bryidae)Bryopsida)Bryophytina)Bryophyta,((((((((((((((Oryza)Oryzinae)Oryzeae)Oryzoideae)BOP_clade,(((((Zea)Tripsacinae)Andropogoneae)Andropogonodae)Panicoideae)PACMAD_clade)Poaceae)Poales)commelinids,(((Aloe)Asphodeloideae)Asphodelaceae,((((Phalaenopsis)Aeridinae)Vandeae)Epidendroideae)Orchidaceae)Asparagales)Petrosaviidae)Liliopsida,((((((((((Espeletia)Millerieae)Heliantheae_alliance)Asteroideae)Asteraceae)Asterales)campanulids,((((((((Rothmannia_macrophylla)Rothmannia)Gardenieae)Gardenieae_-_Pavetteae_clade)Gardenieae_complex)Ixoroideae)Rubiaceae)Gentianales,((((((Solanum_lycopersicum)Lycopersicon)Solanum)Solaneae)Solanoideae)Solanaceae)Solanales)lamiids)asterids,(((((Microdesmis_caseariifolia)Microdesmis)Pandaceae)Malpighiales)fabids,((((Vitis_vinifera)Vitis)Vitaceae)Vitales)rosids_incertae_sedis,((((Santiria_apiculata)Santiria)Burseraceae)Sapindales,((((Brassica_napus,Brassica_oleracea)Brassica)Brassiceae)Brassicaceae)Brassicales)malvids)rosids,(((Paeonia_suffruticosa,Paeonia_rockii)Paeonia)Paeoniaceae)Saxifragales)Pentapetalae)Gunneridae)eudicotyledons)Mesangiospermae)Magnoliophyta,((((((Pinus_pinaster)Pinus,(Pinus_flexilis)Strobus)Pinus)Pinaceae)Pinales)Pinidae)Acrogymnospermae)Spermatophyta)Euphyllophyta)Tracheophyta)Embryophyta)Streptophytina)Streptophyta)Viridiplantae)Eukaryota)cellular_organisms);")
plot(tree, type='cladogram',edge.width=1,cex=1,
     edge.color='black')

# export the plot as a PDF

p.dist = cophenetic(tree)

View(p.dist)

write.csv(p.dist,file="dist_matrix.csv")

######################################
#                                    #
# Visualizing host species phylogeny #
# and creating distance matrix       #
#                                    #
######################################


setwd("C:/Users/Brody/Desktop/Murre spp. Population Genomics and Conservation/BIOL812 - Bioinformatics/Endophytes")

install.packages("ape")
library(ape)

tree = read.tree(text = "((((((((Cladophora)Cladophoraceae)Cladophorales)Ulvophyceae)Chlorophyta,((((((((((Grimmia_pilifera)Grimmia)Grimmiaceae)Grimmiales)Dicranidae,(((((Cratoneuron_filicinum)Cratoneuron)Amblystegiaceae,(Pylaisia)Hypnaceae)Hypnales)Hypnanae,(((Bryum)Bryaceae)Bryales)Bryanae)Bryidae)Bryopsida)Bryophytina)Bryophyta,((((((((((Aloe)Asphodeloideae)Asphodelaceae,((((Phalaenopsis)Aeridinae)Vandeae)Epidendroideae)Orchidaceae)Asparagales,(((((((Oryza)Oryzinae)Oryzeae)Oryzoideae)BOP_clade,(((((Zea)Tripsacinae)Andropogoneae)Andropogonodae)Panicoideae)PACMAD_clade)Poaceae)Poales)commelinids)Petrosaviidae)Liliopsida,((((((((((((Rothmannia_macrophylla)Rothmannia)Gardenieae)Gardenieae_-_Pavetteae_clade)Gardenieae_complex)Ixoroideae)Rubiaceae)Gentianales,((((((Solanum_lycopersicum)Lycopersicon)Solanum)Solaneae)Solanoideae)Solanaceae)Solanales)lamiids,((((((Espeletia)Millerieae)Heliantheae_alliance)Asteroideae)Asteraceae)Asterales)campanulids)asterids,(((Paeonia_rockii,Paeonia_suffruticosa)Paeonia)Paeoniaceae)Saxifragales,(((((Vitis_vinifera)Vitis)Vitaceae)Vitales)rosids_incertae_sedis,((((Santiria_apiculata)Santiria)Burseraceae)Sapindales,((((Brassica_oleracea,Brassica_napus)Brassica)Brassiceae)Brassicaceae)Brassicales)malvids,(((((Populus_balsamifera)Populus)Saliceae)Salicaceae,((Microdesmis_caseariifolia)Microdesmis)Pandaceae)Malpighiales)fabids)rosids)Pentapetalae)Gunneridae)eudicotyledons)Mesangiospermae)Magnoliophyta,((((((Pinus_flexilis)Strobus,(Pinus_pinaster)Pinus)Pinus)Pinaceae)Pinales)Pinidae)Acrogymnospermae)Spermatophyta)Euphyllophyta)Tracheophyta)Embryophyta)Streptophytina)Streptophyta)Viridiplantae)Eukaryota)cellular_organisms);")
plot(tree, type='fan',edge.width=1,cex=1,
     edge.color='black')

# export the plot as a PDF

p.dist = cophenetic(tree)

View(p.dist)

write.csv(p.dist,file="dist_matrix.csv")

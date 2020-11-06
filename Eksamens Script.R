#Opgave:
# Find ud af hvordan fordelingen ser ud med hensyn til aborter og gennemsnitsindkomster pr. kommune


library(tidyverse)
library(gganimate) # Her loades en pakke til at kunne lave visualiseringer
library(gapminder) #Her loades en pakke, som er et dataset over lande og sundhed.
library(gifski)


aborter <- read_csv("data/Abortions_DK_1995_2018.csv")
avincome <- read_csv("data/Income_male_and_female.csv")
population <- read_csv("data/Population_pr_municipalities.csv")

head(aborter, 5)

head(avincome, 5)

head(population, 5)

unique(aborter$Municipalities)
unique(population$Municipalities)

class(avincome$X1995)
class(aborter$'1997')


#Skab en faktor ved at dividere population med antal aborter for hver kommune.
# Løb igennem 


alleAldre <- filter(aborter, Alder == "Alle aldre") #Kode til at gemme et data frame så vi kun får alle aldre.

alleAldre

length(unique(KvinderFra08_18$Geografi)) #98 hits

length(unique(GennemsnitsindkomstKommunerForMandKvinde$Geografi)) #Der er en mere her altså 99 hits fordi Hele landet er taget med.

length(unique(Aborter$Geografi)) #HHer er der 97, dvs. der mangler noget.


Unikke_Abort_Steder <- sort(unique(Aborter$Geografi))
Unikke_Indkomst_Steder <- sort(unique(KvinderFra08_18$Geografi)) #Her bruger jeg sort til at finde ud af hvilke kommuner, som mangler i Aborter datasettet. Herefter sammenligner jeg
                                       #selv og ser hvilke der mangler. Fanø mangler, 
                                       # Udland mv. findes i Aborter men ikke i kvinder

Unikke_Abort_Steder
Unikke_Indkomst_Steder


#Okay, jeg fandt ud af efter meget lang tid at i Abort skemaet mangler der data for Fanø, Samsø og Læsø. Tilgængæld er der Data fra danskere i udlandet
#i Abort datasettet, hvilket der ikke er i de andre dataset.

sort(GennemsnitsindkomstKommunerForMandKvinde$Geografi)


nyPopulation <- population$Geografi[-c("Fanø", "Samsø", "Læsø") ]

avabortion <- 0

for (i in population$Municipalities) {
  for (j in alleAldre$Municipalities) {
    if(i==j)  #avabortion = population$'1995'/alleAldre$1995'1995'
      print(population$Municipalities[i])
  }
  
  #print(avabortion)
}


for (i in population$Municipalities) { #This forloop goes through the municipalities column
  j <- unique(aborter$Municipalities[aborter$Municipalities==i])
  
}













length(alleAldre$Municipalities)
View(alleAldre)

head(population)



aborter$Municipalities == population$Municipalities

filter()

alleAldre


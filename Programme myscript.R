
source("C:[HAH913E]Activite_physique\\Denis_mottet\\verisense_count_steps.R") 
#  Localisation du fichier de comptage de pas
myfun =  list(FUN=verisense_count_steps,  # Liste 
              parameters= c(3, 5, 15, -0.5, 3, 4, 0.001, 1.2), 
              # paramètres pouvant être sous plusieurs format (vecteur, matrice,liste)
              expected_sample_rate= 15,  
              # Taux d'échantillonage attendu, les données seront rééchantillonées lorsque leur fréquence est différente
              expected_unit="g",     # Unité d'accélération 
              colnames = c("step_count"),  # création d'une Cologne comptage de pas 
              outputres = 1,   # Résolution en secondes de la sortie produite par la fonction externe 
              minlength = 1,   # Longueur minimale  des données d'entrées 
              outputtype="numeric",  #  Données stockées sous forme numérique 
              aggfunction = sum,     # Fonction d'aggrégation représente la somme des valeurs 
              timestamp=F,           # Pas de spécfification d'horodatage
              reporttype="event")   # Caractère poour indiquer un événement additionné par jour

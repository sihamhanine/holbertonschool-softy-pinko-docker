# Étape 1 : Utiliser la dernière version d'Ubuntu comme base
FROM ubuntu:latest

# Étape 2 : Mettre à jour la liste des paquets disponibles
RUN apt-get update

# Étape 3 : Mettre à jour les logiciels installés
RUN apt-get upgrade -y

# Étape 4 : Configurer l'image pour afficher "Hello, World!" lors de son exécution
CMD echo "Hello, World!"

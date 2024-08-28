# Étape 1 : Utiliser la dernière version d'Ubuntu comme base
FROM ubuntu:latest

# Étape 2 : Mettre à jour la liste des paquets disponibles
RUN apt-get update

# Étape 3 : Mettre à jour les logiciels installés
RUN apt-get upgrade -y

# Étape 4 : Installer Python3 et pip3
RUN apt-get install -y python3 python3-pip

# Étape 5 : Gérer l'erreur d'environnement géré pour l'installation des paquets Python
RUN rm /usr/lib/python*/EXTERNALLY-MANAGED

# Étape 6 : Installer Flask avec pip3
RUN pip3 install flask

# Étape 7 : Définir le répertoire de travail
WORKDIR /app

# Étape 8 : Copier le fichier Python dans le conteneur
COPY ./api.py /app/api.py

# Étape 9 : Exposer le port 5252
EXPOSE 5252

# Étape 10 : Démarrer le serveur Flask
CMD ["python3", "api.py"]

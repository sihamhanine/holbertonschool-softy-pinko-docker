# Étape 1 : Utiliser la dernière version d'Ubuntu comme base
FROM ubuntu:latest

# Étape 2 : Mettre à jour la liste des paquets disponibles
RUN apt-get update

# Étape 3 : Mettre à jour les logiciels installés
RUN apt-get upgrade -y

# Étape 4 : Installer Python3, pip3 et Flask
RUN apt-get install -y python3 python3-pip
RUN rm /usr/lib/python*/EXTERNALLY-MANAGED  # Ajouter cette ligne pour éviter les erreurs de gestion externe
RUN pip3 install flask

# Étape 5 : Configurer le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 6 : Copier le fichier Python dans le conteneur
COPY api.py /app/api.py

# Étape 7 : Exposer le port que Flask utilisera
EXPOSE 5252

# Étape 8 : Lancer l'application Flask
CMD ["python3", "api.py"]

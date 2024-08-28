# Utilisez une image Ubuntu de base
FROM ubuntu:latest

# Met à jour le système et installe les dépendances nécessaires
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y python3 python3-pip python3-venv

# Créez un répertoire pour l'application
WORKDIR /app

# Créez un environnement virtuel Python
RUN python3 -m venv /venv

# Activez l'environnement virtuel
ENV PATH="/venv/bin:$PATH"

# Installez les packages Python dans l'environnement virtuel
RUN pip install flask flask-cors

# Copiez le fichier api.py dans le conteneur
COPY api.py /app/

# Définissez la commande par défaut pour exécuter l'application
CMD ["python3", "api.py"]


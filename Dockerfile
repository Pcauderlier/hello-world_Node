# Étape 1 : Image de base officielle avec Node.js
FROM node:20

# Étape 2 : Définir le dossier de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier les fichiers package.json / package-lock.json (si présents)
COPY package*.json ./

# Étape 4 : Installer les dépendances
RUN npm install

# Étape 5 : Copier le reste de l'application
COPY . .

# Étape 6 : Exposer le port 3001
EXPOSE 3001

# Étape 7 : Commande de lancement
CMD ["node", "server.js"]

# Utilise l'image officielle de Node.js comme base
FROM node:14

# Crée un dossier de travail dans le conteneur
WORKDIR /app

# Copie les fichiers package.json et package-lock.json dans le conteneur
COPY package*.json ./

# Installe les dépendances
RUN npm install

# Copie tout le code source dans le conteneur
COPY . .

# Expose le port 3000 (port utilisé par l'application React)
EXPOSE 3000

# Définit la commande pour démarrer l'application
CMD ["npm", "start"]

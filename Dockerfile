# On crée un Dockerfile pour permettre de lancer l'application
#sans avoir besoin d'installer node sur notre machine
#Il se place a la racine du projet téléchargé précédemment
FROM node
# On utilise une image de base "node"

COPY . .
# Je copie tout mes fichier a la racine de mon docker

RUN npm install
# Permet d'installer les dépendances

CMD [ "npm","test" ]
# La commande pour lancer les tests


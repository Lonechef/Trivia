FROM node:22

EXPOSE 3000
WORKDIR /app
COPY package*.json package-lock.json ./
RUN npm install
COPY . .
RUN wget https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem

ENTRYPOINT npm run start

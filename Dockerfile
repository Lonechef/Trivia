FROM --platform=arm64 node:22

EXPOSE 3000
WORKDIR /app
COPY package*.json package-lock.json ./
RUN npm install
COPY . .


ENTRYPOINT npm run start

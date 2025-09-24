FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.tdqsxds.mongodb.net
ENV MONGODB_USERNAME vijaysaini83
ENV MONGODB_PASSWORD Lucky@251001

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
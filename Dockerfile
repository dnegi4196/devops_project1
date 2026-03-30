FROM node:18

WORKDIR /app

COPY app/ .   👈 important change

RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]

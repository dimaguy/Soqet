FROM node:16
WORKDIR /app
COPY . .
RUN npm install && npm run build
EXPOSE 3004/tcp
EXPOSE 25555/tcp
CMD [ "npm", "run", "start" ]

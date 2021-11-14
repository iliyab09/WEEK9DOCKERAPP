FROM node:lts-alpine
WORKDIR /bootcamp-app
COPY package.json /bootcamp-app/package.json
RUN npm install
COPY . /bootcamp-app
CMD ["npm", "run", "dev", "--host", "0.0.0.0"]
EXPOSE 8081
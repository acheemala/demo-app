## it uses node js image 15.2.1 version from image registries.
FROM node:15.2.1
ENV NODE_ENV=demo

## it sets directory in the container to /app to store files and launch our app.
WORKDIR /app
## it copies the app to /app directory with dependencies.
COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --demo

COPY . .
## it commands to run our app which is index.js.
CMD [ "node", "index.js" ]
##  it exposes the port where our app is running that is port 8080.
EXPOSE 8080

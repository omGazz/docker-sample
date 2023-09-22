# Use the node:slim base image 
FROM node:slim

# Set the working directory to /docker-sample
WORKDIR /docker-sample

RUN npm i -g nodemon

# Copy package.json and package-lock.json
COPY package.json ./
COPY package-lock.json ./

#Run npm install (inside the container ofc)
RUN npm install

# Copy the current directory contents into the container
COPY . .

USER node

# expose the port 3000
EXPOSE 3000

#run the command
CMD ["node", "server.js"]
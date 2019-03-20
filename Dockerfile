# specify Docker image to use
FROM node:8

# directory to hold app code inside this image
WORKDIR /usr/src/app

# install app dependencies
# wildcard used to ensure both pakcage && package-lock are copied
# where available
COPY package*.json ./

# for PROD run:
# RUN npm ci --only=production
RUN npm install

# bundle app source code
COPY . .

# expose app PORT to docker daemon
EXPOSE 8080

# define command to start app source
CMD [ "npm", "start" ]

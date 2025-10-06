#use a lightweight Node.js image

FROM node:18-alpine

#set working dir

WORKDIR /app

COPY package*.json ./
RUN npm install

#Copy the rest of the code
COPY . .

# expose ports
EXPOSE 3000

# start app
CMD ["node", "app.js"]
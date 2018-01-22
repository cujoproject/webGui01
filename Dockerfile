FROM node:carbon

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)


RUN git clone https://github.com/cujoproject/webGui01 /myapp/
RUN cp -R /myapp/* ./
#RUN chown app:app -R ./
RUN chmod -R 777 ./

#RUN git clone https://github.com/cujoproject/webGui01

#COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]
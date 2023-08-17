# pull official base image
FROM node:13.12.0-alpine

# copy everything over
COPY . /app

# set working directory
WORKDIR /app

# install dependencies
RUN npm install

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# start app
CMD ["npm", "start"]

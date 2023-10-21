# pull official base image
FROM node:18.17.0-alpine

# copy everything over
COPY . /app

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install server to serve our files
RUN npm i -g serve

# serve the slides using serve
CMD ["serve", ".", "-p", "5110"]

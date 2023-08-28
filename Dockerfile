# pull official base image
FROM node:18.17.0-alpine

# copy everything over
COPY . /app

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# start the app
CMD ["npm", "start", "--", "--host=0.0.0.0", "--port=5102"]

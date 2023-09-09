# pull official base image
FROM node:18.17.0-alpine

# copy everything over
COPY . /app

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# start the app
CMD ["python", "-m", "http.server", "5104"]

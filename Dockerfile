# Use an official Node.js runtime as the base image
FROM node:16-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and yarn.lock files to the container
COPY package.json yarn.lock ./

# Install the app's dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of the app's files to the container
COPY . .

# Build the app
RUN yarn build

# Specify the command to run when the container starts
CMD ["yarn", "start"]
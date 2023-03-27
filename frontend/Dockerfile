FROM node:19-alpine3.16

WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application
RUN npm run build

# Set the environment variable for serving the built application
# https://github.com/nodejs/docker-node/blob/main/docs/BestPractices.md#global-npm-dependencies
# ENV NODE_ENV production

# Expose port 3000 to the outside world
EXPOSE 3000

# Start the application
CMD ["npm", "run", "start"]
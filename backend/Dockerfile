# Use the official Node.js 14 image as the base image
FROM node:18-alpine3.16

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies

RUN npx prisma generate

RUN npm install -g @nestjs/cli

# RUN npm install --save-dev nodemon


# Copy the rest of the application code to the container
COPY . .

# Expose port 3000 for the container to listen on
EXPOSE 3000

# Start the application
# CMD ["npx", "nodemon", "--legacy-watch", "src/main.ts", "--exec", "ts-node", "--files"]
# CMD ["npm", "run", ]

CMD npm start --host 0.0.0.0 --disableHostCheck true

# Which version of Node.js to use
FROM node:20

# Make this port available in Docker service
EXPOSE 3000

# Where to track files within Docker service
WORKDIR /app/client

# Run these commands upon startup
CMD npm i \
    && npm run dev
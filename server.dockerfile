# Which version of Node.js to use
FROM node:20

# Make this port available in Docker service
EXPOSE 8080

# Where to track files within Docker service
WORKDIR /app/server

# Run these commands upon startup
CMD npm i \
    # !TODO: Uncomment the next line if you want to run DB migrations upon container startup
    # && npm run db:migrate \
    && npm run start:all
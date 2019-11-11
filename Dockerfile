FROM node:8.8.1-alpine

ENTRYPOINT ["node", "/usr/local/bin/gql-faker"]
WORKDIR /workdir
COPY . .

EXPOSE 3000

# RUN npm run build:all && npm run start
CMD ["npm run build:all", "npm run start"]

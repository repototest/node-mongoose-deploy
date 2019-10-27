FROM node:latest

RUN mkdir -p /home/project
WORKDIR /home/project

COPY . /home/project

RUN npm install

EXPOSE 3000

ENTRYPOINT ["npm", "run"]
CMD ["start"]
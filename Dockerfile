FROM node:latest

RUN mkdir -p /home/ubuntu/nodeapp
WORKDIR /home/ubuntu/nodeapp

COPY . /home/ubuntu/nodeapp

RUN npm install

EXPOSE 3000

ENTRYPOINT ["npm", "run"]
CMD ["start"]
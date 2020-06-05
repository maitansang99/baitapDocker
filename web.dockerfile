FROM node:carbon-alpine AS node_builder

RUN mkdir -p /app/frontend
WORKDIR /app/frontend
COPY /frontend .
RUN npm install
LABEL name="webreactjs" version="1.0"
EXPOSE 3000
CMD ["npm", "start"]
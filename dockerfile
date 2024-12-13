FROM nginx:alpine

WORKDIR /usr/share/html

COPY . /usr/share/nginx/html

RUN npm install

EXPOSE  8080
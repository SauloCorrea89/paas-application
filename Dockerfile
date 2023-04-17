FROM bitnami/node:16.20.0 as build
WORKDIR /home
COPY ./app ./ 
RUN npm i react-scripts && npm install && npm run build

FROM bitnami/nginx:1.21.1
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY --from=build /home/build /usr/share/nginx/html
EXPOSE 3000
ENTRYPOINT [ "nginx","&" ]

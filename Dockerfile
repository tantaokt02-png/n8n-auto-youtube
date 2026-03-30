FROM node:18

# CÀI FFMPEG
RUN apt-get update && apt-get install -y ffmpeg

WORKDIR /app
COPY . .

RUN npm install

CMD ["node", "server.js"]

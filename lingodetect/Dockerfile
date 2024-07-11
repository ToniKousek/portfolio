FROM node:16 AS lingodetect

WORKDIR /apps/lingodetect

ENV PORT=8001

RUN apt-get update && \
    apt-get install -y git
RUN git clone https://github.com/ToniKousek/translate-game-svelte.git /apps/lingodetect

RUN chown -R node:node /apps/lingodetect
USER node

RUN npm install
RUN npm run build

EXPOSE 8001
CMD [ "npm", "run", "start" ]


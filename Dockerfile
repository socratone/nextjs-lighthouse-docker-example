FROM timbru31/node-chrome:20-alpine

# 여기서부터 명령어를 입력하는 기본 위치를 /app으로 설정한다.
WORKDIR /app

# package.json만 먼저 복사한다.
COPY package.json /app
COPY yarn.lock /app

RUN node -v
RUN yarn install

# 나머지 필요한 파일들을 복사한다.
COPY public /app
COPY src /app
COPY next-env.d.ts /app
COPY next.config.mjs /app
COPY tsconfig.json /app

RUN yarn build
RUN yarn global add lighthouse

COPY command.sh /app
COPY lighthouserc.js /app

CMD ["sh", "./command.sh"]

FROM node:16.13.0
# 도커가 실행될 환경 
WORKDIR /app
# ENV 를 사용해서 중요 데이터를 숨겨서 사용할 수 있음

COPY package*.json /app/
# 설치해야하는 라이브러리 이름 복사

RUN npm install
# 라이브러리 설치

COPY . /app
# app.js 복사

EXPOSE 3000
# 포트 번호 매핑

CMD ["npm", "start"]
# 처음 실행될 명령어

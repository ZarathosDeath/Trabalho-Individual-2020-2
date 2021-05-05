# Trabalho Individual 2020.2
Para subir os containers(DB, API, Client):

```bash
docker-compose up --build
```

# CI
Foi utilizado github actions para controlar o CI, onde temos os seguintes fluxos

## App health-check

Faz o build, checa sintaxe, roda migrations, roda os testes e coverage da API e do Client

## Coverage

Workflow para gerar métricas de qualidade e cobertura de código utilizando o codecov

## Deploy

Foi utilizado heroku para fazer deploy dos serviços utilizados no trabalho, no workflow Deploy services to heroku:

### Frontend
https://egcs-client.herokuapp.com/

### Backend
https://api-egcs.herokuapp.com/

# executar na pasta do projeto api

# build com gradle
./gradlew clean build

# montar imagem com Dockerfile
docker build -t k8s-api .



# VERSIONING DOCKER IMG
VERSION=$(grep "^version" gradle.properties | cut -d'=' -f2)


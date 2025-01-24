# kubernetes-study

Esse estudo tinha intuito de cobrir somente o kubernetes, mas utilizarei como oportunidade pra estudar também observabilidade e monitoramento, com ferramentas como:
listar.
Talvez farei também uma pipeline ao final, para as aplicações. build artefato e docker img, registry, rollout publicação.

## Metas

#### Kubernetes

- [ ] Entender componentes básicos
  - [ ] Pods
  - [ ] Deployments
  - [ ] Services
  - [ ] ConfigMaps
  - [ ] Secrets
  - [ ] StatefulSets
  - [ ] DaemonSet
  - [ ] HPA
  - [ ] Job
  - [ ] CronJob
- [ ] Cloud Managed Cluster (GKE nesse estudo)

#### Aplicações pra essa Prova de Conceito

##### API:

- [x] endpoints de entrada
  - [ ] primeiro só um hello, world pra deploy na estrutura do kubernetes
  - [ ] criar os outros que simula funcionalidades
- [ ] simulações de processamento (thread sleep e logs)
- [ ] publicação em fila (container kafka)
- [ ] Query na base de dados
  - [ ] index normal
  - [ ] findAll 1M row (ver tempo de consulta no dashboard)
- [ ] Receber parâmetros nos endpoints pra poder fazer esses processamentos
- [ ] Lançar erro de negócios e inesperado também
- [ ] Mem Leak p/ HPA

##### Consumer:

- [ ] Aplicação consumer para a fila do kafka
- [ ] Escrita na base de dados

##### Jobs:

Preciso criar aplicações pra ser meus jobs. Acho que uma pode ser spring batch e a
outra um command line runner mesmo.

Pode ser um trem que só loga, ou só salva um trem aleatorio na base.

#### Kafka

- [ ] Configurar uma fila (usaria um sqs se tivesse na aws)

#### Monitoramento e observabilidade

Deve rastrear a vida util do request, logs, tracing, onde parou, etc.
Tentar de alguma forma simular uma mensagem que para no kafka, se possível.

##### Prometheus

Monitorar os requests
Estudar e ver qual base usar

##### Tracing

Entender o que é e algumas ferramentas

##### Grafana

Tirar graficos da vida do request, usando o prometheus e talvez mais algo

##### API Gateway

Pensar se usa o ip do cluster direto ou coloca um gateway, ficaria mais profissional

##### Terraform

"Terraformar" a parte cloud, pra desabilitar com facilidade e já colocar terraform num exemplo de portfolio

## Comandos

Para construir o artefato:

```shell
./gradlew clean build
```

Construir imagem Docker:

```shell
docker build -t k8s-api .
```

Executar imagem Docker:

```shell
docker run -p 8080:8080 k8s-api
```

### Passos que segui



# Rascunho

Daqui pra baixo é rascunho pra editar.

## Metas

- [ ] Entender o basico de Kubernetes e cada uma de suas funcionalidades
  - [ ] Listar elas aqui e ir marcando
- [ ] Deixar as notas de estudo organizadas aqui sobre isso e códigos de exemplo.
- [ ] Subir o Kubernetes na Cloud, AWS ou Google.
- [ ] Terraformar essa estrutura Cloud e deixar package/documentação de exemplo.
- [ ] Opcional: adicionar uma pipeline para criação de imagens e talvez pro deploy.
- [ ] Pods com certificados TLS?

- [ ] criar pipeline subindo imagem no registry?
- [ ] criar um service utilizando um loadbalancer de nuvem

Kubernetes
conceitos
Componentes
Arquitetura
deploy de aplicação spring
poc com endpoint que loga hash e um que simula um leak pra escalar

observabilidade e metricas
prometheus
grafana
open telemetry
rodar container com eles, pelo menos os open source.

## Projeto

- Subi uma VM no goodle cloud e instalei docker, kubectl e minikube.

## Dúvidas

- quantos replica sets é ideal manter?

### Componentes e Arquitetura

https://kubernetes.io/docs/concepts/architecture/

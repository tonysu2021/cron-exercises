# Introduction

## 安裝 Spring Cloud Data Flow

* Docker環境
  
  ```sh
  # v2.9.1
  cd docker-compose
  sh start-docker-service.sh
  ```

* Kubernetes環境

  建議在雲平台部屬。

  ```sh
  # 建立專屬的namespace。
  kubectl apply -f ./kubernetes/cloud-dataflow-namespace.yaml

  # v2.9.1
  cd kubernetes
  sh start-k8s-service.sh
  ```

## 建立Spring Cloud Task

* 方法一

  see <https://dataflow.spring.io/docs/batch-developer-guides/getting-started/task/>

* 方法二

  直接使用Spring Batch部屬。

## Spring Cloud Stream

官方所有Stream App Starters都在這個[repositories](https://github.com/orgs/spring-cloud-stream-app-starters/repositories)

## Reference

[介绍一下,spring cloud下的另一种定时任务解决方案](https://blog.csdn.net/puhaiyang/article/details/114901297)

[Deploying with kubectl](https://dataflow.spring.io/docs/installation/kubernetes/kubectl/)

[Customizing Docker Compose](https://dataflow.spring.io/docs/installation/local/docker-customize/)

[Spring Cloud Task App Starters](https://spring.io/projects/spring-cloud-task-app-starters)

[Spring Cloud Stream App Starters](https://spring.io/projects/spring-cloud-stream-app-starters)

[An Intro to Spring Cloud Task](https://www.baeldung.com/spring-cloud-task)

[使用Spring Cloud App Starter](https://www.1ju.org/spring-cloud/spring-cloud-app-starter)

# Introduction

## 安裝 Spring Cloud Data Flow

* Docker環境
  
  ```sh
  # v2.9.1
  ./docker-compose/start-docker-service.sh
  ```

* Kubernetes環境

  建議在雲平台部屬。

  ```sh
  # 建立專屬的namespace。
  kubectl apply -f ./kubernetes/cloud-dataflow-namespace.yaml

  # v2.9.1
  ./kubernetes/start-k8s-service.sh
  ```

## 建立Spring Cloud Task/Spring Cloud Stream

see <https://dataflow.spring.io/docs/batch-developer-guides/getting-started/task/>

## Reference

[介绍一下,spring cloud下的另一种定时任务解决方案](https://blog.csdn.net/puhaiyang/article/details/114901297)

[Deploying with kubectl](https://dataflow.spring.io/docs/installation/kubernetes/kubectl/)

[Customizing Docker Compose](https://dataflow.spring.io/docs/installation/local/docker-customize/)

[Spring Cloud Task App Starters](https://spring.io/projects/spring-cloud-task-app-starters)

[Spring Cloud Stream App Starters](https://spring.io/projects/spring-cloud-stream-app-starters)

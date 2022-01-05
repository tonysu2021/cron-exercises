# Introduction

## 專案SIT執行環境

* Create Network

```sh
docker network create --driver overlay --attachable elasticjobnet
```

## 專案Local執行環境

* 建立一個Mysql 資料庫

  ```sql
  CREATE DATABASE IF NOT EXISTS `test`;
  USE `test`;

* 設定專案環境參數

  ```text
  172.20.101.27 zoo-single
  ```

## Maven Build

```sh
mvn clean package "-Dmaven.test.skip=true"
```

## Reference

[shardingsphere-elasticjob](https://github.com/apache/shardingsphere-elasticjob)

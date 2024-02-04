# images

- docker-ansible
  ```
  Релизы:
  - v7.0.0 - дефолтный образ с ansible и python
  - v7.0.1:
    - Добавлен модуль amazon.aws
    - Преднастроен ansible-vault и ключ шифрования /ansible/vaultpass
  - v7.1.0:
    - Обновлены: alpine3.19, ansible 7.1.0 (ansible-core 2.14.13), ansible-lint 6.22.1
    - Добавлены: boto3, botocore
  ```
  ```
  Для проектов:
  - users
  - balancers
  - drivers
  - postfix
  - clusters (checklist)
  ```

- dind-kubectl
  ```
  Релизы:
  - v1.8.2 - дефолтный образ с docker:dind и kubectl
  - v2.0.0:
    - Обновлёны: базовый образ docker:24.0.7-dind-alpine3.19, kubectl v1.21.2
    - Добавлены: curl, wget, bash, ca-certificates
  ```
  ```
  Для проектов:
  - trivy
  ```

- ruby
  ```
  Релизы:
  - 3.3.0-rc1-slim-bullseye - дефолтный образ для docker executioner
  ```

- ubuntu
  ```
  Релизы:
  - 23.10-curl - дефолтный образ с curl версии 7.64.1 для загрузки deb-пакетов в Gitlab debian registry

  ```
  ```
  Для проектов:
  - cyrus-satrap-antipatros
  ```
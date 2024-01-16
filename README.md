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
  ```
  ```
  Для проектов:
  - users
  - balancers
  - drivers
  - postfix
  - clusters
  ```

- dind-kubectl
  ```
  Релизы:
  - v1.8.2 - дефолтный образ с docker:dind и kubectl
  - v2.0.0:
    - Обновлёны: базовый образ docker:24.0.7-dind-alpine3.19, kubectl v1.21.2
    - Добавлены пакеты: curl, wget
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
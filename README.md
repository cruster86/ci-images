# images

- docker-ansible
  ```
  Релизы:
  - v7.0.0 - базовый образ с ansible и python
  - v7.0.1 - добавлен модуль amazon.aws, преднастроен ansible-vault и ключ шифрования /ansible/vaultpass
  - v7.1.0 - обновлены: alpine3.19, ansible 7.1.0 (ansible-core 2.14.13), ansible-lint 6.22.1
  ```
  ```
  Для проектов:
  - users
  - balancers
  - drivers
  - postfix (v7.0.1)
  - clusters
  ```

- dind-kubectl
  ```
  Релизы:
  - v1.8.2 - базовый образ с docker и kubectl
  - v2.0.0 - обновлён базовый образ до docker:24.0.7-dind-alpine3.19 и kubectl до v1.21.2
  ```
  ```
  Для проектов:
  - trivy
  ```

- ruby
  ```
  Релизы:
  - 3.3.0-rc1-slim-bullseye - дефолтный образ для executioner с типом docker
  ```
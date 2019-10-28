### Задание:
* Выбрать облачный сервис для хостинга проекта (MCS, AWS, Digital Ocean, **Google Cloud**, Windows Azure, VScale, etc)
<br/> https://ssh.cloud.google.com/cloudshell/editor
* Выбрать достаточно медленный бэкенд (проект на **Django**, форум, etc) на который будем балансировать нагрузку, поднять не менее 3-х серверов
<br/>(https://cloud.google.com/kubernetes-engine/docs/tutorials/hello-app)
<br/> Либо через app.yaml и Google App Engine
<br/>docker compose
* Выбрать метод балансировки (L4 или **L7**), алгоритм и конкретное программное решение (**nginx**, haproxy, envoy, ATS, etc)
<br/> Nginx Plus
* Выбрать систему сбора и отображения статистки (графиков)
<br/> Prometheus & Grafana https://github.com/GoogleCloudPlatform/click-to-deploy/blob/master/k8s/prometheus/README.md
* Настроить load balancer: таймауты и алгоритм отключения проблемных бэкендов для выбранного бэкенда
* Настроить сбор и отображение необходимых системных и пользовательских метрик (обязательный минимум график RPS и CPU)
* Продемонстрировать распределение нагрузки между бэкендами (графики RPS)
* Продемонстрировать перераспределение трафика при отключении одного бэкенда
* Работа индивидуальная. Не более трех одинаковых вариантов (уникальное сочетание хостинга, балансера и инструмента статистики)
* Продемонстрировать работу системы на семинаре №2
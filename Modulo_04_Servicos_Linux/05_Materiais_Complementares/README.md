# Materiais Complementares - Serviços Linux

* **Nível**: Avançado
* **Duração**: 1 hora
* **Descrição**: Recursos extras sobre administração de serviços Linux.
* **Status**: Iniciar agora

---

## 📚 Leituras Recomendadas

### 1. Guia Oficial do Systemd

* Referência para gerenciamento de serviços com `systemctl`
* Link: [https://www.freedesktop.org/wiki/Software/systemd/](https://www.freedesktop.org/wiki/Software/systemd/)

### 2. DigitalOcean - Gerenciamento de Serviços com Systemd

* Explicações e exemplos práticos
* Link: [https://www.digitalocean.com/community/tutorials/understanding-systemd](https://www.digitalocean.com/community/tutorials/understanding-systemd)

### 3. Documentação Apache e Nginx

* Apache: [https://httpd.apache.org/docs](https://httpd.apache.org/docs)
* Nginx: [https://nginx.org/en/docs/](https://nginx.org/en/docs/)

### 4. PostgreSQL Administration Guide

* Link: [https://www.postgresql.org/docs/current/index.html](https://www.postgresql.org/docs/current/index.html)

---

## 🎓 Vídeos e Aulas Complementares

* **Curso “Linux Professional” - Cisco Networking Academy**
  [https://www.netacad.com/](https://www.netacad.com/)

* **Gerenciamento de Serviços e Logs - Curso em Vídeo (YouTube)**
  [https://www.youtube.com/@CursoemVideo](https://www.youtube.com/@CursoemVideo)

---

## 🧪 Comandos para Prática

```bash
# Gerenciar serviços
sudo systemctl start apache2
sudo systemctl stop apache2
sudo systemctl restart apache2
sudo systemctl status apache2

# Serviços ativos e logs
systemctl list-units --type=service
journalctl -xe
```

---

## 🚀 Conclusão

O domínio do gerenciamento de serviços e da administração de daemons no Linux é um passo crucial para ambientes de produção confiáveis, seguros e automatizados. Estes materiais vão ajudá-lo a aprofundar seu conhecimento e prática com serviços Linux.

---

📌 Próximo módulo: **Agendando Tarefas com Cron no Linux**

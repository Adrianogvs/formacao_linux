# Criando um Servidor Web com Linux

* **Nível**: Intermediário
* **Duração**: 1 hora
* **Descrição**: Instalação e configuração de servidores Apache e Nginx.
* **Status**: Iniciar agora

---

## 🌐 Visão Geral

Servidores web permitem hospedar e disponibilizar páginas e aplicações através de navegadores. Os dois servidores HTTP mais utilizados no Linux são:

* **Apache HTTP Server**: robusto, modular, amplamente utilizado
* **Nginx**: leve, rápido e eficiente com conexões simultâneas

---

## 🔧 Instalando o Apache

```bash
sudo apt update
sudo apt install apache2
```

### Verificar se o serviço está rodando

```bash
sudo systemctl status apache2
```

### Acessar via navegador:

```
http://localhost
```

### Arquivos principais:

* Document Root: `/var/www/html`
* Configuração: `/etc/apache2/apache2.conf`

---

## 🔧 Instalando o Nginx

```bash
sudo apt update
sudo apt install nginx
```

### Verificar se o serviço está rodando

```bash
sudo systemctl status nginx
```

### Acessar via navegador:

```
http://localhost
```

### Arquivos principais:

* Document Root: `/var/www/html`
* Configuração: `/etc/nginx/nginx.conf`

---

## 📁 Publicando uma Página Simples

Crie um arquivo HTML básico:

```bash
echo "<h1>Servidor Web Linux Ativo!</h1>" | sudo tee /var/www/html/index.html
```

Atualize o navegador para visualizar a página.

---

## 🔒 Segurança e Boas Práticas

* Use `ufw` para liberar apenas a porta 80 (HTTP) e 443 (HTTPS):

```bash
sudo ufw allow 'Apache Full'
sudo ufw allow 'Nginx Full'
```

* Mantenha os serviços atualizados
* Use certificados SSL (Let's Encrypt) para HTTPS

---

## 🚀 Conclusão

Com Apache ou Nginx, é possível configurar rapidamente um servidor web funcional em máquinas Linux, ideal para desenvolvimento local, testes ou até produção com configurações adequadas.

---

📌 Próximo módulo: **Agendando Tarefas com Cron no Linux**

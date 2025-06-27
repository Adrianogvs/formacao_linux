# Servidor de Banco de Dados com Linux

* **Nível**: Avançado
* **Duração**: 1 hora
* **Descrição**: Instalação e administração de servidores PostgreSQL, MySQL/MariaDB.
* **Status**: Iniciar agora

---

## 🗃️ Visão Geral

Servidores de banco de dados são essenciais para armazenar e gerenciar informações de aplicações web, sistemas internos e muito mais. No Linux, os mais utilizados são:

* **PostgreSQL** — foco em robustez e conformidade com padrões SQL
* **MySQL/MariaDB** — foco em performance e simplicidade

---

## 🐘 Instalando PostgreSQL

```bash
sudo apt update
sudo apt install postgresql postgresql-contrib
```

### Iniciando e acessando o PostgreSQL:

```bash
sudo systemctl start postgresql
sudo -i -u postgres
psql
```

### Comandos iniciais no `psql`:

```sql
\l                -- lista bancos
\c nome_db        -- conecta
\dt               -- lista tabelas
CREATE USER nome WITH PASSWORD 'senha';
CREATE DATABASE meu_banco;
GRANT ALL PRIVILEGES ON DATABASE meu_banco TO nome;
```

---

## 🐬 Instalando MySQL/MariaDB

### MySQL:

```bash
sudo apt update
sudo apt install mysql-server
sudo mysql_secure_installation
```

### MariaDB (alternativa ao MySQL):

```bash
sudo apt install mariadb-server
```

### Acessando:

```bash
sudo mysql -u root -p
```

### Comandos iniciais no MySQL/MariaDB:

```sql
CREATE DATABASE meu_banco;
CREATE USER 'usuario'@'localhost' IDENTIFIED BY 'senha';
GRANT ALL PRIVILEGES ON meu_banco.* TO 'usuario'@'localhost';
FLUSH PRIVILEGES;
```

---

## 🔒 Segurança e Boas Práticas

* Nunca use a conta root para aplicações
* Desative acessos remotos inseguros
* Faça backup regular com `pg_dump` ou `mysqldump`
* Utilize firewalls e configure acesso por IP

---

## 🚀 Conclusão

Configurar um servidor de banco de dados no Linux é uma habilidade essencial para administradores de sistemas e desenvolvedores. PostgreSQL e MySQL/MariaDB são poderosos, estáveis e amplamente utilizados em produção.

---

📌 Próximo módulo: **Agendando Tarefas com Cron no Linux**

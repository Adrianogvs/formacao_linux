# Provisionamento de Servidor Web (Apache)

* **Tipo**: Desafio de Projeto
* **Nível**: Avançado
* **Duração**: 1 hora
* **Descrição**: Infraestrutura como código para automatizar a criação de servidores web com Apache.
* **Status**: Iniciar agora

---

## 🎯 Objetivo

Automatizar o provisionamento de um servidor web Apache usando Bash script. O script deverá:

* Instalar o Apache
* Criar diretórios de publicação
* Publicar uma página de teste
* Configurar permissões
* Iniciar e habilitar o serviço

---

## ⚙️ Exemplo de Script Bash

```bash
#!/bin/bash

# Atualizando pacotes
sudo apt update -y
sudo apt upgrade -y

# Instalando o Apache
sudo apt install apache2 -y

# Criando diretório do site
sudo mkdir -p /var/www/meusite

# Criando página de teste
echo "<h1>Site provisionado automaticamente com Apache!</h1>" | sudo tee /var/www/meusite/index.html

# Definindo permissões
sudo chown -R www-data:www-data /var/www/meusite
sudo chmod -R 755 /var/www/meusite

# Criando novo Virtual Host
sudo bash -c 'cat > /etc/apache2/sites-available/meusite.conf << EOF
<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/meusite
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
EOF'

# Habilitando site e reiniciando o Apache
sudo a2ensite meusite.conf
sudo a2dissite 000-default.conf
sudo systemctl reload apache2

# Ativando serviço no boot
sudo systemctl enable apache2

# Mensagem de conclusão
echo "Provisionamento concluído com sucesso."
```

---

## ✅ O que será validado

* Apache instalado e funcionando
* Página acessível via navegador
* Script automatizado e bem documentado
* Permissões corretas nos arquivos

---

## 🧩 Dicas

* Teste o script em uma máquina virtual Ubuntu
* Pode usar `vagrant` ou `multipass` para simular ambiente
* Use `curl localhost` para validar funcionamento via terminal

---

## 🚀 Conclusão

Automatizar o provisionamento de servidores web com Apache permite maior consistência, economia de tempo e facilidade de replicação de ambientes. Essa habilidade é essencial para profissionais de DevOps e administradores de sistemas.

---

📌 Próximo módulo: **Agendando Tarefas com Cron no Linux**

# Provisionamento de Servidor Web Apache no Linux

## ✨ Descrição do Projeto

Este projeto tem como objetivo demonstrar o uso de **Infraestrutura como Código (IaC)** para provisionamento automatizado de um **Servidor Web Apache** em um sistema operacional Linux. A proposta faz parte da **Formação Linux da DIO** e visa aplicar os conhecimentos adquiridos sobre administração de sistemas e automação com Shell Script.

Ao final da execução do script, você terá um servidor Apache em funcionamento, pronto para exibir páginas HTML simples.

---

## 🔍 Objetivos de Aprendizagem

* Compreender os conceitos de servidor web e HTTP.
* Automatizar tarefas de instalação e configuração com shell script.
* Praticar a estrutura de scripts de provisionamento.
* Utilizar comandos básicos de administração de sistemas Linux.

---

## ⚖️ Tecnologias Utilizadas

* **Linux Ubuntu Server 20.04+**
* **Apache HTTP Server**
* **Shell Script (bash)**
* **Git + GitHub**

---

## 🏢 Funcionalidades

* Atualização de pacotes do sistema
* Instalação do Apache
* Habilitação e inicialização do serviço Apache
* Criação de uma página HTML personalizada
* Exibição do status do serviço

---

## 🔧 Como Executar o Projeto

1. **Clone o repositório:**

```bash
git clone https://github.com/seuusuario/provisionamento-apache.git
cd provisionamento-apache
```

2. **Conceda permissão de execução ao script:**

```bash
chmod +x provisionamento_apache.sh
```

3. **Execute o script:**

```bash
./provisionamento_apache.sh
```

4. **Acesse o servidor:**

Abra o navegador e acesse o IP da máquina (ex: [http://192.168.0.10](http://192.168.0.10)).

---

## 🔹 Script de Provisionamento

```bash
#!/bin/bash

# -----------------------------------------------
# Script de Provisionamento de Servidor Web Apache
# Autor: Adriano Vilela
# Descrição: Instala e configura Apache automaticamente
# -----------------------------------------------

echo "Atualizando pacotes..."
sudo apt-get update -y
sudo apt-get upgrade -y

echo "Instalando Apache..."
sudo apt-get install apache2 -y

echo "Habilitando e iniciando o serviço Apache..."
sudo systemctl enable apache2
sudo systemctl start apache2

echo "Criando página inicial personalizada..."
echo "<h1>Servidor Web Provisionado com Sucesso!</h1>" | sudo tee /var/www/html/index.html

echo "Status do Apache:"
sudo systemctl status apache2 | grep Active

echo "Provisionamento concluído. Acesse o IP do servidor via navegador."
```

---

## 🎨 Resultado Esperado

* Ao acessar o IP do servidor via navegador, você deve ver a mensagem:

```html
<h1>Servidor Web Provisionado com Sucesso!</h1>
```

---

## 🔖 Links úteis

* [Documentação do Apache](https://httpd.apache.org/)
* [DIO - Formação Linux](https://www.dio.me)
* [GitHub](https://github.com)

---

## 💼 Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.

---

## 📅 Status do Projeto

Finalizado ✅

---

## 📆 Atualizado em

Junho de 2025

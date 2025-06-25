# Projeto: Infraestrutura como Código (IaC) - Linux

## Entendendo o Desafio

Neste projeto, criamos um **script de automação** para provisionar a infraestrutura básica de um ambiente Linux, incluindo:

* Criação de **usuários** e **grupos de usuários**;
* Configuração de **diretórios públicos e privados**;
* Definição de **permissões de acesso**;
* Estrutura padronizada para novos ambientes.

Esse script pode ser executado em qualquer nova máquina virtual Linux para prepará-la automaticamente para uso, otimizando tempo e padronizando ambientes corporativos.

O script foi disponibilizado neste repositório para facilitar a reutilização em futuras implantações e projetos.

Agora é a sua vez de ser o protagonista! Implemente esse desafio no seu próprio repositório e fortaleça ainda mais seu portfólio no GitHub!

---

## Pré-requisitos

* Sistema Operacional **Linux**
* Conta no **GitHub**

---

## Slides e GitHub Oficial

* Apresentação: *Infraestrutura como código: Script de criação de estrutura de usuários, diretórios e permissões.pptx*
* Repositório oficial do desafio: [`linux-projeto1-iac`](https://github.com/SeuUsuario/linux-projeto1-iac)

---

## Links Úteis

* [Principais comandos do Linux - Apostila IME/USP](https://www.linux.ime.usp.br/~albasalo/Apostila/apostila.pdf)
* [Gerenciamento de usuários no Linux - InfoWester](https://www.infowester.com/usuarioslinux.php)

---


```bash
#!/bin/bash

echo "Iniciando o provisionamento da infraestrutura..."

# 1. Criando diretórios
echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# 2. Criando grupos de usuários
echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# 3. Criando usuários e atribuindo aos grupos
echo "Criando usuários..."

# Administração
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

# Vendas
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

# Segurança
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda   -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

# 4. Definindo permissões dos diretórios
echo "Definindo permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Provisionamento concluído com sucesso!"

 ```

## Instruções de uso
Salve esse conteúdo no arquivo iac.sh.

Dê permissão de execução:
```bash
chmod +x iac.sh
```
Execute como superusuário:
```bash
sudo ./iac.sh
```

## Remover usuários com userdel apaga seus arquivos se usado com -r
```bash
#!/bin/bash

echo "Iniciando reversão da infraestrutura..."

# Removendo usuários
echo "Removendo usuários..."
userdel -r carlos
userdel -r maria
userdel -r joao
userdel -r debora
userdel -r sebastiana
userdel -r roberto
userdel -r josefina
userdel -r amanda
userdel -r rogerio

# Removendo grupos
echo "Removendo grupos..."
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

# Removendo diretórios
echo "Removendo diretórios..."
rm -rf /publico /adm /ven /sec

echo "Reversão concluída com sucesso!"

```

## Instruções de uso
Para executar:
Salve com o nome reverter_iac.sh

Torne executável:
```bash
chmod +x reverter_iac.sh
```
Execute como root:
```bash
sudo ./reverter_iac.sh
```

## Licença

Este projeto é licenciado sob os termos da [MIT License](LICENSE).

---

**Bons estudos e boa prática de automação com shell script!** ✨

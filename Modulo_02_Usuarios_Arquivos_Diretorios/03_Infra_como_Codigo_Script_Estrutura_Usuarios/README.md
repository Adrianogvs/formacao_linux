# Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões

* **Tipo**: Desafio de Projeto
* **Nível**: Intermediário
* **Duração**: 1 hora
* **Descrição**: Projeto prático para automatizar a criação de usuários e estrutura de pastas via Bash script.
* **Status**: Iniciar agora

---

## 🎯 Objetivo

Criar um script Bash que:

* Crie grupos de usuários
* Crie usuários e os associe aos grupos
* Crie diretórios com permissões apropriadas
* Garanta segurança e organização na estrutura de arquivos

---

## 🧱 Estrutura Esperada

```
/
├── publico/
├── adm/         (grupo adm)
├── ven/         (grupo ven)
├── sec/         (grupo sec)
```

### Exemplos de usuários

* `carlos`, `maria`, `joao` → grupo `adm`
* `debora`, `sebastiana`, `roberto` → grupo `ven`
* `josefina`, `amanda`, `rogerio` → grupo `sec`

---

## ⚙️ Exemplo de Script Bash

```bash
#!/bin/bash

# Criando diretórios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Criando grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criando usuários e adicionando aos grupos
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

# Definindo permissões dos diretórios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado com sucesso."
```

---

## 🔐 Observações de Segurança

* Substitua `Senha123` por senhas mais seguras
* O comando `openssl passwd` garante criptografia da senha
* Sempre teste scripts em ambientes seguros antes de aplicá-los em produção

---

## 🚀 Conclusão

Este desafio prático demonstra como aplicar conceitos de infraestrutura como código para organizar usuários, grupos e permissões de forma automatizada. Uma habilidade valiosa para sysadmins e profissionais DevOps!

---

🔜 Próximo desafio: **Agendando Tarefas com Cron no Linux**

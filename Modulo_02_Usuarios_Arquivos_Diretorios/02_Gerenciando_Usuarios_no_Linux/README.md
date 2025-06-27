# Gerenciando Usuários no Linux

* **Nível**: Intermediário
* **Duração**: 2 horas
* **Descrição**: Criação e gerenciamento de usuários e grupos, permissões e arquivos `/etc/passwd` e `/etc/group`.
* **Status**: Em andamento (50%)

---

## 👤 Criação de Usuários

### `adduser` / `useradd`

```bash
sudo adduser nome_usuario       # Cria usuário com prompt interativo
sudo useradd -m nome_usuario    # Cria usuário e diretório home manualmente
```

### Definir senha do usuário

```bash
sudo passwd nome_usuario
```

---

## 👥 Gerenciamento de Grupos

### Criar e gerenciar grupos

```bash
sudo groupadd nome_grupo        # Cria novo grupo
sudo usermod -aG nome_grupo nome_usuario  # Adiciona usuário a um grupo
sudo deluser nome_usuario nome_grupo      # Remove usuário do grupo (Debian)
sudo gpasswd -d nome_usuario nome_grupo   # Remove (Ubuntu)
```

### Visualizar grupos

```bash
groups nome_usuario
cat /etc/group
```

---

## 🔐 Permissões de Arquivos

### Comando `chmod`

```bash
chmod 755 arquivo.sh            # Define permissões (rwxr-xr-x)
chmod u+x script.sh             # Adiciona execução para o dono
```

### Comando `chown` e `chgrp`

```bash
chown usuario arquivo.txt       # Altera o dono
chgrp grupo arquivo.txt         # Altera o grupo
chown usuario:grupo arquivo.txt # Altera dono e grupo
```

---

## 📄 Arquivos de Configuração

### `/etc/passwd`

* Contém informações sobre os usuários do sistema
* Formato: `nome:x:UID:GID:comentário:home:shell`

### `/etc/shadow`

* Armazena senhas criptografadas

### `/etc/group`

* Lista todos os grupos e seus membros

---

## 📌 Dicas Importantes

* O UID 0 é reservado ao superusuário (root)
* Usuários normais geralmente têm UID à partir de 1000
* Nunca altere arquivos em `/etc` diretamente sem backup

---

## ✅ Em andamento...

Próximos passos:

* Criar relatório de grupos e usuários ativos
* Estudar permissões especiais: SUID, SGID, Sticky Bit
* Praticar cenários de permissões mistas entre grupos

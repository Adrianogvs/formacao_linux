# Servidores de Arquivos com Linux

* **Nível**: Intermediário
* **Duração**: 1 hora
* **Descrição**: Configuração de compartilhamentos de arquivos usando NFS e Samba.
* **Status**: Iniciar agora

---

## 📁 Visão Geral

Servidores de arquivos permitem o compartilhamento de diretórios e arquivos entre máquinas em uma rede local. No Linux, os dois principais protocolos utilizados são:

* **NFS (Network File System)**: ideal para ambientes Linux/Linux
* **Samba**: permite comunicação entre Linux e Windows

---

## 📦 Instalando os Serviços

### 🔸 NFS (No servidor e clientes Linux)

```bash
sudo apt install nfs-kernel-server   # Servidor
sudo apt install nfs-common          # Cliente
```

### 🔸 Samba (Para integração com Windows)

```bash
sudo apt install samba
```

---

## 🔧 Configuração NFS

### 1. Criar diretório a ser compartilhado:

```bash
sudo mkdir -p /srv/compartilhado
```

### 2. Editar `/etc/exports`:

```bash
/srv/compartilhado 192.168.1.0/24(rw,sync,no_subtree_check)
```

### 3. Aplicar configurações:

```bash
sudo exportfs -a
sudo systemctl restart nfs-kernel-server
```

### 4. No cliente:

```bash
sudo mount servidor:/srv/compartilhado /mnt
```

---

## 🔧 Configuração Samba

### 1. Criar diretório e definir permissões:

```bash
sudo mkdir -p /srv/samba/publico
sudo chmod -R 0775 /srv/samba/publico
```

### 2. Editar `/etc/samba/smb.conf` (exemplo):

```ini
[Publico]
   path = /srv/samba/publico
   read only = no
   browsable = yes
   guest ok = yes
```

### 3. Reiniciar serviço:

```bash
sudo systemctl restart smbd
```

### 4. Acessar via Windows:

```
\\ip_do_servidor\Publico
```

---

## 🔒 Dicas de Segurança

* Use firewalls para limitar acesso à rede local
* Crie usuários específicos para acessar os compartilhamentos
* Mantenha os serviços atualizados

---

## 🚀 Conclusão

Com NFS e Samba, é possível criar ambientes colaborativos de forma simples e funcional. O domínio dessas ferramentas é essencial para administrar redes e servidores Linux em ambientes corporativos.

---

📌 Próximo módulo: **Agendando Tarefas com Cron no Linux**

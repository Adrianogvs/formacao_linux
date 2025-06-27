# Acesso Remoto a Máquinas Linux

* **Nível**: Básico
* **Duração**: 1 hora
* **Descrição**: Introdução ao SSH e outras formas de acessar servidores Linux remotamente.
* **Status**: Concluído

---

## 🔐 O que é Acesso Remoto?

O acesso remoto permite que você utilize e administre um sistema Linux que está em outro computador (local ou na nuvem), através da rede.

---

## 📡 Protocolo SSH

### O que é SSH?

SSH (Secure Shell) é um protocolo de comunicação criptografado utilizado para acesso remoto seguro entre computadores.

### Instalação do servidor SSH

Em distribuições baseadas em Debian (como Ubuntu):

```bash
sudo apt update
sudo apt install openssh-server
```

### Verificando o status do SSH

```bash
sudo systemctl status ssh
```

### Acessando remotamente

Do seu computador local:

```bash
ssh usuario@ip_do_servidor
```

> Exemplo: `ssh adriano@192.168.1.100`

---

## 🔁 Comandos úteis com SSH

| Comando                        | Descrição                                  |
| ------------------------------ | ------------------------------------------ |
| `ssh usuario@ip`               | Acessa a máquina remota via terminal       |
| `scp arquivo usuario@ip:~/`    | Copia arquivos para a máquina remota       |
| `rsync -avz pasta usuario@ip:` | Sincroniza diretórios com a máquina remota |

---

## 🌐 Outras Formas de Acesso

### 🔸 VNC (Virtual Network Computing)

Permite controle remoto com interface gráfica. Requer a instalação de um servidor VNC.

### 🔸 RDP (Remote Desktop Protocol)

Mais comum no Windows, mas compatível com Linux através de ferramentas como xrdp.

---

## 🔐 Reforçando a Segurança

* Use chaves SSH ao invés de senha:

```bash
ssh-keygen
ssh-copy-id usuario@ip
```

* Altere a porta padrão (22) no arquivo `/etc/ssh/sshd_config`
* Utilize firewall e fail2ban para prevenir ataques

---

## 🧪 Testando o Acesso

* Teste o acesso com outro dispositivo na mesma rede
* Use comandos como `uptime`, `top`, `htop`, `ls`, para interagir remotamente

---

## 🚀 Conclusão

Com o SSH, é possível acessar e gerenciar servidores Linux remotamente de forma segura e eficiente. Aprender os comandos e boas práticas é essencial para administradores, desenvolvedores e entusiastas da área de tecnologia.

---

🔜 No próximo módulo: **Gerenciando Usuários e Permissões no Linux**

# 01 - Introdução ao Sistema Operacional Linux

## 📌 O que é o Linux?

Linux é um sistema operacional de código aberto, baseado em Unix, amplamente utilizado em servidores, desktops, dispositivos móveis e sistemas embarcados. Ele é conhecido por sua estabilidade, segurança, desempenho e por ser altamente personalizável.

## 🧱 Componentes Principais

- **Kernel**: núcleo do sistema, responsável por interagir com o hardware.
- **Shell**: interface que permite ao usuário se comunicar com o sistema.
- **Sistema de arquivos**: estrutura hierárquica que organiza arquivos e diretórios.
- **Distribuições (Distros)**: variações do Linux adaptadas para diferentes finalidades (ex: Ubuntu, Debian, CentOS, Fedora, Arch Linux).

## 🔍 Por que usar Linux?

- 💡 **Gratuito e de código aberto**
- 🔐 **Mais seguro** por padrão que muitos sistemas comerciais
- ⚙️ **Alta performance e estabilidade**
- 🧩 **Flexível e personalizável**
- 👨‍💻 **Preferido por desenvolvedores, sysadmins e engenheiros de dados**

## 📂 Principais Distribuições

| Distribuição | Público-Alvo          | Características                             |
|--------------|------------------------|---------------------------------------------|
| Ubuntu       | Iniciantes/Desenvolvedores | Interface amigável, ampla comunidade       |
| Debian       | Estável/Servidores     | Alta estabilidade, base para outras distros |
| CentOS       | Servidores             | Derivado do Red Hat, ideal para produção    |
| Fedora       | Desenvolvedores        | Tecnologias mais recentes                   |
| Arch Linux   | Avançados              | Altamente personalizável, instalação manual |

## 🖥️ Interface: CLI vs GUI

- **CLI (Command Line Interface)**: interação por comandos no terminal. Ex: `ls`, `cd`, `mkdir`
- **GUI (Graphical User Interface)**: interação por janelas, menus e botões

> 💡 Aprender a usar o terminal é essencial para dominar o Linux.

## 🛠️ Comandos Básicos do Terminal

| Comando      | Descrição                           |
|--------------|-------------------------------------|
| `pwd`        | Mostra o diretório atual            |
| `ls`         | Lista arquivos e diretórios         |
| `cd`         | Navega entre diretórios             |
| `mkdir`      | Cria um novo diretório              |
| `touch`      | Cria um novo arquivo vazio          |
| `rm`         | Remove arquivos ou diretórios       |
| `man`        | Exibe o manual de comandos          |

## 📖 Filosofia Unix/Linux

> “Faça uma coisa, e faça bem feita.”

- Programas simples que podem ser encadeados via **pipes (`|`)**
- Arquivos de texto como principal meio de configuração
- Tudo é tratado como um **arquivo**

---

# 📦 Gerenciamento de Pacotes Linux

- **Nível**: Intermediário  
- **Duração**: 1 hora  
- **Descrição**: Uso de gerenciadores de pacotes como `apt`, `yum`, `dnf`, `dpkg`, `rpm`.  
- **Status**: Iniciar agora  

### Principais Gerenciadores por Distribuição

| Gerenciador | Distribuição             | Exemplo de uso                                 |
|-------------|--------------------------|------------------------------------------------|
| `apt`       | Debian, Ubuntu           | `sudo apt install nome-do-pacote`              |
| `dpkg`      | Debian, Ubuntu           | `sudo dpkg -i pacote.deb`                      |
| `yum`       | CentOS, Red Hat          | `sudo yum install nome-do-pacote`              |
| `dnf`       | Fedora, CentOS 8+        | `sudo dnf install nome-do-pacote`              |
| `rpm`       | Red Hat, CentOS, Fedora | `sudo rpm -ivh pacote.rpm`                     |

> ⚠️ Atenção: sempre atualize o índice de pacotes antes de instalar algo:  
> `sudo apt update` ou `sudo dnf check-update`

---

## 🚀 Conclusão

O Linux é uma peça fundamental no mundo da tecnologia moderna, sendo usado desde supercomputadores até dispositivos móveis. Aprender Linux não é apenas útil, mas essencial para quem quer atuar nas áreas de desenvolvimento, infraestrutura, DevOps, ou engenharia de dados.

---

🔜 No próximo módulo: **Instalação de distribuições Linux em máquinas virtuais (VMs)**

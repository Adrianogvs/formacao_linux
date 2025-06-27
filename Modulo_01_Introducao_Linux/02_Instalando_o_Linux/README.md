# Instalando o Linux

- **Nível**: Básico  
- **Duração**: 1 hora  
- **Descrição**: Guia passo a passo para instalar distribuições Linux em máquinas físicas e virtuais.  
- **Status**: Concluído  

---

## 🧭 Visão Geral

A instalação do Linux pode ser feita de duas formas principais:

1. 💻 **Em uma máquina física** (dual boot ou formatação completa)
2. 🖥️ **Em uma máquina virtual (VM)** — ideal para testes e aprendizado

> 🔒 Recomendado: para iniciantes, usar máquina virtual evita riscos à instalação atual do sistema.

---

## 🛠️ Requisitos

### Para ambos os métodos:

- Imagem ISO da distribuição Linux (ex: Ubuntu, Debian)
- Acesso ao site oficial da distro
- Computador com pelo menos 4 GB de RAM e 20 GB de espaço livre

---

## 💡 Instalação em Máquina Virtual

### 1. Instalar um gerenciador de VMs:
- [VirtualBox](https://www.virtualbox.org/)
- [VMware Workstation Player](https://www.vmware.com/products/workstation-player.html)

### 2. Criar uma nova máquina virtual:
- Alocar memória (recomenda-se 2GB+)
- Criar disco virtual (20GB+)
- Conectar a imagem `.iso` da distro como mídia de boot

### 3. Iniciar e seguir os passos do instalador gráfico:
- Escolher idioma
- Criar usuário e senha
- Definir fuso horário
- Instalar atualizações e softwares adicionais (opcional)

---

## 💽 Instalação em Máquina Física (Dual Boot)

> ⚠️ **Atenção**: Sempre faça backup dos seus arquivos antes de particionar ou formatar o disco.

### 1. Criar um pendrive bootável:
Use ferramentas como:
- [Rufus (Windows)](https://rufus.ie/)
- [Etcher (Windows/Linux/macOS)](https://www.balena.io/etcher/)

### 2. Acessar o BIOS/UEFI:
- Alterar a ordem de boot para iniciar pelo USB

### 3. Iniciar o instalador do Linux:
- Escolher a opção “Instalar ao lado do Windows” (dual boot)
- Criar ou selecionar partições
- Concluir a instalação e reiniciar

---

## 🧪 Testando sem Instalar (Modo Live)

- A maioria das distros oferece um modo **Live**: você pode experimentar o sistema sem instalá-lo
- Útil para avaliar o desempenho e compatibilidade antes da instalação

---

## 📦 Distribuições Recomendadas

| Distro  | Tipo de Instalação | Link para Download                    |
|---------|--------------------|---------------------------------------|
| Ubuntu  | Gráfica, amigável  | https://ubuntu.com/download           |
| Linux Mint | Fácil, leve      | https://linuxmint.com/download.php   |
| Debian  | Estável, confiável | https://www.debian.org/distrib       |

---

## ✅ Pós-Instalação

- Atualize o sistema: `sudo apt update && sudo apt upgrade` (Debian/Ubuntu)
- Instale drivers adicionais, se necessário
- Explore o terminal e o gerenciador de pacotes da sua distribuição (`apt`, `dnf`, `pacman`, etc.)

---

## 🧩 Dicas Finais

- Comece explorando o ambiente gráfico e aos poucos utilize o terminal
- Busque por fóruns e comunidades como Ubuntu Forums, Stack Overflow e Reddit
- Experimente ferramentas como GParted, htop, neofetch

---

## 🚀 Conclusão

Instalar o Linux, seja em uma máquina virtual ou física, é um passo importante para quem deseja aprender mais sobre sistemas operacionais, infraestrutura e desenvolvimento. Com esse guia, você já pode iniciar sua jornada com segurança e autonomia.

---

🔜 No próximo módulo: **Navegando no Terminal Linux**

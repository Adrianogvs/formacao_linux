# Materiais Complementares - Gerenciamento de Pacotes e Discos

* **Nível**: Intermediário
* **Duração**: 1 hora
* **Status**: Iniciar agora

---

## 📚 Leituras Recomendadas

### 1. Gerenciadores de Pacotes Linux — TecMundo/LinuxTips

* Explicações sobre `apt`, `dpkg`, `yum`, `dnf`, com exemplos reais
* Link: [https://www.tecmundo.com.br/gerenciadores-de-pacotes-linux](https://www.tecmundo.com.br/gerenciadores-de-pacotes-linux)

### 2. Documentação Oficial

* `apt`: [https://wiki.debian.org/apt](https://wiki.debian.org/apt)
* `dnf`: [https://dnf.readthedocs.io](https://dnf.readthedocs.io)
* `rpm`: [https://rpm.org](https://rpm.org)

### 3. Entendendo Partições no Linux

* Explicação sobre `fdisk`, `lsblk`, `mount`, `/etc/fstab`
* Link: [https://www.digitalocean.com/community/tutorials/linux-partitions-explained](https://www.digitalocean.com/community/tutorials/linux-partitions-explained)

---

## 🎓 Vídeos e Cursos

* **Curso “Linux para Desenvolvedores” - Fundação Bradesco**
  [https://www.ev.org.br/cursos/linux-para-desenvolvedores](https://www.ev.org.br/cursos/linux-para-desenvolvedores)

* **Gerenciamento de Discos no Linux - Curso em Vídeo**
  YouTube: [https://www.youtube.com/@CursoemVideo](https://www.youtube.com/@CursoemVideo)

---

## 🧪 Comandos para Praticar

```bash
# Pacotes
sudo apt update && sudo apt upgrade
sudo apt search nome_do_pacote
sudo dpkg -l | grep nome

# Discos
df -h
lsblk
sudo fdisk -l
sudo mount /dev/sdX1 /mnt/teste
```

---

## 🚀 Conclusão

Esses materiais complementares vão reforçar seus conhecimentos sobre instalação de softwares, gerenciamento de dependências, e organização de dispositivos e partições no Linux.

---

📌 Próximo módulo: **Agendando Tarefas com Cron no Linux**

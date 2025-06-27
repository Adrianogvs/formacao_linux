# Materiais Complementares - Trabalhando com Usuários, Arquivos e Diretórios

* **Nível**: Intermediário
* **Duração**: 1 hora
* **Descrição**: Leituras e exemplos extras para aprofundamento.
* **Status**: Iniciar agora

---

## 📚 Leituras Recomendadas

### 1. Guia de Permissões no Linux (DigitalOcean)

* Entenda os modos de permissões e como manipulá-los com `chmod`, `chown`, `umask`
* Link: [https://www.digitalocean.com/community/tutorials/understanding-linux-file-permissions](https://www.digitalocean.com/community/tutorials/understanding-linux-file-permissions)

### 2. Administração de Usuários no Linux - Guia do Foca

* Link direto para a seção sobre gerenciamento de usuários
* Link: [https://www.guiafoca.org](https://www.guiafoca.org)

### 3. Capítulo 3 do Livro "The Linux Command Line" (William Shotts)

* Foca na navegação, permissões e estrutura de arquivos
* Link: [https://linuxcommand.org/tlcl.php](https://linuxcommand.org/tlcl.php)

---

## 🎓 Vídeos e Cursos Complementares

* **Curso de Permissões no Linux - Dio.me**
  Link: [https://www.dio.me/](https://www.dio.me/)

* **Entendendo a Estrutura de Diretórios no Linux - Curso em Vídeo**
  YouTube: [https://www.youtube.com/@CursoemVideo](https://www.youtube.com/@CursoemVideo)

---

## 📦 Exemplos Avançados de Prática

### Simule cenários de permissões:

```bash
mkdir /exemplo
sudo groupadd exemplo_grupo
sudo useradd exemplo_user -G exemplo_grupo -m
sudo chown root:exemplo_grupo /exemplo
sudo chmod 770 /exemplo
```

### Crie scripts de gestão:

* Crie scripts para listar grupos e usuários
* Automatize permissões em lotes
* Gere relatórios com `getent passwd`, `cut`, `awk`

---

## 🚀 Conclusão

Estes materiais vão ampliar seus conhecimentos sobre a administração de arquivos, diretórios e usuários no Linux, preparando você para situações reais do dia a dia em ambientes profissionais.

---

🔜 No próximo módulo: **Agendando Tarefas com Cron no Linux**
